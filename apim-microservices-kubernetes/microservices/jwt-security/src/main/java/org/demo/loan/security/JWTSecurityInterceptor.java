package org.demo.loan.security;

import org.apache.commons.codec.binary.Base64;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.wso2.msf4j.Interceptor;
import org.wso2.msf4j.Request;
import org.wso2.msf4j.Response;
import org.wso2.msf4j.ServiceMethodInfo;

import java.security.KeyStore;
import java.security.Signature;
import java.security.cert.Certificate;
import java.util.Map;

/**
 * JWT security interceptor which validate the signature of each request.
 */
public class JWTSecurityInterceptor implements Interceptor {

    private static final Logger logger = LoggerFactory.getLogger(JWTSecurityInterceptor.class);
    private static final String AUTHORIZATION_HTTP_HEADER = "X-JWT-Assertion";

    private static final Base64 base64Url = new Base64(true);
    private static final String TRUST_STORE = "/client-truststore.jks";
    private static final String TRUST_STORE_PASSWORD = "wso2carbon";
    private static final String ALIAS = "wso2carbon";
    private static final String SWAGGER_CONTEXT = "/swagger";
    private JSONObject jsonHeaderObject;
    private JSONObject jsonClaimObject;

    @Override
    public boolean preCall(Request request, Response responder, ServiceMethodInfo serviceMethodInfo)
            throws Exception {

        String requestURI = request.getUri();

        if (requestURI.startsWith(SWAGGER_CONTEXT)) {
            logger.debug(String.format("Skipping '%s' as it is an open resource.", requestURI));
            return true;
        }

        Map<String, String> headers = request.getHeaders();

        if (headers != null && headers.containsKey(AUTHORIZATION_HTTP_HEADER)) {
            String authHeader = headers.get(AUTHORIZATION_HTTP_HEADER);
            logger.info(AUTHORIZATION_HTTP_HEADER+ ": " + authHeader);

            if (isValid(authHeader)) {
                return true;
            } else {
                logger.error(String.format("JWT token is not valid: [resource] %s", requestURI));
                respondWith401(responder);
                return false;
            }
        } else {
            logger.error(String.format("Authorization header is missing in the request for '%s'.", requestURI));
            respondWith401(responder);
            return false;
        }

    }

    private void respondWith401(Response responder) {
        responder.setStatus(401);
        responder.send();
    }

    protected boolean isValid(String jwtToken) {
        String[] jwtTokenValues = jwtToken.split("\\.");
        String jwtAssertion = null;
        byte[] jwtSignature = null;

        if (jwtTokenValues.length > 0) {
            String value = new String(base64Url.decode(jwtTokenValues[0].getBytes()));
            JSONParser parser = new JSONParser();
            try {
                jsonHeaderObject = (JSONObject) parser.parse(value);
            } catch (Exception e) {
                logger.error("Could not parse JWT token", e);
            }
        }

        if (jwtTokenValues.length > 1) {
            String value = new String(base64Url.decode(jwtTokenValues[1].getBytes()));
            jwtAssertion = jwtTokenValues[0] + "." + jwtTokenValues[1];

            JSONParser parser = new JSONParser();
            try {
                jsonClaimObject = (JSONObject) parser.parse(value);
            } catch (Exception e) {
                logger.error("Could not parse JWT token", e);
            }
        }

        if (jwtTokenValues.length > 2) {
            jwtSignature = base64Url.decode(jwtTokenValues[2].getBytes());
        }

        KeyStore keyStore = null;
        String thumbPrint = new String(base64Url.decode(((String) jsonHeaderObject.get("x5t")).getBytes()));
        String signatureAlgo = (String) jsonHeaderObject.get("alg");

        if ("RS256".equals(signatureAlgo)) {
            signatureAlgo = "SHA256withRSA";
        } else if ("RS515".equals(signatureAlgo)) {
            signatureAlgo = "SHA512withRSA";
        } else if ("RS384".equals(signatureAlgo)) {
            signatureAlgo = "SHA384withRSA";
        } else {
            signatureAlgo = "SHA256withRSA";
        }

        if (jwtAssertion != null && jwtSignature != null) {

            try {
                keyStore = KeyStore.getInstance(KeyStore.getDefaultType());

                keyStore.load(getClass().getResourceAsStream(TRUST_STORE), TRUST_STORE_PASSWORD.toCharArray());
                //String alias = getAliasForX509CertThumb(thumbPrint.getBytes(), keyStore);
                Certificate certificate = keyStore.getCertificate(ALIAS);
                if(certificate == null) {
                    throw new RuntimeException("Certificate with alias " + ALIAS + " not found in keystore");
                }
                Signature signature = Signature.getInstance(signatureAlgo);
                signature.initVerify(certificate);
                signature.update(jwtAssertion.getBytes());
                return signature.verify(jwtSignature);
            } catch (Exception e) {
                logger.error("Could not verify JWT token", e);
            }
        } else {
            logger.error("Signature is null");
        }
        return false;

    }

    private String hexify(byte bytes[]) {
        char[] hexDigits =
                { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd',
                        'e', 'f' };

        StringBuilder buf = new StringBuilder(bytes.length * 2);

        for (byte aByte : bytes) {
            buf.append(hexDigits[(aByte & 0xf0) >> 4]);
            buf.append(hexDigits[aByte & 0x0f]);
        }
        return buf.toString();
    }

    @Override
    public void postCall(Request request, int status, ServiceMethodInfo serviceMethodInfo) {
    }
}