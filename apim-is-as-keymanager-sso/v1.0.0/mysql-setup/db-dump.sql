-- MySQL dump 10.13  Distrib 5.6.16, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: registry
-- ------------------------------------------------------
-- Server version	5.6.16-1~exp1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `registry`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `registry` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `registry`;

--
-- Table structure for table `REG_ASSOCIATION`
--

DROP TABLE IF EXISTS `REG_ASSOCIATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_ASSOCIATION` (
  `REG_ASSOCIATION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_SOURCEPATH` varchar(750) NOT NULL,
  `REG_TARGETPATH` varchar(750) NOT NULL,
  `REG_ASSOCIATION_TYPE` varchar(2000) NOT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_ASSOCIATION_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_ASSOCIATION`
--

LOCK TABLES `REG_ASSOCIATION` WRITE;
/*!40000 ALTER TABLE `REG_ASSOCIATION` DISABLE KEYS */;
INSERT INTO `REG_ASSOCIATION` VALUES (1,'/_system/governance/apimgt/applicationdata/provider/admin','/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/api','provides',-1234);
/*!40000 ALTER TABLE `REG_ASSOCIATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_CLUSTER_LOCK`
--

DROP TABLE IF EXISTS `REG_CLUSTER_LOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_CLUSTER_LOCK` (
  `REG_LOCK_NAME` varchar(20) NOT NULL DEFAULT '',
  `REG_LOCK_STATUS` varchar(20) DEFAULT NULL,
  `REG_LOCKED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REG_TENANT_ID` int(11) DEFAULT '0',
  PRIMARY KEY (`REG_LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_CLUSTER_LOCK`
--

LOCK TABLES `REG_CLUSTER_LOCK` WRITE;
/*!40000 ALTER TABLE `REG_CLUSTER_LOCK` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_CLUSTER_LOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_COMMENT`
--

DROP TABLE IF EXISTS `REG_COMMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_COMMENT` (
  `REG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_COMMENT_TEXT` varchar(500) NOT NULL,
  `REG_USER_ID` varchar(31) NOT NULL,
  `REG_COMMENTED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_COMMENT`
--

LOCK TABLES `REG_COMMENT` WRITE;
/*!40000 ALTER TABLE `REG_COMMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_COMMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_CONTENT`
--

DROP TABLE IF EXISTS `REG_CONTENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_CONTENT` (
  `REG_CONTENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_CONTENT_DATA` longblob,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_CONTENT_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_CONTENT`
--

LOCK TABLES `REG_CONTENT` WRITE;
/*!40000 ALTER TABLE `REG_CONTENT` DISABLE KEYS */;
INSERT INTO `REG_CONTENT` VALUES (1,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"UTOverTransport\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\">\n    <wsp:ExactlyOne>\n        <wsp:All>\n            <sp:TransportBinding xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <wsp:Policy>\n                    <sp:TransportToken>\n                        <wsp:Policy>\n                            <sp:HttpsToken RequireClientCertificate=\"false\"/>\n                        </wsp:Policy>\n                    </sp:TransportToken>\n                    <sp:AlgorithmSuite>\n                        <wsp:Policy>\n                            <sp:Basic256/>\n                        </wsp:Policy>\n                    </sp:AlgorithmSuite>\n                    <sp:Layout>\n                        <wsp:Policy>\n                            <sp:Lax/>\n                        </wsp:Policy>\n                    </sp:Layout>\n                    <sp:IncludeTimestamp/>\n                </wsp:Policy>\n            </sp:TransportBinding>\n            <sp:SignedSupportingTokens\n                    xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <wsp:Policy>\n                    <sp:UsernameToken\n                            sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\"/>\n                </wsp:Policy>\n            </sp:SignedSupportingTokens>\n        </wsp:All>\n    </wsp:ExactlyOne>\n</wsp:Policy>\n',-1234),(2,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SigOnly\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\">\n    <wsp:ExactlyOne>\n        <wsp:All>\n            <sp:AsymmetricBinding xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <wsp:Policy>\n                    <sp:InitiatorToken>\n                        <wsp:Policy>\n                            <sp:X509Token\n                                    sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n                                <wsp:Policy>\n 					<sp:RequireThumbprintReference/> \n					<sp:WssX509V3Token10/>\n                                    <!-- sp:WssX509V3Token10/ -->\n                                </wsp:Policy>\n                            </sp:X509Token>\n                        </wsp:Policy>\n                    </sp:InitiatorToken>\n                    <sp:RecipientToken>\n                        <wsp:Policy>\n                            <sp:X509Token\n                                    sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n                                <wsp:Policy>\n					<sp:RequireThumbprintReference/> \n					<sp:WssX509V3Token10/>\n                                    <!-- sp:WssX509V3Token10/ -->\n                                </wsp:Policy>\n                            </sp:X509Token>\n                        </wsp:Policy>\n                    </sp:RecipientToken>\n                    <sp:AlgorithmSuite>\n                        <wsp:Policy>\n                            <sp:Basic256/>\n                        </wsp:Policy>\n                    </sp:AlgorithmSuite>\n                    <sp:Layout>\n                        <wsp:Policy>\n                            <sp:Strict/>\n                        </wsp:Policy>\n                    </sp:Layout>\n                    <sp:IncludeTimestamp/>\n                    <sp:OnlySignEntireHeadersAndBody/>\n                </wsp:Policy>\n\n            </sp:AsymmetricBinding>\n            <sp:Wss10 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <wsp:Policy>\n                    <sp:MustSupportRefKeyIdentifier/>\n                    <sp:MustSupportRefIssuerSerial/>\n                </wsp:Policy>\n            </sp:Wss10>\n            <sp:SignedParts xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <sp:Body/>\n            </sp:SignedParts>\n        </wsp:All>\n    </wsp:ExactlyOne>\n</wsp:Policy>\n',-1234),(3,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SgnOnlyAnonymous\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n            xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n	<wsp:ExactlyOne>\n		<wsp:All>\n			<sp:SymmetricBinding>\n				<wsp:Policy>\n					<sp:ProtectionToken>\n						<wsp:Policy>\n							<sp:X509Token sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n								<wsp:Policy>\n									<sp:RequireThumbprintReference/>\n									<sp:WssX509V3Token10/>\n								</wsp:Policy>\n							</sp:X509Token>\n						</wsp:Policy>\n					</sp:ProtectionToken>\n					<sp:AlgorithmSuite>\n						<wsp:Policy>\n							<sp:Basic256/>\n						</wsp:Policy>\n					</sp:AlgorithmSuite>\n					<sp:Layout>\n						<wsp:Policy>\n							<sp:Lax/>\n						</wsp:Policy>\n					</sp:Layout>\n					<sp:IncludeTimestamp/>\n					<sp:OnlySignEntireHeadersAndBody/>\n				</wsp:Policy>\n			</sp:SymmetricBinding>\n			<sp:SignedParts>\n				<sp:Body/>\n			</sp:SignedParts>\n			<sp:Wss11>\n				<wsp:Policy>\n					<sp:MustSupportRefKeyIdentifier/>\n					<sp:MustSupportRefIssuerSerial/>\n					<sp:MustSupportRefThumbprint/>\n					<sp:MustSupportRefEncryptedKey/>\n					<sp:RequireSignatureConfirmation/>\n				</wsp:Policy>\n			</sp:Wss11>\n			<sp:Trust10>\n				<wsp:Policy>\n					<sp:MustSupportIssuedTokens/>\n					<sp:RequireClientEntropy/>\n					<sp:RequireServerEntropy/>\n				</wsp:Policy>\n			</sp:Trust10>\n		</wsp:All>\n	</wsp:ExactlyOne>\n</wsp:Policy>',-1234),(4,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"EncrOnlyAnonymous\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n            xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n	<wsp:ExactlyOne>\n		<wsp:All>\n			<sp:SymmetricBinding>\n				<wsp:Policy>\n					<sp:ProtectionToken>\n						<wsp:Policy>\n							<sp:X509Token sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n								<wsp:Policy>\n									<sp:RequireThumbprintReference/>\n									<sp:WssX509V3Token10/>\n								</wsp:Policy>\n							</sp:X509Token>\n						</wsp:Policy>\n					</sp:ProtectionToken>\n					<sp:AlgorithmSuite>\n						<wsp:Policy>\n							<sp:Basic256/>\n						</wsp:Policy>\n					</sp:AlgorithmSuite>\n					<sp:Layout>\n						<wsp:Policy>\n							<sp:Lax/>\n						</wsp:Policy>\n					</sp:Layout>\n					<sp:IncludeTimestamp/>\n					<sp:OnlySignEntireHeadersAndBody/>\n				</wsp:Policy>\n			</sp:SymmetricBinding>\n            <sp:EncryptedParts>\n                <sp:Body/>\n            </sp:EncryptedParts>\n			<sp:Wss11>\n				<wsp:Policy>\n					<sp:MustSupportRefKeyIdentifier/>\n					<sp:MustSupportRefIssuerSerial/>\n					<sp:MustSupportRefThumbprint/>\n					<sp:MustSupportRefEncryptedKey/>\n					<sp:RequireSignatureConfirmation/>\n				</wsp:Policy>\n			</sp:Wss11>\n			<sp:Trust10>\n				<wsp:Policy>\n					<sp:MustSupportIssuedTokens/>\n					<sp:RequireClientEntropy/>\n					<sp:RequireServerEntropy/>\n				</wsp:Policy>\n			</sp:Trust10>\n		</wsp:All>\n	</wsp:ExactlyOne>\n</wsp:Policy>',-1234),(5,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SigEncr\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\">\n    <wsp:ExactlyOne>\n        <wsp:All>\n            <sp:AsymmetricBinding xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <wsp:Policy>\n                    <sp:InitiatorToken>\n                        <wsp:Policy>\n                            <sp:X509Token\n                                    sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n                                <wsp:Policy>\n                                    <sp:RequireThumbprintReference/>\n                                </wsp:Policy>\n                            </sp:X509Token>\n                        </wsp:Policy>\n                    </sp:InitiatorToken>\n                    <sp:RecipientToken>\n                        <wsp:Policy>\n                            <sp:X509Token\n                                    sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n                                <wsp:Policy>\n                                    <sp:RequireThumbprintReference/> \n                                </wsp:Policy>\n                            </sp:X509Token>\n                        </wsp:Policy>\n                    </sp:RecipientToken>\n                    <sp:AlgorithmSuite>\n                        <wsp:Policy>\n                            <sp:Basic256/>\n                        </wsp:Policy>\n                    </sp:AlgorithmSuite>\n                    <sp:Layout>\n                        <wsp:Policy>\n                            <sp:Strict/>\n                        </wsp:Policy>\n                    </sp:Layout>\n                    <sp:IncludeTimestamp/>\n                    <sp:OnlySignEntireHeadersAndBody/>\n                </wsp:Policy>\n            </sp:AsymmetricBinding>\n            <sp:Wss11 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <wsp:Policy>\n                    <sp:MustSupportRefKeyIdentifier/>\n                    <sp:MustSupportRefIssuerSerial/>\n                    <sp:MustSupportRefThumbprint/>\n                    <sp:MustSupportRefEncryptedKey/>\n                    <sp:RequireSignatureConfirmation/>\n                </wsp:Policy>\n            </sp:Wss11>\n            <sp:Wss10 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <wsp:Policy>\n                    <sp:MustSupportRefKeyIdentifier/>\n                    <sp:MustSupportRefIssuerSerial/>\n                </wsp:Policy>\n            </sp:Wss10>\n            <sp:SignedParts xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <sp:Body/>\n            </sp:SignedParts>\n            <sp:EncryptedParts xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <sp:Body/>\n            </sp:EncryptedParts>\n        </wsp:All>\n    </wsp:ExactlyOne>\n</wsp:Policy>\n\n',-1234),(6,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SgnEncrAnonymous\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n            xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n	<wsp:ExactlyOne>\n		<wsp:All>\n			<sp:SymmetricBinding>\n				<wsp:Policy>\n					<sp:ProtectionToken>\n						<wsp:Policy>\n							<sp:X509Token sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n								<wsp:Policy>\n									<sp:RequireThumbprintReference/>\n									<sp:WssX509V3Token10/>\n								</wsp:Policy>\n							</sp:X509Token>\n						</wsp:Policy>\n					</sp:ProtectionToken>\n					<sp:AlgorithmSuite>\n						<wsp:Policy>\n							<sp:Basic256/>\n						</wsp:Policy>\n					</sp:AlgorithmSuite>\n					<sp:Layout>\n						<wsp:Policy>\n							<sp:Lax/>\n						</wsp:Policy>\n					</sp:Layout>\n					<sp:IncludeTimestamp/>\n					<sp:OnlySignEntireHeadersAndBody/>\n				</wsp:Policy>\n			</sp:SymmetricBinding>\n			<sp:SignedParts>\n				<sp:Body/>\n			</sp:SignedParts>\n            <sp:EncryptedParts>\n                <sp:Body/>\n            </sp:EncryptedParts>\n			<sp:Wss11>\n				<wsp:Policy>\n					<sp:MustSupportRefKeyIdentifier/>\n					<sp:MustSupportRefIssuerSerial/>\n					<sp:MustSupportRefThumbprint/>\n					<sp:MustSupportRefEncryptedKey/>\n					<sp:RequireSignatureConfirmation/>\n				</wsp:Policy>\n			</sp:Wss11>\n			<sp:Trust10>\n				<wsp:Policy>\n					<sp:MustSupportIssuedTokens/>\n					<sp:RequireClientEntropy/>\n					<sp:RequireServerEntropy/>\n				</wsp:Policy>\n			</sp:Trust10>\n		</wsp:All>\n	</wsp:ExactlyOne>\n</wsp:Policy>',-1234),(7,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"EncrOnlyUsername\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n            xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n	<wsp:ExactlyOne>\n		<wsp:All>\n			<sp:SymmetricBinding>\n				<wsp:Policy>\n					<sp:ProtectionToken>\n						<wsp:Policy>\n							<sp:X509Token sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n								<wsp:Policy>\n									<sp:RequireThumbprintReference/>\n									<sp:WssX509V3Token10/>\n								</wsp:Policy>\n							</sp:X509Token>\n						</wsp:Policy>\n					</sp:ProtectionToken>\n					<sp:AlgorithmSuite>\n						<wsp:Policy>\n							<sp:Basic256/>\n						</wsp:Policy>\n					</sp:AlgorithmSuite>\n					<sp:Layout>\n						<wsp:Policy>\n							<sp:Lax/>\n						</wsp:Policy>\n					</sp:Layout>\n					<sp:IncludeTimestamp/>\n					<sp:OnlySignEntireHeadersAndBody/>\n				</wsp:Policy>\n			</sp:SymmetricBinding>\n			<sp:EncryptedParts>\n                <sp:Body/>\n            </sp:EncryptedParts>\n			<sp:SignedSupportingTokens>\n				<wsp:Policy>\n					<sp:UsernameToken sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n						<wsp:Policy>\n							<sp:WssUsernameToken10/>\n						</wsp:Policy>\n					</sp:UsernameToken>\n				</wsp:Policy>\n			</sp:SignedSupportingTokens>\n			<sp:Wss11>\n                		<wsp:Policy>\n                    			<sp:MustSupportRefKeyIdentifier/>\n                    			<sp:MustSupportRefIssuerSerial/>\n                    			<sp:MustSupportRefThumbprint/>\n                    			<sp:MustSupportRefEncryptedKey/>\n                    			<sp:RequireSignatureConfirmation/>\n                		</wsp:Policy>\n            		</sp:Wss11>\n			<sp:Trust10>\n				<wsp:Policy>\n					<sp:MustSupportIssuedTokens/>\n					<sp:RequireClientEntropy/>\n					<sp:RequireServerEntropy/>\n				</wsp:Policy>\n			</sp:Trust10>\n		</wsp:All>\n	</wsp:ExactlyOne>\n</wsp:Policy>\n',-1234),(8,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SgnEncrUsername\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n            xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n	<wsp:ExactlyOne>\n		<wsp:All>\n			<sp:SymmetricBinding>\n				<wsp:Policy>\n					<sp:ProtectionToken>\n						<wsp:Policy>\n							<sp:X509Token sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n								<wsp:Policy>\n									<sp:RequireThumbprintReference/>\n									<sp:WssX509V3Token10/>\n								</wsp:Policy>\n							</sp:X509Token>\n						</wsp:Policy>\n					</sp:ProtectionToken>\n					<sp:AlgorithmSuite>\n						<wsp:Policy>\n							<sp:Basic256/>\n						</wsp:Policy>\n					</sp:AlgorithmSuite>\n					<sp:Layout>\n						<wsp:Policy>\n							<sp:Lax/>\n						</wsp:Policy>\n					</sp:Layout>\n					<sp:IncludeTimestamp/>\n					<sp:OnlySignEntireHeadersAndBody/>\n				</wsp:Policy>\n			</sp:SymmetricBinding>\n			<sp:SignedParts>\n				<sp:Body/>\n			</sp:SignedParts>\n			<sp:EncryptedParts>\n                <sp:Body/>\n            </sp:EncryptedParts>\n			<sp:SignedSupportingTokens>\n				<wsp:Policy>\n					<sp:UsernameToken sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n						<wsp:Policy>\n							<sp:WssUsernameToken10/>\n						</wsp:Policy>\n					</sp:UsernameToken>\n				</wsp:Policy>\n			</sp:SignedSupportingTokens>\n			<sp:Wss11>\n				<wsp:Policy>\n					<sp:MustSupportRefKeyIdentifier/>\n					<sp:MustSupportRefIssuerSerial/>\n					<sp:MustSupportRefThumbprint/>\n					<sp:MustSupportRefEncryptedKey/>\n					<sp:RequireSignatureConfirmation/>\n				</wsp:Policy>\n			</sp:Wss11>\n			<sp:Trust10>\n				<wsp:Policy>\n					<sp:MustSupportIssuedTokens/>\n					<sp:RequireClientEntropy/>\n					<sp:RequireServerEntropy/>\n				</wsp:Policy>\n			</sp:Trust10>\n		</wsp:All>\n	</wsp:ExactlyOne>\n</wsp:Policy>',-1234),(9,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SecConSignOnly\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n            xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n	<wsp:ExactlyOne>\n		<wsp:All>\n			<sp:SymmetricBinding>\n				<wsp:Policy>\n					<sp:ProtectionToken>\n						<wsp:Policy>\n							<sp:SecureConversationToken sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n								<wsp:Policy>\n									<sp:BootstrapPolicy>\n											<wsp:Policy>\n									            <sp:AsymmetricBinding xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n									                <wsp:Policy>\n									                    <sp:InitiatorToken>\n									                        <wsp:Policy>\n									                            <sp:X509Token sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n									                                <wsp:Policy>\n									                                    <sp:RequireThumbprintReference/>\n									                                    <sp:WssX509V3Token10/>\n									                                </wsp:Policy>\n									                            </sp:X509Token>\n									                        </wsp:Policy>\n									                    </sp:InitiatorToken>\n									                    <sp:RecipientToken>\n									                        <wsp:Policy>\n									                            <sp:X509Token\n									                                    sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n									                                <wsp:Policy>\n									                                    <sp:RequireThumbprintReference/>\n									                                    <sp:WssX509V3Token10/>\n									                                </wsp:Policy>\n									                            </sp:X509Token>\n									                        </wsp:Policy>\n									                    </sp:RecipientToken>\n									                    <sp:AlgorithmSuite>\n									                        <wsp:Policy>\n									                            <sp:Basic256/>\n									                        </wsp:Policy>\n									                    </sp:AlgorithmSuite>\n									                    <sp:Layout>\n									                        <wsp:Policy>\n									                            <sp:Strict/>\n									                        </wsp:Policy>\n									                    </sp:Layout>\n									                    <sp:IncludeTimestamp/>\n									                    <sp:OnlySignEntireHeadersAndBody/>\n									                </wsp:Policy>\n									            </sp:AsymmetricBinding>\n									            <sp:Wss10 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n									                <wsp:Policy>\n									                    <sp:MustSupportRefKeyIdentifier/>\n									                    <sp:MustSupportRefIssuerSerial/>\n									                </wsp:Policy>\n									            </sp:Wss10>\n									            <sp:SignedParts xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n									                <sp:Body/>\n									            </sp:SignedParts>\n									            <sp:EncryptedParts xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n									                <sp:Body/>\n									            </sp:EncryptedParts>\n											</wsp:Policy>\n									</sp:BootstrapPolicy>\n								</wsp:Policy>\n							</sp:SecureConversationToken>\n						</wsp:Policy>\n					</sp:ProtectionToken>\n					<sp:AlgorithmSuite>\n						<wsp:Policy>\n							<sp:Basic256/>\n						</wsp:Policy>\n					</sp:AlgorithmSuite>\n					<sp:Layout>\n						<wsp:Policy>\n							<sp:Lax/>\n						</wsp:Policy>\n					</sp:Layout>\n					<sp:IncludeTimestamp/>\n					<sp:OnlySignEntireHeadersAndBody/>\n				</wsp:Policy>\n			</sp:SymmetricBinding>\n			<sp:SignedParts>\n				<sp:Body/>\n			</sp:SignedParts>\n			<sp:Wss11>\n				<wsp:Policy>\n					<sp:MustSupportRefKeyIdentifier/>\n					<sp:MustSupportRefIssuerSerial/>\n					<sp:MustSupportRefThumbprint/>\n					<sp:MustSupportRefEncryptedKey/>\n				</wsp:Policy>\n			</sp:Wss11>\n			<sp:Trust10>\n				<wsp:Policy>\n					<sp:MustSupportIssuedTokens/>\n					<sp:RequireClientEntropy/>\n					<sp:RequireServerEntropy/>\n				</wsp:Policy>\n			</sp:Trust10>\n		</wsp:All>\n	</wsp:ExactlyOne>\n</wsp:Policy>\n\n',-1234),(10,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SecConEncrOnly\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n            xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n	<wsp:ExactlyOne>\n		<wsp:All>\n			<sp:SymmetricBinding>\n				<wsp:Policy>\n					<sp:ProtectionToken>\n						<wsp:Policy>\n							<sp:SecureConversationToken sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n								<wsp:Policy>\n									<sp:BootstrapPolicy>\n											<wsp:Policy>\n									            <sp:AsymmetricBinding xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n									                <wsp:Policy>\n									                    <sp:InitiatorToken>\n									                        <wsp:Policy>\n									                            <sp:X509Token sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n									                                <wsp:Policy>\n									                                    <sp:RequireThumbprintReference/>\n									                                    <sp:WssX509V3Token10/>\n									                                </wsp:Policy>\n									                            </sp:X509Token>\n									                        </wsp:Policy>\n									                    </sp:InitiatorToken>\n									                    <sp:RecipientToken>\n									                        <wsp:Policy>\n									                            <sp:X509Token\n									                                    sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n									                                <wsp:Policy>\n									                                    <sp:RequireThumbprintReference/>\n									                                    <sp:WssX509V3Token10/>\n									                                </wsp:Policy>\n									                            </sp:X509Token>\n									                        </wsp:Policy>\n									                    </sp:RecipientToken>\n									                    <sp:AlgorithmSuite>\n									                        <wsp:Policy>\n									                            <sp:Basic256/>\n									                        </wsp:Policy>\n									                    </sp:AlgorithmSuite>\n									                    <sp:Layout>\n									                        <wsp:Policy>\n									                            <sp:Strict/>\n									                        </wsp:Policy>\n									                    </sp:Layout>\n									                    <sp:IncludeTimestamp/>\n									                    <sp:OnlySignEntireHeadersAndBody/>\n									                </wsp:Policy>\n									            </sp:AsymmetricBinding>\n									            <sp:Wss10 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n									                <wsp:Policy>\n									                    <sp:MustSupportRefKeyIdentifier/>\n									                    <sp:MustSupportRefIssuerSerial/>\n									                </wsp:Policy>\n									            </sp:Wss10>\n									            <sp:SignedParts xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n									                <sp:Body/>\n									            </sp:SignedParts>\n									            <sp:EncryptedParts xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n									                <sp:Body/>\n									            </sp:EncryptedParts>\n											</wsp:Policy>\n									</sp:BootstrapPolicy>\n								</wsp:Policy>\n							</sp:SecureConversationToken>\n						</wsp:Policy>\n					</sp:ProtectionToken>\n					<sp:AlgorithmSuite>\n						<wsp:Policy>\n							<sp:Basic256/>\n						</wsp:Policy>\n					</sp:AlgorithmSuite>\n					<sp:Layout>\n						<wsp:Policy>\n							<sp:Lax/>\n						</wsp:Policy>\n					</sp:Layout>\n					<sp:IncludeTimestamp/>\n					<sp:OnlySignEntireHeadersAndBody/>\n				</wsp:Policy>\n			</sp:SymmetricBinding>\n			<sp:EncryptedParts>\n                <sp:Body/>\n            </sp:EncryptedParts>\n			<sp:Wss11>\n				<wsp:Policy>\n					<sp:MustSupportRefKeyIdentifier/>\n					<sp:MustSupportRefIssuerSerial/>\n					<sp:MustSupportRefThumbprint/>\n					<sp:MustSupportRefEncryptedKey/>\n				</wsp:Policy>\n			</sp:Wss11>\n			<sp:Trust10>\n				<wsp:Policy>\n					<sp:MustSupportIssuedTokens/>\n					<sp:RequireClientEntropy/>\n					<sp:RequireServerEntropy/>\n				</wsp:Policy>\n			</sp:Trust10>\n		</wsp:All>\n	</wsp:ExactlyOne>\n</wsp:Policy>\n\n',-1234),(11,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n<wsp:Policy wsu:Id=\"SecConSgnEncr\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n            xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n	<wsp:ExactlyOne>\n		<wsp:All>\n			<sp:SymmetricBinding>\n				<wsp:Policy>\n					<sp:ProtectionToken>\n						<wsp:Policy>\n							<sp:SecureConversationToken sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n								<wsp:Policy>\n									<sp:BootstrapPolicy>\n											<wsp:Policy>\n									            <sp:AsymmetricBinding xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n									                <wsp:Policy>\n									                    <sp:InitiatorToken>\n									                        <wsp:Policy>\n									                            <sp:X509Token sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n									                                <wsp:Policy>\n									                                    <sp:RequireThumbprintReference/>									                       \n									                                </wsp:Policy>\n									                            </sp:X509Token>\n									                        </wsp:Policy>\n									                    </sp:InitiatorToken>\n									                    <sp:RecipientToken>\n									                        <wsp:Policy>\n									                            <sp:X509Token\n									                                    sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n									                                <wsp:Policy>\n									                                    <sp:RequireThumbprintReference/>									                                  \n									                                </wsp:Policy>\n									                            </sp:X509Token>\n									                        </wsp:Policy>\n									                    </sp:RecipientToken>\n									                    <sp:AlgorithmSuite>\n									                        <wsp:Policy>\n									                            <sp:Basic256/>\n									                        </wsp:Policy>\n									                    </sp:AlgorithmSuite>\n									                    <sp:Layout>\n									                        <wsp:Policy>\n									                            <sp:Strict/>\n									                        </wsp:Policy>\n									                    </sp:Layout>\n									                    <sp:IncludeTimestamp/>\n									                    <sp:OnlySignEntireHeadersAndBody/>\n									                </wsp:Policy>\n									            </sp:AsymmetricBinding>\n									            <sp:Wss10 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n									                <wsp:Policy>\n									                    <sp:MustSupportRefKeyIdentifier/>\n									                    <sp:MustSupportRefIssuerSerial/>\n									                </wsp:Policy>\n									            </sp:Wss10>\n									            <sp:SignedParts xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n									                <sp:Body/>\n									            </sp:SignedParts>\n									            <sp:EncryptedParts xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n									                <sp:Body/>\n									            </sp:EncryptedParts>\n											</wsp:Policy>\n									</sp:BootstrapPolicy>\n								</wsp:Policy>\n							</sp:SecureConversationToken>\n						</wsp:Policy>\n					</sp:ProtectionToken>\n					<sp:AlgorithmSuite>\n						<wsp:Policy>\n							<sp:Basic256/>\n						</wsp:Policy>\n					</sp:AlgorithmSuite>\n					<sp:Layout>\n						<wsp:Policy>\n							<sp:Lax/>\n						</wsp:Policy>\n					</sp:Layout>\n					<sp:IncludeTimestamp/>\n					<sp:OnlySignEntireHeadersAndBody/>\n				</wsp:Policy>\n			</sp:SymmetricBinding>\n			<sp:SignedParts>\n				<sp:Body/>\n			</sp:SignedParts>\n			<sp:EncryptedParts>\n                <sp:Body/>\n            </sp:EncryptedParts>\n			<sp:Wss11>\n				<wsp:Policy>\n					<sp:MustSupportRefKeyIdentifier/>\n					<sp:MustSupportRefIssuerSerial/>\n					<sp:MustSupportRefThumbprint/>\n					<sp:MustSupportRefEncryptedKey/>\n				</wsp:Policy>\n			</sp:Wss11>\n			<sp:Trust10>\n				<wsp:Policy>\n					<sp:MustSupportIssuedTokens/>\n					<sp:RequireClientEntropy/>\n					<sp:RequireServerEntropy/>\n				</wsp:Policy>\n			</sp:Trust10>\n		</wsp:All>\n	</wsp:ExactlyOne>\n</wsp:Policy>\n\n',-1234),(12,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SecConSignOnlyAnonymous\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n            xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n	<wsp:ExactlyOne>\n		<wsp:All>\n			<sp:SymmetricBinding>\n				<wsp:Policy>\n					<sp:ProtectionToken>\n						<wsp:Policy>\n							<sp:SecureConversationToken sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n								<wsp:Policy>\n									<sp:BootstrapPolicy>\n										<wsp:Policy>\n											<sp:SymmetricBinding>\n												<wsp:Policy>\n													<sp:ProtectionToken>\n														<wsp:Policy>\n															<sp:X509Token sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n																<wsp:Policy>\n																	<sp:RequireThumbprintReference/>\n																	<sp:WssX509V3Token10/>\n																</wsp:Policy>\n															</sp:X509Token>\n														</wsp:Policy>\n													</sp:ProtectionToken>\n													<sp:AlgorithmSuite>\n														<wsp:Policy>\n															<sp:Basic256/>\n														</wsp:Policy>\n													</sp:AlgorithmSuite>\n													<sp:Layout>\n														<wsp:Policy>\n															<sp:Lax/>\n														</wsp:Policy>\n													</sp:Layout>\n													<sp:IncludeTimestamp/>\n													<sp:OnlySignEntireHeadersAndBody/>\n												</wsp:Policy>\n											</sp:SymmetricBinding>\n											<sp:SignedParts>\n												<sp:Body/>\n											</sp:SignedParts>\n								            <sp:EncryptedParts>\n								                <sp:Body/>\n								            </sp:EncryptedParts>\n											<sp:Wss11>\n												<wsp:Policy>\n													<sp:MustSupportRefKeyIdentifier/>\n													<sp:MustSupportRefIssuerSerial/>\n													<sp:MustSupportRefThumbprint/>\n													<sp:MustSupportRefEncryptedKey/>\n													<sp:RequireSignatureConfirmation/>\n												</wsp:Policy>\n											</sp:Wss11>\n											<sp:Trust10>\n												<wsp:Policy>\n													<sp:MustSupportIssuedTokens/>\n													<sp:RequireClientEntropy/>\n													<sp:RequireServerEntropy/>\n												</wsp:Policy>\n											</sp:Trust10>\n										</wsp:Policy>\n									</sp:BootstrapPolicy>\n								</wsp:Policy>\n							</sp:SecureConversationToken>\n						</wsp:Policy>\n					</sp:ProtectionToken>\n					<sp:AlgorithmSuite>\n						<wsp:Policy>\n							<sp:Basic256/>\n						</wsp:Policy>\n					</sp:AlgorithmSuite>\n					<sp:Layout>\n						<wsp:Policy>\n							<sp:Lax/>\n						</wsp:Policy>\n					</sp:Layout>\n					<sp:IncludeTimestamp/>\n					<sp:OnlySignEntireHeadersAndBody/>\n				</wsp:Policy>\n			</sp:SymmetricBinding>\n			<sp:SignedParts>\n				<sp:Body/>\n			</sp:SignedParts>\n			<sp:Wss11>\n				<wsp:Policy>\n					<sp:MustSupportRefKeyIdentifier/>\n					<sp:MustSupportRefIssuerSerial/>\n					<sp:MustSupportRefThumbprint/>\n					<sp:MustSupportRefEncryptedKey/>\n				</wsp:Policy>\n			</sp:Wss11>\n			<sp:Trust10>\n				<wsp:Policy>\n					<sp:MustSupportIssuedTokens/>\n					<sp:RequireClientEntropy/>\n					<sp:RequireServerEntropy/>\n				</wsp:Policy>\n			</sp:Trust10>\n		</wsp:All>\n	</wsp:ExactlyOne>\n</wsp:Policy>\n\n',-1234),(13,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SecConEncrOnlyAnonymous\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n            xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n	<wsp:ExactlyOne>\n		<wsp:All>\n			<sp:SymmetricBinding>\n				<wsp:Policy>\n					<sp:ProtectionToken>\n						<wsp:Policy>\n							<sp:SecureConversationToken sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n								<wsp:Policy>\n									<sp:BootstrapPolicy>\n										<wsp:Policy>\n											<sp:SymmetricBinding>\n												<wsp:Policy>\n													<sp:ProtectionToken>\n														<wsp:Policy>\n															<sp:X509Token sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n																<wsp:Policy>\n																	<sp:RequireThumbprintReference/>\n																	<sp:WssX509V3Token10/>\n																</wsp:Policy>\n															</sp:X509Token>\n														</wsp:Policy>\n													</sp:ProtectionToken>\n													<sp:AlgorithmSuite>\n														<wsp:Policy>\n															<sp:Basic256/>\n														</wsp:Policy>\n													</sp:AlgorithmSuite>\n													<sp:Layout>\n														<wsp:Policy>\n															<sp:Lax/>\n														</wsp:Policy>\n													</sp:Layout>\n													<sp:IncludeTimestamp/>\n													<sp:OnlySignEntireHeadersAndBody/>\n												</wsp:Policy>\n											</sp:SymmetricBinding>\n											<sp:SignedParts>\n												<sp:Body/>\n											</sp:SignedParts>\n								            <sp:EncryptedParts>\n								                <sp:Body/>\n								            </sp:EncryptedParts>\n											<sp:Wss11>\n												<wsp:Policy>\n													<sp:MustSupportRefKeyIdentifier/>\n													<sp:MustSupportRefIssuerSerial/>\n													<sp:MustSupportRefThumbprint/>\n													<sp:MustSupportRefEncryptedKey/>\n													<sp:RequireSignatureConfirmation/>\n												</wsp:Policy>\n											</sp:Wss11>\n											<sp:Trust10>\n												<wsp:Policy>\n													<sp:MustSupportIssuedTokens/>\n													<sp:RequireClientEntropy/>\n													<sp:RequireServerEntropy/>\n												</wsp:Policy>\n											</sp:Trust10>\n										</wsp:Policy>\n									</sp:BootstrapPolicy>\n								</wsp:Policy>\n							</sp:SecureConversationToken>\n						</wsp:Policy>\n					</sp:ProtectionToken>\n					<sp:AlgorithmSuite>\n						<wsp:Policy>\n							<sp:Basic256/>\n						</wsp:Policy>\n					</sp:AlgorithmSuite>\n					<sp:Layout>\n						<wsp:Policy>\n							<sp:Lax/>\n						</wsp:Policy>\n					</sp:Layout>\n					<sp:IncludeTimestamp/>\n					<sp:OnlySignEntireHeadersAndBody/>\n				</wsp:Policy>\n			</sp:SymmetricBinding>\n			<sp:SignedParts>\n				<sp:Body/>\n			</sp:SignedParts>\n			<sp:EncryptedParts>\n                <sp:Body/>\n            </sp:EncryptedParts>\n			<sp:Wss11>\n				<wsp:Policy>\n					<sp:MustSupportRefKeyIdentifier/>\n					<sp:MustSupportRefIssuerSerial/>\n					<sp:MustSupportRefThumbprint/>\n					<sp:MustSupportRefEncryptedKey/>\n				</wsp:Policy>\n			</sp:Wss11>\n			<sp:Trust10>\n				<wsp:Policy>\n					<sp:MustSupportIssuedTokens/>\n					<sp:RequireClientEntropy/>\n					<sp:RequireServerEntropy/>\n				</wsp:Policy>\n			</sp:Trust10>\n		</wsp:All>\n	</wsp:ExactlyOne>\n</wsp:Policy>\n\n',-1234),(14,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SecConEncrUsername\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n            xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n	<wsp:ExactlyOne>\n		<wsp:All>\n			<sp:SymmetricBinding>\n				<wsp:Policy>\n					<sp:ProtectionToken>\n						<wsp:Policy>\n							<sp:SecureConversationToken sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n								<wsp:Policy>\n									<sp:BootstrapPolicy>\n											<wsp:Policy>\n												<sp:SymmetricBinding>\n													<wsp:Policy>\n														<sp:ProtectionToken>\n															<wsp:Policy>\n																<sp:X509Token sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n																	<wsp:Policy>\n																		<sp:RequireThumbprintReference/>\n																		<sp:WssX509V3Token10/>\n																	</wsp:Policy>\n																</sp:X509Token>\n															</wsp:Policy>\n														</sp:ProtectionToken>\n														<sp:AlgorithmSuite>\n															<wsp:Policy>\n																<sp:Basic256/>\n															</wsp:Policy>\n														</sp:AlgorithmSuite>\n														<sp:Layout>\n															<wsp:Policy>\n																<sp:Lax/>\n															</wsp:Policy>\n														</sp:Layout>\n														<sp:IncludeTimestamp/>\n														<sp:OnlySignEntireHeadersAndBody/>\n													</wsp:Policy>\n												</sp:SymmetricBinding>\n												<sp:SignedParts>\n													<sp:Body/>\n												</sp:SignedParts>\n												<sp:EncryptedParts>\n									                <sp:Body/>\n									            </sp:EncryptedParts>\n												<sp:SignedSupportingTokens>\n													<wsp:Policy>\n														<sp:UsernameToken sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n															<wsp:Policy>\n																<sp:WssUsernameToken10/>\n															</wsp:Policy>\n														</sp:UsernameToken>\n													</wsp:Policy>\n												</sp:SignedSupportingTokens>\n												<sp:Wss11>\n													<wsp:Policy>\n														<sp:MustSupportRefKeyIdentifier/>\n														<sp:MustSupportRefIssuerSerial/>\n														<sp:MustSupportRefThumbprint/>\n														<sp:MustSupportRefEncryptedKey/>\n														<sp:RequireSignatureConfirmation/>\n													</wsp:Policy>\n												</sp:Wss11>\n												<sp:Trust10>\n													<wsp:Policy>\n														<sp:MustSupportIssuedTokens/>\n														<sp:RequireClientEntropy/>\n														<sp:RequireServerEntropy/>\n													</wsp:Policy>\n												</sp:Trust10>\n											</wsp:Policy>\n									</sp:BootstrapPolicy>\n								</wsp:Policy>\n							</sp:SecureConversationToken>\n						</wsp:Policy>\n					</sp:ProtectionToken>\n					<sp:AlgorithmSuite>\n						<wsp:Policy>\n							<sp:Basic256/>\n						</wsp:Policy>\n					</sp:AlgorithmSuite>\n					<sp:Layout>\n						<wsp:Policy>\n							<sp:Lax/>\n						</wsp:Policy>\n					</sp:Layout>\n					<sp:IncludeTimestamp/>\n					<sp:OnlySignEntireHeadersAndBody/>\n				</wsp:Policy>\n			</sp:SymmetricBinding>\n			<sp:EncryptedParts>\n                <sp:Body/>\n            </sp:EncryptedParts>\n			<sp:Wss11>\n				<wsp:Policy>\n					<sp:MustSupportRefKeyIdentifier/>\n					<sp:MustSupportRefIssuerSerial/>\n					<sp:MustSupportRefThumbprint/>\n					<sp:MustSupportRefEncryptedKey/>\n				</wsp:Policy>\n			</sp:Wss11>\n			<sp:Trust10>\n				<wsp:Policy>\n					<sp:MustSupportIssuedTokens/>\n					<sp:RequireClientEntropy/>\n					<sp:RequireServerEntropy/>\n				</wsp:Policy>\n			</sp:Trust10>\n		</wsp:All>\n	</wsp:ExactlyOne>\n</wsp:Policy>\n\n',-1234),(15,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SecConSgnEncrUsername\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n            xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n	<wsp:ExactlyOne>\n		<wsp:All>\n			<sp:SymmetricBinding>\n				<wsp:Policy>\n					<sp:ProtectionToken>\n						<wsp:Policy>\n							<sp:SecureConversationToken sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n								<wsp:Policy>\n									<sp:BootstrapPolicy>\n											<wsp:Policy>\n												<sp:SymmetricBinding>\n													<wsp:Policy>\n														<sp:ProtectionToken>\n															<wsp:Policy>\n																<sp:X509Token sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n																	<wsp:Policy>\n																		<sp:RequireThumbprintReference/>\n																		<sp:WssX509V3Token10/>\n																	</wsp:Policy>\n																</sp:X509Token>\n															</wsp:Policy>\n														</sp:ProtectionToken>\n														<sp:AlgorithmSuite>\n															<wsp:Policy>\n																<sp:Basic256/>\n															</wsp:Policy>\n														</sp:AlgorithmSuite>\n														<sp:Layout>\n															<wsp:Policy>\n																<sp:Lax/>\n															</wsp:Policy>\n														</sp:Layout>\n														<sp:IncludeTimestamp/>\n														<sp:OnlySignEntireHeadersAndBody/>\n													</wsp:Policy>\n												</sp:SymmetricBinding>\n												<sp:SignedParts>\n													<sp:Body/>\n												</sp:SignedParts>\n												<sp:EncryptedParts>\n									                <sp:Body/>\n									            </sp:EncryptedParts>\n												<sp:SignedSupportingTokens>\n													<wsp:Policy>\n														<sp:UsernameToken sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n															<wsp:Policy>\n																<sp:WssUsernameToken10/>\n															</wsp:Policy>\n														</sp:UsernameToken>\n													</wsp:Policy>\n												</sp:SignedSupportingTokens>\n												<sp:Wss11>\n													<wsp:Policy>\n														<sp:MustSupportRefKeyIdentifier/>\n														<sp:MustSupportRefIssuerSerial/>\n														<sp:MustSupportRefThumbprint/>\n														<sp:MustSupportRefEncryptedKey/>\n														<sp:RequireSignatureConfirmation/>\n													</wsp:Policy>\n												</sp:Wss11>\n												<sp:Trust10>\n													<wsp:Policy>\n														<sp:MustSupportIssuedTokens/>\n														<sp:RequireClientEntropy/>\n														<sp:RequireServerEntropy/>\n													</wsp:Policy>\n												</sp:Trust10>\n											</wsp:Policy>\n									</sp:BootstrapPolicy>\n								</wsp:Policy>\n							</sp:SecureConversationToken>\n						</wsp:Policy>\n					</sp:ProtectionToken>\n					<sp:AlgorithmSuite>\n						<wsp:Policy>\n							<sp:Basic256/>\n						</wsp:Policy>\n					</sp:AlgorithmSuite>\n					<sp:Layout>\n						<wsp:Policy>\n							<sp:Lax/>\n						</wsp:Policy>\n					</sp:Layout>\n					<sp:IncludeTimestamp/>\n					<sp:OnlySignEntireHeadersAndBody/>\n				</wsp:Policy>\n			</sp:SymmetricBinding>\n			<sp:SignedParts>\n				<sp:Body/>\n			</sp:SignedParts>\n			<sp:EncryptedParts>\n                <sp:Body/>\n            </sp:EncryptedParts>\n			<sp:Wss11>\n				<wsp:Policy>\n					<sp:MustSupportRefKeyIdentifier/>\n					<sp:MustSupportRefIssuerSerial/>\n					<sp:MustSupportRefThumbprint/>\n					<sp:MustSupportRefEncryptedKey/>\n				</wsp:Policy>\n			</sp:Wss11>\n			<sp:Trust10>\n				<wsp:Policy>\n					<sp:MustSupportIssuedTokens/>\n					<sp:RequireClientEntropy/>\n					<sp:RequireServerEntropy/>\n				</wsp:Policy>\n			</sp:Trust10>\n		</wsp:All>\n	</wsp:ExactlyOne>\n</wsp:Policy>\n\n',-1234),(16,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n<wsp:Policy wsu:Id=\"kerberossignandencrypt\"\n  xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\" xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\">\n  <wsp:ExactlyOne>\n    <wsp:All>\n      <sp:SymmetricBinding xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n        <wsp:Policy>\n          <sp:ProtectionToken>\n            <wsp:Policy>\n              <sp:KerberosToken sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n                <wsp:Policy>\n\n                  <sp:WssKerberosV5ApReqToken11/>\n                </wsp:Policy>\n              </sp:KerberosToken>\n            </wsp:Policy>\n          </sp:ProtectionToken>\n          <sp:AlgorithmSuite>\n            <wsp:Policy>\n              <sp:Basic256/>\n            </wsp:Policy>\n\n          </sp:AlgorithmSuite>\n          <sp:Layout>\n            <wsp:Policy>\n              <sp:Lax/>\n            </wsp:Policy>\n          </sp:Layout>\n          <sp:IncludeTimestamp/>\n          <sp:OnlySignEntireHeadersAndBody/>\n        </wsp:Policy>\n\n      </sp:SymmetricBinding>\n      <sp:SignedParts xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n        <sp:Body/>\n      </sp:SignedParts>\n      <sp:Wss11 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n        <sp:Policy>\n          <sp:MustSupportRefKeyIdentifier/>\n          <sp:MustSupportRefIssuerSerial/>\n          <sp:MustSupportRefThumbprint/>\n\n          <sp:RequireSignatureConfirmation/>\n        </sp:Policy>\n      </sp:Wss11>\n      <sp:Trust10 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n        <wsp:Policy>\n          <sp:RequireClientEntropy/>\n          <sp:RequireServerEntropy/>\n          <sp:MustSupportIssuedTokens/>\n        </wsp:Policy>\n      </sp:Trust10>\n    </wsp:All>\n  </wsp:ExactlyOne>\n</wsp:Policy>\n',-1234),(17,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SAML2HoKProtection31\"\n	xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n	xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\">\n	<wsp:ExactlyOne>\n		<wsp:All>\n			<sp:AsymmetricBinding\n				xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n				<wsp:Policy>\n					<sp:InitiatorToken>\n						<wsp:Policy>\n							<sp:IssuedToken\n								sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n								<sp:Issuer>\n									<Address xmlns=\"http://www.w3.org/2005/08/addressing\">https://localhost:9443/services/wso2carbon-sts\n									</Address>\n								</sp:Issuer>\n								<sp:RequestSecurityTokenTemplate>\n									<t:TokenType xmlns:t=\"http://schemas.xmlsoap.org/ws/2005/02/trust\">urn:oasis:names:tc:SAML:2.0:assertion</t:TokenType>\n									<t:KeyType xmlns:t=\"http://schemas.xmlsoap.org/ws/2005/02/trust\">http://schemas.xmlsoap.org/ws/2005/02/trust/SymmetricKey\n									</t:KeyType>\n									<t:KeySize xmlns:t=\"http://schemas.xmlsoap.org/ws/2005/02/trust\">256</t:KeySize>\n								</sp:RequestSecurityTokenTemplate>\n								<wsp:Policy>\n									<sp:RequireInternalReference />\n								</wsp:Policy>\n							</sp:IssuedToken>\n						</wsp:Policy>\n					</sp:InitiatorToken>\n					<sp:RecipientToken>\n						<wsp:Policy>\n							<sp:X509Token\n								sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n								<wsp:Policy>\n									<sp:RequireThumbprintReference />\n								</wsp:Policy>\n							</sp:X509Token>\n						</wsp:Policy>\n					</sp:RecipientToken>\n					<sp:AlgorithmSuite>\n						<wsp:Policy>\n							<sp:Basic256 />\n						</wsp:Policy>\n					</sp:AlgorithmSuite>\n					<sp:Layout>\n						<wsp:Policy>\n							<sp:Strict />\n						</wsp:Policy>\n					</sp:Layout>\n					<sp:IncludeTimestamp />\n					<sp:OnlySignEntireHeadersAndBody />\n				</wsp:Policy>\n			</sp:AsymmetricBinding>\n			<sp:Wss11 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n				<wsp:Policy>\n					<sp:MustSupportRefKeyIdentifier />\n					<sp:MustSupportRefIssuerSerial />\n					<sp:MustSupportRefThumbprint />\n					<sp:MustSupportRefEncryptedKey />\n					<sp:RequireSignatureConfirmation />\n				</wsp:Policy>\n			</sp:Wss11>\n			<sp:Wss10 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n				<wsp:Policy>\n					<sp:MustSupportRefKeyIdentifier />\n					<sp:MustSupportRefIssuerSerial />\n				</wsp:Policy>\n			</sp:Wss10>\n		</wsp:All>\n	</wsp:ExactlyOne>\n</wsp:Policy>',-1234),(18,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SAML11HoKProtection32\"\n	xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n	xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\">\n	<wsp:ExactlyOne>\n		<wsp:All>\n			<sp:AsymmetricBinding\n				xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n				<wsp:Policy>\n					<sp:InitiatorToken>\n						<wsp:Policy>\n							<sp:IssuedToken\n								sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n								<sp:Issuer>\n									<Address xmlns=\"http://www.w3.org/2005/08/addressing\">https://localhost:9443/services/wso2carbon-sts\n									</Address>\n								</sp:Issuer>\n								<sp:RequestSecurityTokenTemplate>\n									<t:TokenType xmlns:t=\"http://schemas.xmlsoap.org/ws/2005/02/trust\">http://docs.oasis-open.org/wss/oasis-wss-saml-token-profile-1.1#SAMLV1.1</t:TokenType>\n									<t:KeyType xmlns:t=\"http://schemas.xmlsoap.org/ws/2005/02/trust\">http://schemas.xmlsoap.org/ws/2005/02/trust/SymmetricKey\n									</t:KeyType>\n									<t:KeySize xmlns:t=\"http://schemas.xmlsoap.org/ws/2005/02/trust\">256</t:KeySize>\n								</sp:RequestSecurityTokenTemplate>\n								<wsp:Policy>\n									<sp:RequireInternalReference />\n								</wsp:Policy>\n							</sp:IssuedToken>\n						</wsp:Policy>\n					</sp:InitiatorToken>\n					<sp:RecipientToken>\n						<wsp:Policy>\n							<sp:X509Token\n								sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n								<wsp:Policy>\n									<sp:RequireThumbprintReference />\n								</wsp:Policy>\n							</sp:X509Token>\n						</wsp:Policy>\n					</sp:RecipientToken>\n					<sp:AlgorithmSuite>\n						<wsp:Policy>\n							<sp:Basic256 />\n						</wsp:Policy>\n					</sp:AlgorithmSuite>\n					<sp:Layout>\n						<wsp:Policy>\n							<sp:Strict />\n						</wsp:Policy>\n					</sp:Layout>\n					<sp:IncludeTimestamp />\n					<sp:OnlySignEntireHeadersAndBody />\n				</wsp:Policy>\n			</sp:AsymmetricBinding>\n			<sp:Wss11 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n				<wsp:Policy>\n					<sp:MustSupportRefKeyIdentifier />\n					<sp:MustSupportRefIssuerSerial />\n					<sp:MustSupportRefThumbprint />\n					<sp:MustSupportRefEncryptedKey />\n					<sp:RequireSignatureConfirmation />\n				</wsp:Policy>\n			</sp:Wss11>\n			<sp:Wss10 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n				<wsp:Policy>\n					<sp:MustSupportRefKeyIdentifier />\n					<sp:MustSupportRefIssuerSerial />\n				</wsp:Policy>\n			</sp:Wss10>\n		</wsp:All>\n	</wsp:ExactlyOne>\n</wsp:Policy>',-1234),(19,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SigEncrSAML20Supporting33\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\">\n    <wsp:ExactlyOne>\n        <wsp:All>\n            <sp:AsymmetricBinding xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <wsp:Policy>\n                    <sp:InitiatorToken>\n                        <wsp:Policy>\n                            <sp:X509Token\n                                    sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n                                <wsp:Policy>\n                                    <sp:RequireThumbprintReference/>\n                                </wsp:Policy>\n                            </sp:X509Token>\n                        </wsp:Policy>\n                    </sp:InitiatorToken>\n                    <sp:RecipientToken>\n                        <wsp:Policy>\n                            <sp:X509Token\n                                    sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n                                <wsp:Policy>\n                                    <sp:RequireThumbprintReference/> \n                                </wsp:Policy>\n                            </sp:X509Token>\n                        </wsp:Policy>\n                    </sp:RecipientToken>\n                    <sp:AlgorithmSuite>\n                        <wsp:Policy>\n                            <sp:Basic256/>\n                        </wsp:Policy>\n                    </sp:AlgorithmSuite>\n                    <sp:Layout>\n                        <wsp:Policy>\n                            <sp:Strict/>\n                        </wsp:Policy>\n                    </sp:Layout>\n                    <sp:IncludeTimestamp/>\n                    <sp:OnlySignEntireHeadersAndBody/>\n                </wsp:Policy>\n            </sp:AsymmetricBinding>\n            <sp:SupportingTokens xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <wsp:Policy>\n                    <sp:IssuedToken\n                            sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n                        <sp:Issuer>\n                            <Address xmlns=\"http://www.w3.org/2005/08/addressing\">https://localhost:9443/services/wso2carbon-sts</Address>\n                        </sp:Issuer>\n                        <sp:RequestSecurityTokenTemplate>\n                            <t:TokenType xmlns:t=\"http://schemas.xmlsoap.org/ws/2005/02/trust\">urn:oasis:names:tc:SAML:2.0:assertion</t:TokenType>\n                            <t:KeyType xmlns:t=\"http://schemas.xmlsoap.org/ws/2005/02/trust\">http://schemas.xmlsoap.org/ws/2005/02/trust/SymmetricKey</t:KeyType>\n                            <t:KeySize xmlns:t=\"http://schemas.xmlsoap.org/ws/2005/02/trust\">256</t:KeySize>\n                        </sp:RequestSecurityTokenTemplate>\n                        <wsp:Policy>\n                            <sp:RequireInternalReference/>\n                        </wsp:Policy>\n                    </sp:IssuedToken>\n                </wsp:Policy>\n            </sp:SupportingTokens>\n            <sp:Wss11 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <wsp:Policy>\n                    <sp:MustSupportRefKeyIdentifier/>\n                    <sp:MustSupportRefIssuerSerial/>\n                    <sp:MustSupportRefThumbprint/>\n                    <sp:MustSupportRefEncryptedKey/>\n                    <sp:RequireSignatureConfirmation/>\n                </wsp:Policy>\n            </sp:Wss11>\n            <sp:Wss10 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <wsp:Policy>\n                    <sp:MustSupportRefKeyIdentifier/>\n                    <sp:MustSupportRefIssuerSerial/>\n                </wsp:Policy>\n            </sp:Wss10>\n            <sp:SignedParts xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <sp:Body/>\n            </sp:SignedParts>\n            <sp:EncryptedParts xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <sp:Body/>\n            </sp:EncryptedParts>\n        </wsp:All>\n    </wsp:ExactlyOne>\n</wsp:Policy>\n\n',-1234),(20,'<!--\n ~ Copyright (c) 2007, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n\n<wsp:Policy wsu:Id=\"SigEncrSAML11Supporting34\"\n            xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"\n            xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\">\n    <wsp:ExactlyOne>\n        <wsp:All>\n            <sp:AsymmetricBinding xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <wsp:Policy>\n                    <sp:InitiatorToken>\n                        <wsp:Policy>\n                            <sp:X509Token\n                                    sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n                                <wsp:Policy>\n                                    <sp:RequireThumbprintReference/>\n                                </wsp:Policy>\n                            </sp:X509Token>\n                        </wsp:Policy>\n                    </sp:InitiatorToken>\n                    <sp:RecipientToken>\n                        <wsp:Policy>\n                            <sp:X509Token\n                                    sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/Never\">\n                                <wsp:Policy>\n                                    <sp:RequireThumbprintReference/> \n                                </wsp:Policy>\n                            </sp:X509Token>\n                        </wsp:Policy>\n                    </sp:RecipientToken>\n                    <sp:AlgorithmSuite>\n                        <wsp:Policy>\n                            <sp:Basic256/>\n                        </wsp:Policy>\n                    </sp:AlgorithmSuite>\n                    <sp:Layout>\n                        <wsp:Policy>\n                            <sp:Strict/>\n                        </wsp:Policy>\n                    </sp:Layout>\n                    <sp:IncludeTimestamp/>\n                    <sp:OnlySignEntireHeadersAndBody/>\n                </wsp:Policy>\n            </sp:AsymmetricBinding>\n            <sp:SupportingTokens xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <wsp:Policy>\n                    <sp:IssuedToken\n                            sp:IncludeToken=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy/IncludeToken/AlwaysToRecipient\">\n                        <sp:Issuer>\n                            <Address xmlns=\"http://www.w3.org/2005/08/addressing\">https://localhost:9443/services/wso2carbon-sts</Address>\n                        </sp:Issuer>\n                        <sp:RequestSecurityTokenTemplate>\n                            <t:TokenType xmlns:t=\"http://schemas.xmlsoap.org/ws/2005/02/trust\">http://docs.oasis-open.org/wss/oasis-wss-saml-token-profile-1.1#SAMLV1.1</t:TokenType>\n                            <t:KeyType xmlns:t=\"http://schemas.xmlsoap.org/ws/2005/02/trust\">http://schemas.xmlsoap.org/ws/2005/02/trust/SymmetricKey</t:KeyType>\n                            <t:KeySize xmlns:t=\"http://schemas.xmlsoap.org/ws/2005/02/trust\">256</t:KeySize>\n                        </sp:RequestSecurityTokenTemplate>\n                        <wsp:Policy>\n                            <sp:RequireInternalReference/>\n                        </wsp:Policy>\n                    </sp:IssuedToken>\n                </wsp:Policy>\n            </sp:SupportingTokens>\n            <sp:Wss11 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <wsp:Policy>\n                    <sp:MustSupportRefKeyIdentifier/>\n                    <sp:MustSupportRefIssuerSerial/>\n                    <sp:MustSupportRefThumbprint/>\n                    <sp:MustSupportRefEncryptedKey/>\n                    <sp:RequireSignatureConfirmation/>\n                </wsp:Policy>\n            </sp:Wss11>\n            <sp:Wss10 xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <wsp:Policy>\n                    <sp:MustSupportRefKeyIdentifier/>\n                    <sp:MustSupportRefIssuerSerial/>\n                </wsp:Policy>\n            </sp:Wss10>\n            <sp:SignedParts xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <sp:Body/>\n            </sp:SignedParts>\n            <sp:EncryptedParts xmlns:sp=\"http://schemas.xmlsoap.org/ws/2005/07/securitypolicy\">\n                <sp:Body/>\n            </sp:EncryptedParts>\n        </wsp:All>\n    </wsp:ExactlyOne>\n</wsp:Policy>\n\n',-1234),(21,'<transportReceiver name=\"http\" class=\"org.wso2.carbon.core.transports.http.HttpTransportListener\"><parameter name=\"port\">9763</parameter></transportReceiver>',-1234),(22,'<transportReceiver name=\"https\" class=\"org.wso2.carbon.core.transports.http.HttpsTransportListener\"><parameter name=\"port\">9443</parameter></transportReceiver>',-1234),(23,'<transportReceiver name=\"local\" class=\"org.wso2.carbon.core.transports.local.CarbonLocalTransportReceiver\"/>',-1234),(24,'<transportSender name=\"http\" class=\"org.apache.axis2.transport.http.CommonsHTTPTransportSender\"><parameter name=\"OmitSOAP12Action\">true</parameter><parameter name=\"Transfer-Encoding\">chunked</parameter><parameter name=\"PROTOCOL\">HTTP/1.1</parameter></transportSender>',-1234),(25,'<transportSender name=\"https\" class=\"org.apache.axis2.transport.http.CommonsHTTPTransportSender\"><parameter name=\"OmitSOAP12Action\">true</parameter><parameter name=\"Transfer-Encoding\">chunked</parameter><parameter name=\"PROTOCOL\">HTTP/1.1</parameter></transportSender>',-1234),(26,'<transportSender name=\"local\" class=\"org.wso2.carbon.core.transports.local.CarbonLocalTransportSender\"/>',-1234),(27,'<ExternalAPIStores>\n\n	<!--Configuration to set the store URL of the current running APIM deployment. \n	APIs published to external stores will be redirected to this URL-->\n	\n	<!-- <StoreURL>http://localhost:9763/store</StoreURL>\n\n        <ExternalAPIStore id=\"Store2\" type=\"wso2\" className=\"org.wso2.carbon.apimgt.impl.publishers.WSO2APIPublisher\">\n            <DisplayName>Store1</DisplayName>\n            <Endpoint>http://localhost:9763/store</Endpoint>\n            <Username>xxxx</Username>\n            <Password>xxxx</Password>\n        </ExternalAPIStore>\n	-->\n\n</ExternalAPIStores>\n\n\n',-1234),(28,'<!--Google Analytics publisher configuration. Create Google Analytics account \n	and obtain a Tracking ID. Refer http://support.google.com/analytics/bin/answer.py?hl=en&answer=1009694 -->\n<GoogleAnalyticsTracking>\n	<!--Enable/Disable Google Analytics Tracking -->\n	<Enabled>false</Enabled>\n\n	<!-- Google Analytics Tracking ID -->\n	<TrackingID>UA-XXXXXXXX-X</TrackingID>\n\n</GoogleAnalyticsTracking>',-1234),(29,'{\n  \"EnableMonetization\" : false,\n  \"IsUnlimitedTierPaid\" : false,\n  \"ExtensionHandlerPosition\": \"bottom\",\n  \"RESTAPIScopes\": {\n    \"Scope\": [\n      {\n        \"Name\": \"apim:api_publish\",\n        \"Roles\": \"admin,Internal/publisher\"\n      },\n      {\n        \"Name\": \"apim:api_create\",\n        \"Roles\": \"admin,Internal/creator\"\n      },\n      {\n        \"Name\": \"apim:api_view\",\n        \"Roles\": \"admin,Internal/publisher,Internal/creator\"\n      },\n      {\n        \"Name\": \"apim:subscribe\",\n        \"Roles\": \"admin,Internal/subscriber\"\n      },\n      {\n        \"Name\": \"apim:tier_view\",\n        \"Roles\": \"admin,Internal/publisher,Internal/creator\"\n      },\n      {\n        \"Name\": \"apim:tier_manage\",\n        \"Roles\": \"admin\"\n      },\n      {\n        \"Name\": \"apim:bl_view\",\n        \"Roles\": \"admin\"\n      },\n      {\n        \"Name\": \"apim:bl_manage\",\n        \"Roles\": \"admin\"\n      },\n      {\n        \"Name\": \"apim:subscription_view\",\n        \"Roles\": \"admin,Internal/creator\"\n      },\n      {\n        \"Name\": \"apim:subscription_block\",\n        \"Roles\": \"admin,Internal/creator\"\n      },\n      {\n        \"Name\": \"apim:mediation_policy_view\",\n        \"Roles\": \"admin\"\n      },\n      {\n        \"Name\": \"apim:mediation_policy_create\",\n        \"Roles\": \"admin\"\n      },\n      {\n        \"Name\": \"apim:api_workflow\",\n        \"Roles\": \"admin\"\n      }\n    ]\n  },\n  \"NotificationsEnabled\":\"false\",\n  \"Notifications\":[{\n    \"Type\":\"new_api_version\",\n    \"Notifiers\" :[{\n      \"Class\":\"org.wso2.carbon.apimgt.impl.notification.NewAPIVersionEmailNotifier\",\n      \"ClaimsRetrieverImplClass\":\"org.wso2.carbon.apimgt.impl.token.DefaultClaimsRetriever\",\n      \"Title\": \"Version $2 of $1 Released\",\n      \"Template\": \" <html> <body> <h3 style=\\\"color:Black;\\\">We‚Äôre happy to announce the arrival of the next major version $2 of $1 API which is now available in Our API Store.</h3><a href=\\\"https://localhost:9443/store\\\">Click here to Visit WSO2 API Store</a></body></html>\"\n    }]\n  }\n  ],\n  \"DefaultRoles\" : {\n    \"PublisherRole\" : {\n      \"CreateOnTenantLoad\" : true,\n      \"RoleName\" : \"Internal/publisher\"\n    },\n    \"CreatorRole\" : {\n      \"CreateOnTenantLoad\" : true,\n      \"RoleName\" : \"Internal/creator\"\n    },\n    \"SubscriberRole\" : {\n      \"CreateOnTenantLoad\" : true\n    }\n  }\n}',-1234),(30,'<WorkFlowExtensions>\n    <ApplicationCreation executor=\"org.wso2.carbon.apimgt.impl.workflow.ApplicationCreationSimpleWorkflowExecutor\"/>\n    <!--ApplicationCreation executor=\"org.wso2.carbon.apimgt.impl.workflow.ApplicationCreationWSWorkflowExecutor\">\n         <Property name=\"serviceEndpoint\">http://localhost:9765/services/ApplicationApprovalWorkFlowProcess/</Property>\n         <Property name=\"username\">admin</Property>\n         <Property name=\"password\">admin</Property>\n         <Property name=\"callbackURL\">https://localhost:8243/services/WorkflowCallbackService</Property>\n    </ApplicationCreation-->\n    <ProductionApplicationRegistration executor=\"org.wso2.carbon.apimgt.impl.workflow.ApplicationRegistrationSimpleWorkflowExecutor\"/>\n    <!--ProductionApplicationRegistration executor=\"org.wso2.carbon.apimgt.impl.workflow.ApplicationRegistrationWSWorkflowExecutor\">\n        <Property name=\"serviceEndpoint\">http://localhost:9765/services/ApplicationRegistrationWorkFlowProcess/</Property>\n        <Property name=\"username\">admin</Property>\n        <Property name=\"password\">admin</Property>\n        <Property name=\"callbackURL\">https://localhost:8248/services/WorkflowCallbackService</Property>\n    </ProductionApplicationRegistration-->\n    <SandboxApplicationRegistration executor=\"org.wso2.carbon.apimgt.impl.workflow.ApplicationRegistrationSimpleWorkflowExecutor\"/>\n    <!--SandboxApplicationRegistration executor=\"org.wso2.carbon.apimgt.impl.workflow.ApplicationRegistrationWSWorkflowExecutor\">\n        <Property name=\"serviceEndpoint\">http://localhost:9765/services/ApplicationRegistrationWorkFlowProcess/</Property>\n        <Property name=\"username\">admin</Property>\n        <Property name=\"password\">admin</Property>\n        <Property name=\"callbackURL\">https://localhost:8248/services/WorkflowCallbackService</Property>\n    </SandboxApplicationRegistration-->\n    <SubscriptionCreation executor=\"org.wso2.carbon.apimgt.impl.workflow.SubscriptionCreationSimpleWorkflowExecutor\"/>\n    <!--SubscriptionCreation executor=\"org.wso2.carbon.apimgt.impl.workflow.SubscriptionCreationWSWorkflowExecutor\">\n         <Property name=\"serviceEndpoint\">http://localhost:9765/services/SubscriptionApprovalWorkFlowProcess/</Property>\n         <Property name=\"username\">admin</Property>\n         <Property name=\"password\">admin</Property>\n         <Property name=\"callbackURL\">https://localhost:8243/services/WorkflowCallbackService</Property>\n    </SubscriptionCreation-->\n    <UserSignUp executor=\"org.wso2.carbon.apimgt.impl.workflow.UserSignUpSimpleWorkflowExecutor\"/>\n    <!--UserSignUp executor=\"org.wso2.carbon.apimgt.impl.workflow.UserSignUpWSWorkflowExecutor\">\n         <Property name=\"serviceEndpoint\">http://localhost:9765/services/UserSignupProcess/</Property>\n         <Property name=\"username\">admin</Property>\n         <Property name=\"password\">admin</Property>\n         <Property name=\"callbackURL\">https://localhost:8243/services/WorkflowCallbackService</Property>\n    </UserSignUp-->\n\n	<!--\n	***NOTE:***\n        Users of deletion workflows are expected to implement their own deletion workflow executors and services.\n        By default API Manager only implements the core functionalities required to support deletion workflows and\n        simple deletion workflow executors. Default WS deletion workflow implementations are not available with the\n        distribution.\n    -->\n\n    <SubscriptionDeletion executor=\"org.wso2.carbon.apimgt.impl.workflow.SubscriptionDeletionSimpleWorkflowExecutor\"/>\n    <!--SubscriptionDeletion executor=\"org.wso2.carbon.apimgt.impl.workflow.SubscriptionDeletionSimpleWorkflowExecutor\">\n         <Property name=\"serviceEndpoint\">http://localhost:9765/services/SubscriptionApprovalWorkFlowProcess/</Property>\n         <Property name=\"username\">admin</Property>\n         <Property name=\"password\">admin</Property>\n         <Property name=\"callbackURL\">https://localhost:8243/services/WorkflowCallbackService</Property>\n    </SubscriptionDeletion -->\n    <ApplicationDeletion executor=\"org.wso2.carbon.apimgt.impl.workflow.ApplicationDeletionSimpleWorkflowExecutor\"/>\n    <!--ApplicationDeletion executor=\"org.wso2.carbon.apimgt.impl.workflow.ApplicationDeletionSimpleWorkflowExecutor\">\n         <Property name=\"serviceEndpoint\">http://localhost:9765/services/ApplicationApprovalWorkFlowProcess/</Property>\n         <Property name=\"username\">admin</Property>\n         <Property name=\"password\">admin</Property>\n         <Property name=\"callbackURL\">https://localhost:8243/services/WorkflowCallbackService</Property>\n    </ApplicationDeletion-->\n    \n    <!-- Publisher related workflows -->\n    <APIStateChange executor=\"org.wso2.carbon.apimgt.impl.workflow.APIStateChangeSimpleWorkflowExecutor\" />\n    <!-- <APIStateChange executor=\"org.wso2.carbon.apimgt.impl.workflow.APIStateChangeWSWorkflowExecutor\">\n        <Property name=\"processDefinitionKey\">APIStateChangeApprovalProcess</Property>\n        <Property name=\"stateList\">Created:Publish,Published:Block</Property>        \n    </APIStateChange>-->\n\n    \n    \n</WorkFlowExtensions>\n',-1234),(31,'<SelfSignUp>\n	\n   <EnableSignup>true</EnableSignup>\n   \n   <!-- user storage to store users -->\n   <SignUpDomain>PRIMARY</SignUpDomain>   \n   \n   <!-- Tenant admin information. (for clustered setup credentials for AuthManager) -->\n   <AdminUserName>${admin.username}</AdminUserName>\n   <AdminPassword>${admin.password}</AdminPassword>\n   \n   <!-- List of roles for the tenant user -->\n   <SignUpRoles>\n   	<SignUpRole>\n    		<RoleName>subscriber</RoleName>\n      		<IsExternalRole>false</IsExternalRole>\n  	</SignUpRole>    \n   </SignUpRoles>\n    \n</SelfSignUp>\n',-1234),(32,'[\"WSO2 Carbon - Password Reset\",\"\\n            Hi {{user.claim.givenname}},\\n\\n            We received a request to change the password on the {{user-name}} account associated with this e-mail address.\\n            If you made this request, please click the link below to securely change your password:\\n\\n            https://localhost:9443/accountrecoveryendpoint/confirmrecovery.do?confirmation\\u003d{{confirmation-code}}\\u0026userstoredomain\\u003d{{userstore-domain}}\\u0026username\\u003d{{url:user-name}}\\u0026tenantdomain\\u003d{{tenant-domain}}\\u0026callback\\u003d{{callback}}\\n\\n            If clicking the link doesn\\u0027t seem to work, you can copy and paste the link into your browser\\u0027s address\\n            window.\\n\\n            If you did not request to have your {{user-name}} password reset, simply disregard this email and no changes\\n            to your account will be made.\\n        \",\"\\n            Best Regards,\\n            WSO2 Carbon Team\\n            http://www.wso2.com\\n        \"]',-1234),(33,'[\"WSO2 Carbon - Email Confirmation\",\"\\n            Hi {{user.claim.givenname}},\\n\\n            You have created an account with following user name\\n\\n            User Name: {{user-name}}\\n\\n            Please click the following link to unlock. If clicking the link doesn\\u0027t seem to work, you can copy and paste\\n            the\\n            link into your browser\\u0027s address window.\\n\\n            https://localhost:9443/accountrecoveryendpoint/confirmregistration.do?confirmation\\u003d{{confirmation-code}}\\u0026userstoredomain\\u003d{{userstore-domain}}\\u0026username\\u003d{{url:user-name}}\\u0026tenantdomain\\u003d{{tenant-domain}}\\n        \",\"\\n            Best Regards,\\n            WSO2 Identity Server Team\\n            http://www.wso2.com\\n        \"]',-1234),(34,'[\"WSO2 Carbon - Account Recovery\",\"\\n            Hi {{user.claim.givenname}},\\n\\n            We received a request to recover your account user name. The account associated with us indicates that the\\n            user name is : {{userstore-domain}}/{{user-name}}@{{tenant-domain}}\\n        \",\"\\n            Best Regards,\\n            WSO2 Carbon Team\\n            http://www.wso2.com\\n        \"]',-1234),(35,'[\"WSO2 Carbon - Account Confirmation\",\"\\n            Hi {{user.claim.givenname}},\\n\\n            You have created an account with following user name\\n\\n            User Name: {{user-name}}\\n\\n            Please click the following link to unlock. If clicking the link doesn\\u0027t seem to work, you can copy and paste\\n            the\\n            link into your browser\\u0027s address window.\\n\\n            https://localhost:9443/accountrecoveryendpoint/confirmregistration.do?confirmation\\u003d{{confirmation-code}}\\u0026userstoredomain\\u003d{{userstore-domain}}\\u0026username\\u003d{{url:user-name}}\\u0026tenantdomain\\u003d{{tenant-domain}}\\u0026callback\\u003d{{callback}}\\n        \",\"\\n            Best Regards,\\n            WSO2 Identity Server Team\\n            http://www.wso2.com\\n        \"]',-1234),(36,'[\"WSO2 Carbon - Resend Account Confirmation\",\"\\n            Hi {{user.claim.givenname}},\\n\\n            You have created an account with following user name\\n\\n            User Name: {{user-name}}\\n\\n            Please click the following link to unlock. If clicking the link doesn\\u0027t seem to work, you can copy and paste\\n            the\\n            link into your browser\\u0027s address window.\\n\\n            https://localhost:9443/accountrecoveryendpoint/confirmregistration.do?confirmation\\u003d{{confirmation-code}}\\u0026userstoredomain\\u003d{{userstore-domain}}\\u0026username\\u003d{{url:user-name}}\\u0026tenantdomain\\u003d{{tenant-domain}}\\n        \",\"\\n            Best Regards,\\n            WSO2 Identity Server Team\\n            http://www.wso2.com\\n        \"]',-1234),(37,'[\"WSO2 Carbon - Temporary Password\",\"\\n            Hi {{user.claim.givenname}},\\n\\n            Please find your temporary password below.\\n\\n            User Name: {{user-name}}\\n            Temporary Password: {{temporary-password}}\\n        \",\"\\n            Best Regards,\\n            WSO2 Identity Server Team\\n            http://www.wso2.com\\n        \"]',-1234),(38,'[\"WSO2 Carbon - One Time Password Reset\",\"\\n            Hi {{user.claim.givenname}},\\n\\n            Please use the password {{otp-password}} as the new password for your next login.\\n        \",\"\\n            Best Regards,\\n            WSO2 Identity Server Team\\n            http://www.wso2.com\\n        \"]',-1234),(39,'[\"WSO2 Carbon - Password Change for New Account\",\"\\n            Hi {{user.claim.givenname}},\\n\\n            Please change your password for the newly created account : {{user-name}}. Please click the link below to\\n            create the password.\\n\\n            https://localhost:9443/accountrecoveryendpoint/confirmrecovery.do?confirmation\\u003d{{confirmation-code}}\\u0026userstoredomain\\u003d{{userstore-domain}}\\u0026username\\u003d{{url:user-name}}\\u0026tenantdomain\\u003d{{tenant-domain}}\\n            If clicking the link doesn\\u0027t seem to work, you can copy and paste the\\n            link into your browser\\u0027s address window.\\n        \",\"\\n            Best Regards,\\n            WSO2 Carbon Team\\n            http://www.wso2.com\\n        \"]',-1234),(40,'[\"WSO2 - Admin Forced Password Reset\",\"\\n            Hi {{user.claim.givenname}},\\n\\n            Please change your password for the account : {{user-name}}. Please click the link below to\\n            change the password.\\n\\n            https://localhost:9443/accountrecoveryendpoint/confirmrecovery.do?confirmation\\u003d{{confirmation-code}}\\u0026userstoredomain\\u003d{{userstore-domain}}\\u0026username\\u003d{{url:user-name}}\\u0026tenantdomain\\u003d{{tenant-domain}}\\n\\n            If clicking the link doesn\\u0027t seem to work, you can copy and paste the\\n            link into your browser\\u0027s address window.\\n        \",\"\\n            Best Regards,\\n            WSO2 Carbon Team\\n            http://www.wso2.com\\n        \"]',-1234),(41,'[\"WSO2 - Admin Forced Password Reset\",\"\\n            Hi {{user.claim.givenname}},\\n\\n            We received a request to change the password on the {{user-name}} account associated with this e-mail address.Please use below OTP as the password at next login and then reset your password.\\n\\n            OTP : {{confirmation-code}}\\n\\n        \",\"\\n            Best Regards,\\n            WSO2 Carbon Team\\n            http://www.wso2.com\\n        \"]',-1234),(42,'[\"WSO2 Carbon - Your account unlocked\",\"\\n            Hi {{user.claim.givenname}},\\n\\n            Please note that the account registered with us with the user name : {{user-name}} has been unlocked.\\n        \",\"\\n            Best Regards,\\n            WSO2 Identity Server Team\\n            http://www.wso2.com\\n        \"]',-1234),(43,'[\"WSO2 Carbon - Your account Locked\",\"\\n            Hi {{user.claim.givenname}},\\n\\n            Please note that the account registered with us with the user name : {{user-name}} has been locked.\\n        \",\"\\n            Best Regards,\\n            WSO2 Identity Server Team\\n            http://www.wso2.com\\n        \"]',-1234),(44,'[\"WSO2 Carbon - Your account enabled\",\"\\n            Hi {{user.claim.givenname}},\\n\\n            Please note that the account registered with us with the user name : {{user-name}} has been enabled.\\n        \",\"\\n            Best Regards,\\n            WSO2 Identity Server Team\\n            http://www.wso2.com\\n        \"]',-1234),(45,'[\"WSO2 Carbon - Your account disabled\",\"\\n            Hi {{user.claim.givenname}},\\n\\n            Please note that the account registered with us with the user name : {{user-name}} has been disabled.\\n        \",\"\\n            Best Regards,\\n            WSO2 Identity Server Team\\n            http://www.wso2.com\\n        \"]',-1234),(46,'[\"WSO2 Carbon - Your Password Reset successfully\",\"\\n            Hi {{user.claim.givenname}},\\n\\n            Please note that your password reset operation is successfully completed.\\n        \",\"\\n            Best Regards,\\n            WSO2 Identity Server Team\\n            http://www.wso2.com\\n        \"]',-1234),(47,'[\"WSO2 Carbon - You started to reset password\",\"\\n            Hi {{user.claim.givenname}},\\n\\n            This is to notify that you have initiate to reset your password using security questions.\\n        \",\"\\n            Best Regards,\\n            WSO2 Identity Server Team\\n            http://www.wso2.com\\n        \"]',-1234),(48,'[\"WSO2 Carbon - Your account is inactive\",\"\\n            Hi {{user.claim.givenname}},\\n\\n            It looks as though you haven\\u0027t signed in to your account for quite a while. Please sign in to your account if you\\u0027d like to keep your account active.\\n        \",\"\\n            Best Regards,\\n            WSO2 Identity Server Team\\n            http://www.wso2.com\\n        \"]',-1234),(49,'<Policy xmlns=\"urn:oasis:names:tc:xacml:3.0:core:schema:wd-17\"  PolicyId=\"authn_time_and_scope_based_policy_template\"  RuleCombiningAlgId=\"urn:oasis:names:tc:xacml:1.0:rule-combining-algorithm:first-applicable\" Version=\"1.0\"><Description>This template policy provides ability to authorize users to a given service provider(defined by SP_NAME) in the authentication flow based on the oauth scope(s) (SCOPE1 or SCOPE2) and the time of the day (eg. between 09:00:00 to 17:00:00). Users who are logging in between the given time and who grant the given scopes will be allowed to login and any other user will be denied.</Description><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/sp/sp-name\" Category=\"http://wso2.org/identity/sp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">authenticate</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/identity-action/action-name\" Category=\"http://wso2.org/identity/identity-action\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Rule Effect=\"Permit\" RuleId=\"permit_by_scopes_and_time\"><Condition><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:and\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:2.0:function:time-in-range\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:time-one-and-only\"><AttributeDesignator AttributeId=\"urn:oasis:names:tc:xacml:1.0:environment:current-time\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:environment\" DataType=\"http://www.w3.org/2001/XMLSchema#time\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">09:00:00</AttributeValue><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">17:00:00</AttributeValue></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:or\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SCOPE1</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/auth-context-request-param/scope:20\" Category=\"http://wso2.org/identity/auth-context-request-param\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SCOPE2</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/auth-context-request-param/scope:20\" Category=\"http://wso2.org/identity/auth-context-request-param\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply></Apply></Apply></Condition></Rule><Rule Effect=\"Deny\" RuleId=\"deny_others\"></Rule></Policy>\n',-1234),(51,'<Policy xmlns=\"urn:oasis:names:tc:xacml:3.0:core:schema:wd-17\"  PolicyId=\"authn_time_and_scope_based_policy_template\"  RuleCombiningAlgId=\"urn:oasis:names:tc:xacml:1.0:rule-combining-algorithm:first-applicable\" Version=\"1.0\"><Description>This template policy provides ability to authorize users to a given service provider(defined by SP_NAME) in the authentication flow based on the oauth scope(s) (SCOPE1 or SCOPE2) and the time of the day (eg. between 09:00:00 to 17:00:00). Users who are logging in between the given time and who grant the given scopes will be allowed to login and any other user will be denied.</Description><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/sp/sp-name\" Category=\"http://wso2.org/identity/sp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">authenticate</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/identity-action/action-name\" Category=\"http://wso2.org/identity/identity-action\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Rule Effect=\"Permit\" RuleId=\"permit_by_scopes_and_time\"><Condition><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:and\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:2.0:function:time-in-range\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:time-one-and-only\"><AttributeDesignator AttributeId=\"urn:oasis:names:tc:xacml:1.0:environment:current-time\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:environment\" DataType=\"http://www.w3.org/2001/XMLSchema#time\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">09:00:00</AttributeValue><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">17:00:00</AttributeValue></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:or\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SCOPE1</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/auth-context-request-param/scope:20\" Category=\"http://wso2.org/identity/auth-context-request-param\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SCOPE2</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/auth-context-request-param/scope:20\" Category=\"http://wso2.org/identity/auth-context-request-param\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply></Apply></Apply></Condition></Rule><Rule Effect=\"Deny\" RuleId=\"deny_others\"></Rule></Policy>\n',-1234),(52,'<Policy xmlns=\"urn:oasis:names:tc:xacml:3.0:core:schema:wd-17\"  PolicyId=\"authn_time_based_policy_template\" RuleCombiningAlgId=\"urn:oasis:names:tc:xacml:1.0:rule-combining-algorithm:first-applicable\" Version=\"1.0\"><Description>This template policy provides ability to authorize users to a given service provider(defined by SP_NAME) in the authentication flow based on the login time. Any authentication attempt outside the specified time range(09:00:00 to 17:00:00) will be denied.</Description><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/sp/sp-name\" Category=\"http://wso2.org/identity/sp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">authenticate</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/identity-action/action-name\" Category=\"http://wso2.org/identity/identity-action\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Rule Effect=\"Permit\" RuleId=\"permit_by_time\"><Condition><Apply FunctionId=\"urn:oasis:names:tc:xacml:2.0:function:time-in-range\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:time-one-and-only\"><AttributeDesignator AttributeId=\"urn:oasis:names:tc:xacml:1.0:environment:current-time\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:environment\" DataType=\"http://www.w3.org/2001/XMLSchema#time\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">09:00:00</AttributeValue><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">17:00:00</AttributeValue></Apply></Condition></Rule><Rule Effect=\"Deny\" RuleId=\"deny_others\"></Rule></Policy>\n',-1234),(54,'<Policy xmlns=\"urn:oasis:names:tc:xacml:3.0:core:schema:wd-17\"  PolicyId=\"authn_time_based_policy_template\" RuleCombiningAlgId=\"urn:oasis:names:tc:xacml:1.0:rule-combining-algorithm:first-applicable\" Version=\"1.0\"><Description>This template policy provides ability to authorize users to a given service provider(defined by SP_NAME) in the authentication flow based on the login time. Any authentication attempt outside the specified time range(09:00:00 to 17:00:00) will be denied.</Description><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/sp/sp-name\" Category=\"http://wso2.org/identity/sp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">authenticate</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/identity-action/action-name\" Category=\"http://wso2.org/identity/identity-action\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Rule Effect=\"Permit\" RuleId=\"permit_by_time\"><Condition><Apply FunctionId=\"urn:oasis:names:tc:xacml:2.0:function:time-in-range\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:time-one-and-only\"><AttributeDesignator AttributeId=\"urn:oasis:names:tc:xacml:1.0:environment:current-time\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:environment\" DataType=\"http://www.w3.org/2001/XMLSchema#time\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">09:00:00</AttributeValue><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">17:00:00</AttributeValue></Apply></Condition></Rule><Rule Effect=\"Deny\" RuleId=\"deny_others\"></Rule></Policy>\n',-1234),(55,'<Policy xmlns=\"urn:oasis:names:tc:xacml:3.0:core:schema:wd-17\"  PolicyId=\"provisioning_user_claim_based_policy_template\" RuleCombiningAlgId=\"urn:oasis:names:tc:xacml:1.0:rule-combining-algorithm:first-applicable\" Version=\"1.0\"><Description>This template policy provides ability to authorize provisioning requests initiated from a given service provider(defined by SP_NAME) to a given identity provider(defined by IDP_NAME) in the outbound provisioning flow based on the claim values of the user (CLAIM_URI_1=CLAIM_VALUE_1 and CLAIM_URI_2=CLAIM_VALUE_2). Users with the given claim values will be allowed and any other users will be denied.</Description><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/sp/sp-name\" Category=\"http://wso2.org/identity/sp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">IDP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/idp/idp-name\" Category=\"http://wso2.org/identity/idp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">provisioning</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/identity-action/action-name\" Category=\"http://wso2.org/identity/identity-action\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Rule Effect=\"Permit\" RuleId=\"permit_by_claims\"><Condition><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:and\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:or\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-one-and-only\"><AttributeDesignator AttributeId=\"CLAIM_URI_1\" Category=\"http://wso2.org/identity/user\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">CLAIM_VALUE_1</AttributeValue></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-one-and-only\"><AttributeDesignator AttributeId=\"CLAIM_URI_1\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:resource\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">CLAIM_VALUE_1</AttributeValue></Apply></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:or\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-one-and-only\"><AttributeDesignator AttributeId=\"CLAIM_URI_2\" Category=\"http://wso2.org/identity/user\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">CLAIM_VALUE_2</AttributeValue></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-one-and-only\"><AttributeDesignator AttributeId=\"CLAIM_URI_2\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:resource\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">CLAIM_VALUE_2</AttributeValue></Apply></Apply></Apply></Condition></Rule><Rule Effect=\"Deny\" RuleId=\"deny_others\"></Rule></Policy>',-1234),(57,'<Policy xmlns=\"urn:oasis:names:tc:xacml:3.0:core:schema:wd-17\"  PolicyId=\"provisioning_user_claim_based_policy_template\" RuleCombiningAlgId=\"urn:oasis:names:tc:xacml:1.0:rule-combining-algorithm:first-applicable\" Version=\"1.0\"><Description>This template policy provides ability to authorize provisioning requests initiated from a given service provider(defined by SP_NAME) to a given identity provider(defined by IDP_NAME) in the outbound provisioning flow based on the claim values of the user (CLAIM_URI_1=CLAIM_VALUE_1 and CLAIM_URI_2=CLAIM_VALUE_2). Users with the given claim values will be allowed and any other users will be denied.</Description><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/sp/sp-name\" Category=\"http://wso2.org/identity/sp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">IDP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/idp/idp-name\" Category=\"http://wso2.org/identity/idp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">provisioning</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/identity-action/action-name\" Category=\"http://wso2.org/identity/identity-action\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Rule Effect=\"Permit\" RuleId=\"permit_by_claims\"><Condition><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:and\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:or\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-one-and-only\"><AttributeDesignator AttributeId=\"CLAIM_URI_1\" Category=\"http://wso2.org/identity/user\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">CLAIM_VALUE_1</AttributeValue></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-one-and-only\"><AttributeDesignator AttributeId=\"CLAIM_URI_1\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:resource\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">CLAIM_VALUE_1</AttributeValue></Apply></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:or\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-one-and-only\"><AttributeDesignator AttributeId=\"CLAIM_URI_2\" Category=\"http://wso2.org/identity/user\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">CLAIM_VALUE_2</AttributeValue></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-one-and-only\"><AttributeDesignator AttributeId=\"CLAIM_URI_2\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:resource\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">CLAIM_VALUE_2</AttributeValue></Apply></Apply></Apply></Condition></Rule><Rule Effect=\"Deny\" RuleId=\"deny_others\"></Rule></Policy>',-1234),(58,'<Policy xmlns=\"urn:oasis:names:tc:xacml:3.0:core:schema:wd-17\" PolicyId=\"authn_role_based_policy_template\"\n        RuleCombiningAlgId=\"urn:oasis:names:tc:xacml:1.0:rule-combining-algorithm:first-applicable\" Version=\"1.0\"><Description>This policy template provides ability to authorize users to a given service provider(defined by SP_NAME) in the authentication flow based on the roles of the user (defined by ROLE_1 and ROLE_2). Users who have at least one of the given roles, will be allowed and any others will be denied.</Description><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/sp/sp-name\" Category=\"http://wso2.org/identity/sp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"/></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">authenticate</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/identity-action/action-name\" Category=\"http://wso2.org/identity/identity-action\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Rule Effect=\"Permit\" RuleId=\"permit_by_roles\"><Condition><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:or\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">ROLE_1</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/claims/role\" Category=\"urn:oasis:names:tc:xacml:1.0:subject-category:access-subject\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"/></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">ROLE_2</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/claims/role\" Category=\"urn:oasis:names:tc:xacml:1.0:subject-category:access-subject\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"/></Apply></Apply></Condition></Rule><Rule Effect=\"Deny\" RuleId=\"deny_others\"/></Policy>\n',-1234),(60,'<Policy xmlns=\"urn:oasis:names:tc:xacml:3.0:core:schema:wd-17\" PolicyId=\"authn_role_based_policy_template\"\n        RuleCombiningAlgId=\"urn:oasis:names:tc:xacml:1.0:rule-combining-algorithm:first-applicable\" Version=\"1.0\"><Description>This policy template provides ability to authorize users to a given service provider(defined by SP_NAME) in the authentication flow based on the roles of the user (defined by ROLE_1 and ROLE_2). Users who have at least one of the given roles, will be allowed and any others will be denied.</Description><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/sp/sp-name\" Category=\"http://wso2.org/identity/sp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"/></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">authenticate</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/identity-action/action-name\" Category=\"http://wso2.org/identity/identity-action\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Rule Effect=\"Permit\" RuleId=\"permit_by_roles\"><Condition><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:or\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">ROLE_1</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/claims/role\" Category=\"urn:oasis:names:tc:xacml:1.0:subject-category:access-subject\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"/></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">ROLE_2</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/claims/role\" Category=\"urn:oasis:names:tc:xacml:1.0:subject-category:access-subject\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"/></Apply></Apply></Condition></Rule><Rule Effect=\"Deny\" RuleId=\"deny_others\"/></Policy>\n',-1234),(61,'<Policy xmlns=\"urn:oasis:names:tc:xacml:3.0:core:schema:wd-17\"  PolicyId=\"authn_user_claim_based_policy_template\" RuleCombiningAlgId=\"urn:oasis:names:tc:xacml:1.0:rule-combining-algorithm:first-applicable\" Version=\"1.0\"><Description>This template policy provides ability to authorize users to a given service provider(defined by SP_NAME) in the authentication flow based on the claim values of the user (CLAIM_URI_1=CLAIM_VALUE_1 and CLAIM_URI_2=CLAIM_VALUE_2). Users with the given claim values will be allowed and any other users will be denied.</Description><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/sp/sp-name\" Category=\"http://wso2.org/identity/sp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">authenticate</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/identity-action/action-name\" Category=\"http://wso2.org/identity/identity-action\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Rule Effect=\"Permit\" RuleId=\"permit_by_claims\"><Condition><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:and\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-one-and-only\"><AttributeDesignator AttributeId=\"CLAIM_URI_1\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:resource\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">CLAIM_VALUE_1</AttributeValue></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-one-and-only\"><AttributeDesignator AttributeId=\"CLAIM_URI_2\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:resource\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">CLAIM_VALUE_2</AttributeValue></Apply></Apply></Condition></Rule><Rule Effect=\"Deny\" RuleId=\"deny_others\"></Rule></Policy>\n',-1234),(63,'<Policy xmlns=\"urn:oasis:names:tc:xacml:3.0:core:schema:wd-17\"  PolicyId=\"authn_user_claim_based_policy_template\" RuleCombiningAlgId=\"urn:oasis:names:tc:xacml:1.0:rule-combining-algorithm:first-applicable\" Version=\"1.0\"><Description>This template policy provides ability to authorize users to a given service provider(defined by SP_NAME) in the authentication flow based on the claim values of the user (CLAIM_URI_1=CLAIM_VALUE_1 and CLAIM_URI_2=CLAIM_VALUE_2). Users with the given claim values will be allowed and any other users will be denied.</Description><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/sp/sp-name\" Category=\"http://wso2.org/identity/sp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">authenticate</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/identity-action/action-name\" Category=\"http://wso2.org/identity/identity-action\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Rule Effect=\"Permit\" RuleId=\"permit_by_claims\"><Condition><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:and\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-one-and-only\"><AttributeDesignator AttributeId=\"CLAIM_URI_1\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:resource\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">CLAIM_VALUE_1</AttributeValue></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-one-and-only\"><AttributeDesignator AttributeId=\"CLAIM_URI_2\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:resource\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">CLAIM_VALUE_2</AttributeValue></Apply></Apply></Condition></Rule><Rule Effect=\"Deny\" RuleId=\"deny_others\"></Rule></Policy>\n',-1234),(64,'<Policy xmlns=\"urn:oasis:names:tc:xacml:3.0:core:schema:wd-17\"  PolicyId=\"provisioning_role_based_policy_template\" RuleCombiningAlgId=\"urn:oasis:names:tc:xacml:1.0:rule-combining-algorithm:first-applicable\" Version=\"1.0\"><Description>This template policy provides ability to authorize provisioning requests initiated from a given service provider(defined by SP_NAME) to a given identity provider(defined by IDP_NAME) in the outbound provisioning flow based on the roles of the user (ROLE_1, ROLE_2). Provisioning attempts to the users with given role(s) will be allowed and all others will be denied.</Description><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/sp/sp-name\" Category=\"http://wso2.org/identity/sp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">IDP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/idp/idp-name\" Category=\"http://wso2.org/identity/idp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">provisioning</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/identity-action/action-name\" Category=\"http://wso2.org/identity/identity-action\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Rule Effect=\"Permit\" RuleId=\"permit_by_role_when_create\"><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">POST</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/provisioning/provision-operation\" Category=\"http://wso2.org/identity/provisioning\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Condition><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:or\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">ROLE_1</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/provisioning/claim-group\" Category=\"http://wso2.org/identity/provisioning\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">ROLE_2</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/provisioning/claim-group\" Category=\"http://wso2.org/identity/provisioning\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply></Apply></Condition></Rule><Rule Effect=\"Permit\" RuleId=\"permit_by_role_when_update\"><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">PUT</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/provisioning/provision-operation\" Category=\"http://wso2.org/identity/provisioning\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Condition><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:or\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">ROLE_1</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/claims/role\" Category=\"http://wso2.org/identity/user\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">ROLE_2</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/claims/role\" Category=\"http://wso2.org/identity/user\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply></Apply></Condition></Rule><Rule Effect=\"Deny\" RuleId=\"deny_others\"></Rule></Policy>',-1234),(66,'<Policy xmlns=\"urn:oasis:names:tc:xacml:3.0:core:schema:wd-17\"  PolicyId=\"provisioning_role_based_policy_template\" RuleCombiningAlgId=\"urn:oasis:names:tc:xacml:1.0:rule-combining-algorithm:first-applicable\" Version=\"1.0\"><Description>This template policy provides ability to authorize provisioning requests initiated from a given service provider(defined by SP_NAME) to a given identity provider(defined by IDP_NAME) in the outbound provisioning flow based on the roles of the user (ROLE_1, ROLE_2). Provisioning attempts to the users with given role(s) will be allowed and all others will be denied.</Description><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/sp/sp-name\" Category=\"http://wso2.org/identity/sp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">IDP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/idp/idp-name\" Category=\"http://wso2.org/identity/idp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">provisioning</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/identity-action/action-name\" Category=\"http://wso2.org/identity/identity-action\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Rule Effect=\"Permit\" RuleId=\"permit_by_role_when_create\"><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">POST</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/provisioning/provision-operation\" Category=\"http://wso2.org/identity/provisioning\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Condition><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:or\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">ROLE_1</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/provisioning/claim-group\" Category=\"http://wso2.org/identity/provisioning\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">ROLE_2</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/provisioning/claim-group\" Category=\"http://wso2.org/identity/provisioning\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply></Apply></Condition></Rule><Rule Effect=\"Permit\" RuleId=\"permit_by_role_when_update\"><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">PUT</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/provisioning/provision-operation\" Category=\"http://wso2.org/identity/provisioning\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Condition><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:or\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">ROLE_1</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/claims/role\" Category=\"http://wso2.org/identity/user\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">ROLE_2</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/claims/role\" Category=\"http://wso2.org/identity/user\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply></Apply></Condition></Rule><Rule Effect=\"Deny\" RuleId=\"deny_others\"></Rule></Policy>',-1234),(67,'<Policy xmlns=\"urn:oasis:names:tc:xacml:3.0:core:schema:wd-17\"  PolicyId=\"authn_scope_based_policy_template\" RuleCombiningAlgId=\"urn:oasis:names:tc:xacml:1.0:rule-combining-algorithm:first-applicable\" Version=\"1.0\"><Description>This template policy provides ability to authorize users to a given service provider(defined by SP_NAME) in the authentication flow based on the oauth scope(s) (SCOPE1, SCOPE2). Users who are granted with the given scopes will be allowed and any other user will be denied.</Description><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/sp/sp-name\" Category=\"http://wso2.org/identity/sp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">authenticate</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/identity-action/action-name\" Category=\"http://wso2.org/identity/identity-action\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Rule Effect=\"Permit\" RuleId=\"permit_by_scopes\"><Condition><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:or\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SCOPE1</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/auth-context-request-param/scope:20\" Category=\"http://wso2.org/identity/auth-context-request-param\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SCOPE2</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/auth-context-request-param/scope:20\" Category=\"http://wso2.org/identity/auth-context-request-param\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply></Apply></Condition></Rule><Rule Effect=\"Deny\" RuleId=\"deny_others\"></Rule></Policy>\n',-1234),(69,'<Policy xmlns=\"urn:oasis:names:tc:xacml:3.0:core:schema:wd-17\"  PolicyId=\"authn_scope_based_policy_template\" RuleCombiningAlgId=\"urn:oasis:names:tc:xacml:1.0:rule-combining-algorithm:first-applicable\" Version=\"1.0\"><Description>This template policy provides ability to authorize users to a given service provider(defined by SP_NAME) in the authentication flow based on the oauth scope(s) (SCOPE1, SCOPE2). Users who are granted with the given scopes will be allowed and any other user will be denied.</Description><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/sp/sp-name\" Category=\"http://wso2.org/identity/sp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">authenticate</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/identity-action/action-name\" Category=\"http://wso2.org/identity/identity-action\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Rule Effect=\"Permit\" RuleId=\"permit_by_scopes\"><Condition><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:or\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SCOPE1</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/auth-context-request-param/scope:20\" Category=\"http://wso2.org/identity/auth-context-request-param\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SCOPE2</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/auth-context-request-param/scope:20\" Category=\"http://wso2.org/identity/auth-context-request-param\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply></Apply></Condition></Rule><Rule Effect=\"Deny\" RuleId=\"deny_others\"></Rule></Policy>\n',-1234),(70,'<Policy xmlns=\"urn:oasis:names:tc:xacml:3.0:core:schema:wd-17\"  PolicyId=\"provisioning_time_based_policy_template\" RuleCombiningAlgId=\"urn:oasis:names:tc:xacml:1.0:rule-combining-algorithm:first-applicable\" Version=\"1.0\"><Description>This template policy provides ability to authorize provisioning requests initiated from a given service provider(defined by SP_NAME) to a given identity provider(defined by IDP_NAME) in the outbound provisioning flow based on the requested time. Any provisioning attempt outside the specified time range(09:00:00 to 17:00:00) will be denied.</Description><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/sp/sp-name\" Category=\"http://wso2.org/identity/sp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">IDP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/idp/idp-name\" Category=\"http://wso2.org/identity/idp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">provisioning</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/identity-action/action-name\" Category=\"http://wso2.org/identity/identity-action\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Rule Effect=\"Permit\" RuleId=\"permit_by_time\"><Condition><Apply FunctionId=\"urn:oasis:names:tc:xacml:2.0:function:time-in-range\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:time-one-and-only\"><AttributeDesignator AttributeId=\"urn:oasis:names:tc:xacml:1.0:environment:current-time\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:environment\" DataType=\"http://www.w3.org/2001/XMLSchema#time\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">09:00:00</AttributeValue><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">17:00:00</AttributeValue></Apply></Condition></Rule><Rule Effect=\"Deny\" RuleId=\"deny_others\"></Rule></Policy>',-1234),(72,'<Policy xmlns=\"urn:oasis:names:tc:xacml:3.0:core:schema:wd-17\"  PolicyId=\"provisioning_time_based_policy_template\" RuleCombiningAlgId=\"urn:oasis:names:tc:xacml:1.0:rule-combining-algorithm:first-applicable\" Version=\"1.0\"><Description>This template policy provides ability to authorize provisioning requests initiated from a given service provider(defined by SP_NAME) to a given identity provider(defined by IDP_NAME) in the outbound provisioning flow based on the requested time. Any provisioning attempt outside the specified time range(09:00:00 to 17:00:00) will be denied.</Description><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/sp/sp-name\" Category=\"http://wso2.org/identity/sp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">IDP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/idp/idp-name\" Category=\"http://wso2.org/identity/idp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">provisioning</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/identity-action/action-name\" Category=\"http://wso2.org/identity/identity-action\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Rule Effect=\"Permit\" RuleId=\"permit_by_time\"><Condition><Apply FunctionId=\"urn:oasis:names:tc:xacml:2.0:function:time-in-range\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:time-one-and-only\"><AttributeDesignator AttributeId=\"urn:oasis:names:tc:xacml:1.0:environment:current-time\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:environment\" DataType=\"http://www.w3.org/2001/XMLSchema#time\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">09:00:00</AttributeValue><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">17:00:00</AttributeValue></Apply></Condition></Rule><Rule Effect=\"Deny\" RuleId=\"deny_others\"></Rule></Policy>',-1234),(73,'<Policy xmlns=\"urn:oasis:names:tc:xacml:3.0:core:schema:wd-17\" PolicyId=\"authn_time_and_role_based_policy_template\"\n        RuleCombiningAlgId=\"urn:oasis:names:tc:xacml:1.0:rule-combining-algorithm:first-applicable\" Version=\"1.0\"><Description>This policy template provides ability to authorize users to a given service provider(defined by SP_NAME) in the authentication flow based on the Roles of the user (defined by ROLE_1 and ROLE_2) and the time of the day (eg. between 09:00:00 to 17:00:00). Users who have at least one of the given roles will be able to login within the given time. Any other requests will be denied.</Description><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/sp/sp-name\" Category=\"http://wso2.org/identity/sp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"/></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">authenticate</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/identity-action/action-name\" Category=\"http://wso2.org/identity/identity-action\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Rule Effect=\"Permit\" RuleId=\"permit_by_roles_and_time\"><Condition><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:and\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:2.0:function:time-in-range\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:time-one-and-only\"><AttributeDesignator AttributeId=\"urn:oasis:names:tc:xacml:1.0:environment:current-time\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:environment\" DataType=\"http://www.w3.org/2001/XMLSchema#time\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">09:00:00</AttributeValue><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">17:00:00</AttributeValue></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:or\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">ROLE_1</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/claims/role\" Category=\"urn:oasis:names:tc:xacml:1.0:subject-category:access-subject\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"/></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">ROLE_2</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/claims/role\" Category=\"urn:oasis:names:tc:xacml:1.0:subject-category:access-subject\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"/></Apply></Apply></Apply></Condition></Rule><Rule Effect=\"Deny\" RuleId=\"deny_others\"/></Policy>\n',-1234),(75,'<Policy xmlns=\"urn:oasis:names:tc:xacml:3.0:core:schema:wd-17\" PolicyId=\"authn_time_and_role_based_policy_template\"\n        RuleCombiningAlgId=\"urn:oasis:names:tc:xacml:1.0:rule-combining-algorithm:first-applicable\" Version=\"1.0\"><Description>This policy template provides ability to authorize users to a given service provider(defined by SP_NAME) in the authentication flow based on the Roles of the user (defined by ROLE_1 and ROLE_2) and the time of the day (eg. between 09:00:00 to 17:00:00). Users who have at least one of the given roles will be able to login within the given time. Any other requests will be denied.</Description><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/sp/sp-name\" Category=\"http://wso2.org/identity/sp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"/></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">authenticate</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/identity-action/action-name\" Category=\"http://wso2.org/identity/identity-action\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Rule Effect=\"Permit\" RuleId=\"permit_by_roles_and_time\"><Condition><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:and\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:2.0:function:time-in-range\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:time-one-and-only\"><AttributeDesignator AttributeId=\"urn:oasis:names:tc:xacml:1.0:environment:current-time\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:environment\" DataType=\"http://www.w3.org/2001/XMLSchema#time\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">09:00:00</AttributeValue><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">17:00:00</AttributeValue></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:or\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">ROLE_1</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/claims/role\" Category=\"urn:oasis:names:tc:xacml:1.0:subject-category:access-subject\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"/></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">ROLE_2</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/claims/role\" Category=\"urn:oasis:names:tc:xacml:1.0:subject-category:access-subject\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"/></Apply></Apply></Apply></Condition></Rule><Rule Effect=\"Deny\" RuleId=\"deny_others\"/></Policy>\n',-1234),(76,'<Policy xmlns=\"urn:oasis:names:tc:xacml:3.0:core:schema:wd-17\"  PolicyId=\"authn_time_and_user_claim_based_policy_template\" RuleCombiningAlgId=\"urn:oasis:names:tc:xacml:1.0:rule-combining-algorithm:first-applicable\" Version=\"1.0\"><Description>This template policy provides ability to authorize users to a given service provider(defined by SP_NAME) in the authentication flow based on the claim values of the user (CLAIM_URI_1=CLAIM_VALUE_1 and CLAIM_URI_2=CLAIM_VALUE_2) and the time of the day (eg. between 09:00:00 to 17:00:00). Users with the given claim values and who are logged in within the given time range will be allowed and any other users will be denied.</Description><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/sp/sp-name\" Category=\"http://wso2.org/identity/sp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">authenticate</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/identity-action/action-name\" Category=\"http://wso2.org/identity/identity-action\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Rule Effect=\"Permit\" RuleId=\"permit_by_claims_and_time\"><Condition><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:and\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:2.0:function:time-in-range\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:time-one-and-only\"><AttributeDesignator AttributeId=\"urn:oasis:names:tc:xacml:1.0:environment:current-time\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:environment\" DataType=\"http://www.w3.org/2001/XMLSchema#time\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">09:00:00</AttributeValue><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">17:00:00</AttributeValue></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-one-and-only\"><AttributeDesignator AttributeId=\"CLAIM_URI_1\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:resource\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">CLAIM_VALUE_1</AttributeValue></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-one-and-only\"><AttributeDesignator AttributeId=\"CLAIM_URI_2\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:resource\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">CLAIM_VALUE_2</AttributeValue></Apply></Apply></Condition></Rule><Rule Effect=\"Deny\" RuleId=\"deny_others\"></Rule></Policy>\n',-1234),(78,'<Policy xmlns=\"urn:oasis:names:tc:xacml:3.0:core:schema:wd-17\"  PolicyId=\"authn_time_and_user_claim_based_policy_template\" RuleCombiningAlgId=\"urn:oasis:names:tc:xacml:1.0:rule-combining-algorithm:first-applicable\" Version=\"1.0\"><Description>This template policy provides ability to authorize users to a given service provider(defined by SP_NAME) in the authentication flow based on the claim values of the user (CLAIM_URI_1=CLAIM_VALUE_1 and CLAIM_URI_2=CLAIM_VALUE_2) and the time of the day (eg. between 09:00:00 to 17:00:00). Users with the given claim values and who are logged in within the given time range will be allowed and any other users will be denied.</Description><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/sp/sp-name\" Category=\"http://wso2.org/identity/sp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">authenticate</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/identity-action/action-name\" Category=\"http://wso2.org/identity/identity-action\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Rule Effect=\"Permit\" RuleId=\"permit_by_claims_and_time\"><Condition><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:and\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:2.0:function:time-in-range\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:time-one-and-only\"><AttributeDesignator AttributeId=\"urn:oasis:names:tc:xacml:1.0:environment:current-time\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:environment\" DataType=\"http://www.w3.org/2001/XMLSchema#time\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">09:00:00</AttributeValue><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">17:00:00</AttributeValue></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-one-and-only\"><AttributeDesignator AttributeId=\"CLAIM_URI_1\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:resource\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">CLAIM_VALUE_1</AttributeValue></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-one-and-only\"><AttributeDesignator AttributeId=\"CLAIM_URI_2\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:resource\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">CLAIM_VALUE_2</AttributeValue></Apply></Apply></Condition></Rule><Rule Effect=\"Deny\" RuleId=\"deny_others\"></Rule></Policy>\n',-1234),(79,'<Policy xmlns=\"urn:oasis:names:tc:xacml:3.0:core:schema:wd-17\"  PolicyId=\"provisioning_time_and_role_based_policy_template\" RuleCombiningAlgId=\"urn:oasis:names:tc:xacml:1.0:rule-combining-algorithm:first-applicable\" Version=\"1.0\"><Description>This template policy provides ability to authorize provisioning requests initiated from a given service provider(defined by SP_NAME) to a given identity provider(defined by IDP_NAME) in the outbound provisioning flow based on the roles of the user (ROLE_1, ROLE_2) and time of the day (eg. between 09:00:00 to 17:00:00). Provisioning attempts to the users with given role(s) between the given time will be allowed and all others will be denied.</Description><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/sp/sp-name\" Category=\"http://wso2.org/identity/sp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">IDP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/idp/idp-name\" Category=\"http://wso2.org/identity/idp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">provisioning</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/identity-action/action-name\" Category=\"http://wso2.org/identity/identity-action\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Rule Effect=\"Permit\" RuleId=\"permit_by_role_and_time_when_create\"><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">POST</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/provisioning/provision-operation\" Category=\"http://wso2.org/identity/provisioning\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Condition><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:and\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:2.0:function:time-in-range\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:time-one-and-only\"><AttributeDesignator AttributeId=\"urn:oasis:names:tc:xacml:1.0:environment:current-time\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:environment\" DataType=\"http://www.w3.org/2001/XMLSchema#time\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">09:00:00</AttributeValue><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">17:00:00</AttributeValue></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:or\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">ROLE_1</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/provisioning/claim-group\" Category=\"http://wso2.org/identity/provisioning\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">ROLE_2</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/provisioning/claim-group\" Category=\"http://wso2.org/identity/provisioning\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply></Apply></Apply></Condition></Rule><Rule Effect=\"Permit\" RuleId=\"permit_by_role_and_time_when_update\"><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">PUT</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/provisioning/provision-operation\" Category=\"http://wso2.org/identity/provisioning\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Condition><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:and\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:2.0:function:time-in-range\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:time-one-and-only\"><AttributeDesignator AttributeId=\"urn:oasis:names:tc:xacml:1.0:environment:current-time\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:environment\" DataType=\"http://www.w3.org/2001/XMLSchema#time\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">09:00:00</AttributeValue><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">17:00:00</AttributeValue></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:or\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">ROLE_1</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/claims/role\" Category=\"http://wso2.org/identity/user\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">ROLE_2</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/claims/role\" Category=\"http://wso2.org/identity/user\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply></Apply></Apply></Condition></Rule><Rule Effect=\"Deny\" RuleId=\"deny_others\"></Rule></Policy>\n',-1234),(81,'<Policy xmlns=\"urn:oasis:names:tc:xacml:3.0:core:schema:wd-17\"  PolicyId=\"provisioning_time_and_role_based_policy_template\" RuleCombiningAlgId=\"urn:oasis:names:tc:xacml:1.0:rule-combining-algorithm:first-applicable\" Version=\"1.0\"><Description>This template policy provides ability to authorize provisioning requests initiated from a given service provider(defined by SP_NAME) to a given identity provider(defined by IDP_NAME) in the outbound provisioning flow based on the roles of the user (ROLE_1, ROLE_2) and time of the day (eg. between 09:00:00 to 17:00:00). Provisioning attempts to the users with given role(s) between the given time will be allowed and all others will be denied.</Description><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/sp/sp-name\" Category=\"http://wso2.org/identity/sp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">IDP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/idp/idp-name\" Category=\"http://wso2.org/identity/idp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">provisioning</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/identity-action/action-name\" Category=\"http://wso2.org/identity/identity-action\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Rule Effect=\"Permit\" RuleId=\"permit_by_role_and_time_when_create\"><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">POST</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/provisioning/provision-operation\" Category=\"http://wso2.org/identity/provisioning\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Condition><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:and\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:2.0:function:time-in-range\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:time-one-and-only\"><AttributeDesignator AttributeId=\"urn:oasis:names:tc:xacml:1.0:environment:current-time\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:environment\" DataType=\"http://www.w3.org/2001/XMLSchema#time\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">09:00:00</AttributeValue><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">17:00:00</AttributeValue></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:or\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">ROLE_1</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/provisioning/claim-group\" Category=\"http://wso2.org/identity/provisioning\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">ROLE_2</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/provisioning/claim-group\" Category=\"http://wso2.org/identity/provisioning\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply></Apply></Apply></Condition></Rule><Rule Effect=\"Permit\" RuleId=\"permit_by_role_and_time_when_update\"><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">PUT</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/provisioning/provision-operation\" Category=\"http://wso2.org/identity/provisioning\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Condition><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:and\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:2.0:function:time-in-range\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:time-one-and-only\"><AttributeDesignator AttributeId=\"urn:oasis:names:tc:xacml:1.0:environment:current-time\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:environment\" DataType=\"http://www.w3.org/2001/XMLSchema#time\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">09:00:00</AttributeValue><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">17:00:00</AttributeValue></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:or\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">ROLE_1</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/claims/role\" Category=\"http://wso2.org/identity/user\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-is-in\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">ROLE_2</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/claims/role\" Category=\"http://wso2.org/identity/user\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply></Apply></Apply></Condition></Rule><Rule Effect=\"Deny\" RuleId=\"deny_others\"></Rule></Policy>\n',-1234),(82,'<Policy xmlns=\"urn:oasis:names:tc:xacml:3.0:core:schema:wd-17\"  PolicyId=\"provisioning_time_and_user_claim_based_policy_template\" RuleCombiningAlgId=\"urn:oasis:names:tc:xacml:1.0:rule-combining-algorithm:first-applicable\" Version=\"1.0\"><Description>This template policy provides ability to authorize provisioning requests initiated from a given service provider(defined by SP_NAME) to a given identity provider(defined by IDP_NAME) in the outbound provisioning flow based on the claim values of the user (CLAIM_URI_1=CLAIM_VALUE_1 and CLAIM_URI_2=CLAIM_VALUE_2) and time of the day (eg. between 09:00:00 to 17:00:00). Provisioning attempts to the users with the given claim values between the given time will be allowed and all others will be denied.</Description><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/sp/sp-name\" Category=\"http://wso2.org/identity/sp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">IDP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/idp/idp-name\" Category=\"http://wso2.org/identity/idp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">provisioning</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/identity-action/action-name\" Category=\"http://wso2.org/identity/identity-action\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Rule Effect=\"Permit\" RuleId=\"permit_by_claims_and_time\"><Condition><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:and\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:2.0:function:time-in-range\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:time-one-and-only\"><AttributeDesignator AttributeId=\"urn:oasis:names:tc:xacml:1.0:environment:current-time\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:environment\" DataType=\"http://www.w3.org/2001/XMLSchema#time\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">09:00:00</AttributeValue><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">17:00:00</AttributeValue></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:or\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-one-and-only\"><AttributeDesignator AttributeId=\"CLAIM_URI_1\" Category=\"http://wso2.org/identity/user\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">CLAIM_VALUE_1</AttributeValue></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-one-and-only\"><AttributeDesignator AttributeId=\"CLAIM_URI_1\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:resource\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">CLAIM_VALUE_1</AttributeValue></Apply></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:or\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-one-and-only\"><AttributeDesignator AttributeId=\"CLAIM_URI_2\" Category=\"http://wso2.org/identity/user\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">CLAIM_VALUE_2</AttributeValue></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-one-and-only\"><AttributeDesignator AttributeId=\"CLAIM_URI_2\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:resource\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">CLAIM_VALUE_2</AttributeValue></Apply></Apply></Apply></Condition></Rule><Rule Effect=\"Deny\" RuleId=\"deny_others\"></Rule></Policy>\n',-1234),(84,'<Policy xmlns=\"urn:oasis:names:tc:xacml:3.0:core:schema:wd-17\"  PolicyId=\"provisioning_time_and_user_claim_based_policy_template\" RuleCombiningAlgId=\"urn:oasis:names:tc:xacml:1.0:rule-combining-algorithm:first-applicable\" Version=\"1.0\"><Description>This template policy provides ability to authorize provisioning requests initiated from a given service provider(defined by SP_NAME) to a given identity provider(defined by IDP_NAME) in the outbound provisioning flow based on the claim values of the user (CLAIM_URI_1=CLAIM_VALUE_1 and CLAIM_URI_2=CLAIM_VALUE_2) and time of the day (eg. between 09:00:00 to 17:00:00). Provisioning attempts to the users with the given claim values between the given time will be allowed and all others will be denied.</Description><Target><AnyOf><AllOf><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">SP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/sp/sp-name\" Category=\"http://wso2.org/identity/sp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">IDP_NAME</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/idp/idp-name\" Category=\"http://wso2.org/identity/idp\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match><Match MatchId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">provisioning</AttributeValue><AttributeDesignator AttributeId=\"http://wso2.org/identity/identity-action/action-name\" Category=\"http://wso2.org/identity/identity-action\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Match></AllOf></AnyOf></Target><Rule Effect=\"Permit\" RuleId=\"permit_by_claims_and_time\"><Condition><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:and\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:2.0:function:time-in-range\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:time-one-and-only\"><AttributeDesignator AttributeId=\"urn:oasis:names:tc:xacml:1.0:environment:current-time\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:environment\" DataType=\"http://www.w3.org/2001/XMLSchema#time\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">09:00:00</AttributeValue><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#time\">17:00:00</AttributeValue></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:or\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-one-and-only\"><AttributeDesignator AttributeId=\"CLAIM_URI_1\" Category=\"http://wso2.org/identity/user\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">CLAIM_VALUE_1</AttributeValue></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-one-and-only\"><AttributeDesignator AttributeId=\"CLAIM_URI_1\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:resource\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">CLAIM_VALUE_1</AttributeValue></Apply></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:or\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-one-and-only\"><AttributeDesignator AttributeId=\"CLAIM_URI_2\" Category=\"http://wso2.org/identity/user\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">CLAIM_VALUE_2</AttributeValue></Apply><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-equal\"><Apply FunctionId=\"urn:oasis:names:tc:xacml:1.0:function:string-one-and-only\"><AttributeDesignator AttributeId=\"CLAIM_URI_2\" Category=\"urn:oasis:names:tc:xacml:3.0:attribute-category:resource\" DataType=\"http://www.w3.org/2001/XMLSchema#string\" MustBePresent=\"true\"></AttributeDesignator></Apply><AttributeValue DataType=\"http://www.w3.org/2001/XMLSchema#string\">CLAIM_VALUE_2</AttributeValue></Apply></Apply></Apply></Condition></Rule><Rule Effect=\"Deny\" RuleId=\"deny_others\"></Rule></Policy>\n',-1234),(85,'City where you were born ?',-1234),(86,'Father\'s middle name ?',-1234),(87,'Favorite food ?',-1234),(88,'Favorite vacation location ?',-1234),(89,'Model of your first car ?',-1234),(90,'Name of the hospital where you were born ?',-1234),(91,'Name of your first pet ?',-1234),(92,'Favorite sport ?',-1234),(93,'GIF89a\0\0Ä\0\0ˇˇˇ\0\0\0!˘\0\0\0\0,\0\0\0\0\0\0@ÑQ\0;',-1234),(94,'âPNG\r\n\Z\n\0\0\0\rIHDR\0\0±\0\0\0F\0\0\0B0™§\0\0\0sBIT|dà\0\0\0	pHYs\0\0\r◊\0\0\r◊B(õx\0\0\0tEXtSoftware\0www.inkscape.orgõÓ<\Z\0\0 \0IDATxúÌΩ€ñÎ(≥&˙ …ŒYµ÷Ë1˙r?@_˜[Ù˚?IÔøf⁄±/ B“YsVm«ô∂%ÑÇ¯à#Ù˛oz”õﬁÙ¶ˇﬂìÎzQ˘}/8P.´W\n3B/n›6πøÂ.oz”õﬁÙß˛tÛÎ◊¸¬1Ñó◊{ã¨µ0÷%†\"\0\"¡C‰ÎœHd‡Ü°† ~^PwKÓ-ÜΩÈMoz”mä\"~|yΩ}7@˜Äò1∆9\0Ç„∑<\0à0¶iY∑sI #\0~z›}›ˇ¸xY]oz”õﬁÙØ%ÍÄ…ºæﬁsÑo÷âkA∂Éè1d\0±ﬂ{œ5MÂ[ˇﬂ¢ø,ùπˇ˝ˇ|µaoz”õﬁÙÔß+ÄÎ7.ˇ„ ﬂ$à3‡2Ñp˝ûõ<E©#O√Äì N7 Ôì˚ÂõﬁÙ¶7˝ÎH-&à|OΩd{|F¬ıry}Â/¢ÀuƒH?ŒgXæ>’ﬂ øÈMoz”õ~%±=·ˇΩF\\«Ô±yΩíXˇ˘º`¬\02èÎ8ﬂíÿÉTªë˛J\"c“¢E¯W7ÂM/$Ä~áJcå„Øn»oEˇIå›ˇ˘ºæƒÀÔ§üó+‚0‡l–∏˚eﬁâdD\0!∆\0ù¿·óMö1&Ê—Ô»¶‡\0kÄ≥Ï\rf#åúÆÈ,0òØ3(≤ºL!‚‘Yò¯≈ïñÌ·Öy?&ÑD–YÇ„	Ú™∞B;$C¿7Ωoc;0 ¿@àê¯˜ª2¿ƒi<Õk\0¶<œpwËI∆xNcÒ‰ææ¿\"„a1FFã/æ€!∞AêÉò#tpàÄºh<ÿ.yç«◊≈*	Óèõ˙Uı≤=„??/ˇÿ‡ﬂÀ8ÇN\'$ê;ËÓÔ~Zv\'åA‡?\'å,1È4ÙùCÁF _0Ù=J◊òÄ\0ÃÛƒ‹Va‡ÍÅ›qΩæ™◊ÄÏ1;$7¿30]<X“ƒ…‚LÙÙ2NlèœK\0ﬂ1X<ÄèÛ	6æ¿8l¸ºx∏æ√â[u›\"q¶ê˙iäê¥ÄËùA◊\rË≠Ä‚¥\Z˙ﬂ%\0ç1˝\0	–oåÅ(	¿ÄÙ:/¯Û÷¯b`Ãòú±\Zßg«óÌÑpù8/åÿ:¸—9?	¸¶√œQÔXhy\0Á”ÄÓ f”}ç!|ÿ¬/∫˝çQLÏê%∞Ø◊ı+ÈÛrÖ˝8√Ú}∂ºoïƒ™∑“=¡4ç §	≠ëﬁ\0c@åÓ<¸-*;‡ÅXÒœ\0|tk)+4í\n∑+Kº§ÎLæ÷7◊ﬁf`ªD0&∆œ5#”à”«\0ÑÁ§1/Ñ(CßÜ÷åúëû„zq~Ùœ35\"Éhz\\&FGpﬂ„dÌóºìjö\"0÷1(˙(Èﬁ«iÑ=pX>ÎÇè–|´Í„Kµê—ﬂDÎÖRl∆ì1≠iúöÉÒ5ÒÉã$\"¿Ùò∏^◊Å®!¯nÄ}2Ü)¬ ƒ\0·«©á5k#<àB¯yπ‚Û:‚øê/ƒ.â9EƒÄ0:|tœœëE›_ÆaøﬁØ÷M∂√œ)˛„Tà{Ù◊Âäˇ∫ì∑}üM¨B\'…ˇl7¿_¶r¨≥ôÒ#©ËîÄÓõQL’ÉqÉKïˆäå≈b§)#AÑ~Ü˘Ù‡íZí“,≠Î∏„πfïé ®OÔŒu^ûÏ+2ëÜS‚qw2uD}è‡\'\r\0=∆‘»80Ÿ$Ò^≥$ßåÿOÅpt%™üôK›.è/\0∞’˚ã|\"#π#\nñ’+≠;IHaC»çº°änÏ\"§«r]?˝<îzõ$.”·wvY∞qòÇ`∫·3>E¡ôÃ›™ùö|V°ûO=L!õ I†Ôå„òÃˆ5ëÖó¿∏YÏ˘…„ˇNH„Àà˛i;≤–7	b/∞âyv·˜ıB|îDﬂÿ{mà]ûÏ9É	àÊï,A\'°ÄÚäüå¡[ì∂Ã´·Ø≠~oKí∏⁄2ùI«Æ!©\n®&N«Í6≈\\?∫ıäÿG\0≤f`>&Êµgw£lü\Z}ºK\0„8a8êWö∆uŸs…nH`Å#B@Íüõã}7@$ïçxéüGóÎà3”ª!Ä$˜J~¶CòfâŒê¡üÉI„éíG†ÁﬁÅk˚ï¶$0®∆Æ‘\ZÉ;\0Mê∆Wl YJs‚ö«Å.‹ßÚmy‡áKı‘C…«‘7◊Êö(©Ó]ï¢.éB,Ô˛M”Ù¥¥ØÛÎûπ¨S\"–ﬂ(KnHíkcSåà7ûÁ2¶Ò’πŒu∞»Ç(¯•v≥_A‰N¯¸¸ùb¿^C„4a¯8Ånƒ∑}Y+ÇƒXH1≈”JS∞÷‚èè\0îW1/A(b”P&åÿøﬁ.&|∆‹ÓV⁄2¿Ÿ$gùT,…ûa6f¢ —≤Æ˙xK£2∞Í16Iáye|øà  s±zè{ÆU|=cjíﬁ˚<ﬁè®Ø¸ØÛp∑˙í,·ø˛¯1≤≠O9)Å»§q*ÄH\0b≥2—Öó4ﬂi^-ìÃíŸñ™Q•ÚÕ{úL\nÛTpd$)kãDÄOü4ı<\0óùk∆∞∂ªë±Äu˛∫<FS\0∫\'¯ÑJë˙¨GT˙öoóı¯|“u|ÚS’wû–ùœ¶œÛj˙™$6EÄøI•6ÙCZLV]A\Zﬂ>ƒ¯Ωéx£7òŒólb\n:ÈxÈW}Íƒ;0˙ÄÎ4Õ†ßıT◊Í±?œ=Ãã£ÿ\"gõDnwﬂ®d∆òlÁJ>ı;\0¶xiª´ílóú5<√òà·‘wò¸˝+CcL˙{E\Zí“fc‰&0±IÂ…»M–sîºNøBŒ:tùÅAÄ‹9¢>/ñ—«¸qZéØ-2Ùòvèi•…¨ó≈,·Î˘Œ$©;H\Z#ó∏¥[	÷R|KA\0âè©±&û«WdÉ´èê…„œìCﬂ˜ß˚áDipì8∂P©˛Ó-w´,ôØ´ı¨s8uÑpw]˜¥Ì˙JΩ‰z\\.k\'•Ø“y8•ÖP∏Ó6pËòN?4¶°À4b¯8A§±ß’âEíô∫‡R†–s ‡‘wËúM„’J›†Î]rÖ∂lÙw3Ø{(00J∂K!y´uç⁄•€põóòÌ)7Ë{∫ I}¶≤`Í—wKGì›˚Yá¡XHº<&äô‰~n+f\n{Câ#íÀåÎÄè/G˜ıŸu]èﬁ\0F\"D“ƒ†;üÕ:Ç˝„b ò]Å‡∫.Ω_Á–I\\KK¨ä§•RDÛ[%≥ZZcŒ~Æ≥7…Âò«∆≠«◊=Ô∫UKﬁS>µ√‚Á8O˛¿ÑﬁÓëa¨uzõÏî·äá¨H∂CÉò=ZRÕpx	ÁDftn\0‘œ_a}?`pî∆Wº˛c]—ïÇ–]ﬁ≈è–ügòp¡-âÑÄ3¯œÁÂu!8y9™ß‘âµ≠\0\0ZiØ®ù(8UEEè)Ft÷¢Ô?íTÍbDÊ4©Ÿ√êø≠Lø≥ÌÅ”ÍT%è¡n«xm”6æí¥ª,Ec  ÙV@÷@x`˛8ù@aÇpÿe.{m€„2z\0sˇ^ÓU€0è	ÑSﬂ√ˆuTÎÓ™÷†wN\rÔ,è1M%\\¸àŒ9úœãa)på\"‡Î]gã6@«±T˙ïÃ‘Ó¢†≈πº`Æ<HVÔÈ¯ qè-@÷j∆ªUIèâsõ\r{X€!fõœ’3~t	†‚Aº‹«˘\'∆áﬂÉÿ?Ø\"Û\"Á˙@∆rU˜}úˆ√91¬I;¬x~n|ﬂ\"ä}Eù≤˝˝Ut\Zzê‹E‡O¸q>·?ﬂ`õÛAÖÑß’âÂ∫F3fñ“ä.UÕFXÑ8!f®“\\≠Z˙∂öÌªm<òÿzÕƒŸU9è¸¡<¶˙ÎªÇ+ózl€DÍìõÌñÿM\0$¢w¶Ï„∏É≥˝˛4ìÒ$õGà⁄È—˚«Ç DAØb» 0açﬂàˇ≤∆¡9ÇÖ@xZ«πnƒ¿Ÿ÷D<:Á¬Ñv\0@ﬂu`ÒKõWy2î[l yår’ûSé#$i‚Ïí√∆Ω€NŸ¨nT˚ÿ‚yPuÌA}ã.ëY√¿1¢w?C*ƒ—#t:+∑ˇ’Îc~Ju§Öÿ+$Éœ…„œùµFt›ÄÈÜ+æµCÁ–ëÄ√uÌî¯`åÂw©µÓGâå≈‰„K€‘@˝ï¬ß”PÏ˙Ø¢q\Zq˛¿;ŒEœ;g„xÒF¨$.`∂)Äôl#â¯—w∏Nº∞âï1íÛ«`x^gí’óÂIùìu¨ì2ç…ÈÌÒ*n´jÉº™∆å⁄^∞ŸÖ;Ã∂ı3ƒàŸ0\'H⁄Œ!§A⁄YÇ3ÑãèÊdGëà¡⁄ÕlªØS\0≤ÏCYh¨Œo_∂˘XÃË]réX]—9ø√;ÁRº¬ºP=»^tipÆ°@å 8Y‡¢h≥Qñà–QÂ˛*Ûÿ+Í√*4B(©îu!S;\\CrRgèS_*DÆï*µ˚)Éﬁœ∞æÓhlQSFê§kÈ“pÑ1≥\'¶¿`&ÎÍ˚ﬁ°∑Ñãüw‚Ωé?Ü˛·ÿ=2ﬁ?h¿€!âÏ˙]ßgÅiÁ\\ﬂ\rË¡J‹VÖ\Záâ	\'g¡˛A…·;PÏYt$7o´Ú≤Œ%ûÚÖgÏ%b2ˆÂë±?n/Õì6ˇê~\'√ˇ^d≤W[1CÄP¿«©√–hPù±…ò∏¡úãj®·ûó±\'\"…!HÃà0ë2 Z‘ﬁcì$’Ql3  Ã“∞øqŸ™˛µQ:¢Î,|å \0ûŒŒß.®f‡‰,Ç§rÜóp7É+ïØ§ïƒÍY∑˙µnÛa’fªåQiSÎ!Çs6©Úæz}iYDIA∂ùuƒÕU«aõÿ„‘;LÅ°J#-oåAg	TçØ¢	†y\\H%u≈T!´Ë87â%ç=}éS_Ò`<î˚ïáØ⁄-KÈç(ÕùÕEqº-±Ã˜ \0¬}7‡3Éÿe\Z·N>NyƒòÅ¡u∞v¿e!¬¯÷›ﬁÄ¥g’ΩÆ˚˜Ì.:m£Ê\'\"ú˙Œ ec	kï°ò>„Ë—˜˝√\0]íÿ≥ı~G{æZg\Zo\'|æƒÇÏ€≈≤â·+O¢6L√ 11[\Z%&\"d ÏSúNV°®	≈¬0Œ%U‘F„ä˝9ñ“W≈≥°±≈Ÿ¸±8w‰µπ:L\0*õö^€eÃX2 Arn‡ñ1Uı=:#àë`¨Å3jS(œ·LÍ›»ëÜÉ9∞æ∂‡‘Ü‘ÌJÔë`≠ÅÅÄAàë\rµ¥Í‘∫NÜÕÅP.◊©™°EQJc\"2#∆P;÷`W:<jê1ÜŒÄ≈Çë°∆%Oó˚8G.™f!7N«t»‡Ulª‹4àWÌdÁºj“’‚ñ2mºÍgãí%∏™\\gfÔŸ©™î(´§±<Æ‡™û™z+CD∆zg!◊Ô¬{8k–˜¶qD#\rË1˜”-∫«∂sÍ8J„kº·¢}Tü¯}7 pƒ…πTg∏Æ=9…Ä…aä_˘÷;¢á’f*≠øöûµâ…·èê˜“ù _L˝ÂËı˝Y`_%â≠Çòπ*ÈÀ‰?ï ∆&ë˜Œ9Xb8]™Íc··0˘ê<…$&˝z\ry÷ï4Pî2V®Õã9y≥h˚t≤◊œYæﬂ	dA÷iÅ@Iù·ÃR}Sl&XØ¢iUÔjPï‘Ëæsâûac5ÑaåEê≈>≈Äﬁ¨ñõ6SÛª≠ﬂXíXò0ôc\0ﬁÏ‘π≠Œˆ\0{HEZ&®Dò\0&rXTcLé“o˚º°\Zê…0,FÔ·¨Cä∫ã≥AX\0êA$ó∆†µp61tmìôACy\\9õŒEN!üm?H\0¶—h:é}^∫9VQî∏‹îªƒ4~;3£éµ Ÿ®_-L\"RÃŸák§±—Áxª8nŒÖTé—;FtB∏N#Ã˘{Áfä∑VÒC?¿…X4C7‡Áà›®Ô48îºWÊT„`0Fh’¢DIï}¯4è∑ÁY˙JΩØnœg`úm˜µ\0p∞Œ!Ñc)>	6÷ZQôıÿ-é1êù&=f´&Y≠Ü1íÅ´í∫Tç®d=ôƒ BƒDg\\Z!íÅÈ{g(C‹*ÂHæøf]Ô3P÷©Ç%f#¿ ∂÷TS~ÏuÉ»úyc´åè	D[g¬£¨›Sk‚Éæ`:1¬Êï% ßàŒÕˆ±√◊…≤Î“-HåEyä\0ÄŸ.Øå9ny#TeR¢bôØAFbà+)OÀXc+`n_aVhaÚÇ…¡GÜ…„(-W≈Xå!IbŒ92Ã0*˝d–“g§Ò¨IuË≥¢@ÕUÿ˙\n´~KsÓ‚ÁM]^êÏ∞é\Zaà™|å\råHÈ‘Œny/Ò„Bıﬂˆ´.˙ƒ{úª?£3„ÛÛä?œß/tãnpcáÂy€¸~¥æx˝\\Øƒlá „¿;ﬁ≥ßæ8√\rÄ’–ì(ˆÕô¶	‚:ú∫&˙ß“ç•E”¢µK@BPíúà¢ˇíËv∑$&@qÊ(ùß-3ÛßÕR4Ÿ\'‰:åìœÍ*ãæÔ‡#cÙÆs¸–u=à\0qö\0c0ÿ•áíäÙ*ÂŒ\0P…âj5†,>ÊÔ◊Î°XÅÿ÷y 1é6£B˝c≥èÌÒ{ìÊs˘#$#z∂+˙â—YSêtW@2Àd¥[˜¨„ûE∂À◊Z’≠áõ\'óîQK∆ÇE¶∞bÍã&\Zy€/c„:í°~Læ∆÷:8c¡\\¶ÄŒ%nÓ«ÄÆs0∆ ∆ï\'Có$YµΩªiñÃ¨M\0R{Ÿ\"k\"r sÄ±ZLï6œRüìÏ0≤Bîä>√ﬁ8òµ\"u›Å”P–ˆ÷√ø~gB}@¬àÛÈåüü)ﬂ_◊	únß6ª≈K\"s≥æ√2\" Õ≠ßª<å”°ùò»†£«•∞{⁄˚,=+â}¶˙‡·CJ—’ª[è˚u]…Á û˘]íÏ›6±Ö⁄AøTÁ≥mj·ôHcã¢B`:◊C»%ﬂ!;`™<§»Å66≠ñ+bôÉó[\ny•¨*Õˆav}s<2ﬁÁHb[ïi\n◊?9ß∂:l«\0\n\0äàd≤D„£ÅmƒÄ⁄~§æ7DÚrÖÁ\"’	Y¯√M∆≤∂·âW3È§Ê#Ñ*˘‰8ıŒ©î6Œ/Â„A‘UMæ÷9Bá1§#®AßÒ)àH°D≤≤≠≥»îN¢j\"\nä[|R≈U˝¨j¬Ωvì®K:˝º(É˘Õa~«ß%$UwØÌ‘∂TÁµﬁ\Z» 7]q:„ÁÂ∆Áqr]ä„€°[∂ùÀuƒ«ÈØÄÌÒy\r7‡7”Uvg¸¸˘Û∏`¶SﬂÌ∫jﬂ§œ˜,=m∂¥U/¢:EW◊ıpÜ`≥vM¬É†ˆçtw∆]ÑÍè˙∑ÇVbZ\n^ÈúAÑÀãä|ò–üN‡»J´„iÚK¶û®AØ>ßIv’·¢∆ÏOçSG©g`6@# ÏÖV∑iQ≈Œ±#pî&+˛^v€\nHD›Y#¨u∞®)7Ì\"Ceˇ©ˆºñÚë`$yÜ˘∞~ÇöØ3”ƒ6A*f€›æΩ∆Zƒ83”ç{ÍÅ˙XïÖÜßÄæÔAY1-d·ßqyΩK#™79Ω‡¨e0&ilu,≈™›y&∑ãÍ≥∂ΩÈs.<\\≠¡™6\0mf˘üëÂ˘#¿⁄ì»èÜú]>Lv¿`éÒoQd…	ñÈf·=ƒ—√ê…ªP∑ÀZGØç´˙ïƒ¡£ÔÜÂ÷CﬂDﬁOãú¶\njÜ≤…Ënh|∑$÷Í˙%´4,K†  UΩÙXíÑƒí$ëÈØß°pπNiU´ºöËÆ˙ÆÁ8{éM»é˘∆\n:åÆ;¬ƒ&`lÄ%$©AxC\ZS’—¢m˜»]QŒ•ïÃ˙ö\rLYû[µè≤Ÿ‰,Ì≥£G˚©å1¶ñÏ¶!Ü5Å≈ß¶YÌÎEñb´Y8Y†= ‰‡≥˜!VÁì\Z±gÅﬂH}æêı±àŸñW‹’O8= ◊lRÜ≠öÇh`){|ì∆Î\"L’—⁄˜î5ÛWï†&∞’qOı£T“W{¨S	Ø∫ÂÁj«P+°ë`Ê†{•©Jq∞⁄≈B{å#£≥…—√èqaáål€«¢˜p∂É?ê÷&Ôa˚S∏#AÀ]ä¯√	]ˆÌv∆XúúÔ¡ﬂC_M‘˚ıZCﬂ“¶[4MÍû¥6mh\\íõ?iO{ÜˆN¨\'@˘;@2}A,â—®zé9©Å¨OŸ∆8OpÆÓ°eıÄ∂W•-p’Iûôè2ê¡Õn¯ZﬂM`ÿ\0Ã≈Ô™/|Ã.ÿÕÒ∫*á&Cà4qmÌÁN{ÙÎZåi/%/.!¢∑ó@ñæ3\",BÊ¯´∫®3ÅÏç\r`ùA»€Ø§¨.Â{G]≠UÃ‘êAÁﬁ«m¿⁄í™cÅÊ–¬∂-åL=V!g\"≥„gâÿ }wŸVi’#êÊ\\ÑAÊ∏D–”Ï`§*Aë5µm◊g,ﬁêU°Ö·õÁÄﬁ:é≠ñ¬:õ≤–¥}U‘úrdÿ;¶ß¢«‡NX~éW¸◊«	<≠CÑa]∑N\nPQ∆_wƒíY€rr^¯ß·ÑÀ∏nó!ÉsÔûsÊ®®Z≥æîæRØ}A2‰WPà°ÚdÓ∫ŒtI˝á/x;ﬁ†á\0◊ﬁ[%˛’1¨\' !pˆåã<€´\"!ÁòãeÂ_3t\"Ä*{C\rDVRRﬂ»K∆°´Å‡õÎrù[R 6@4ÂeŸæ(ŸKçÊsÕ£ßÏÕ˘\Z<ıÌ=woµL12ú!|˙∞(ø∏/>{û-∫a¨ÎgZÄœ1J-»¥6»ÙõAd¿dcÚ$\"8k`ëºu,*ÿÆ_Gö%±ˆúé°…W«Umòµ¬R◊E\0…¢å2µ}i_‰d%~Œ•® V€	∑ûGái˚©†VéÂ˘%*Ÿ…ra†RòU’gΩ∫ƒ∏j Pí‘m8\"	#˛Œ¯Î:&õ“Ä)90úÌæ‡¢m»‡‰ÃÉnﬁÀ~ú\\¶\0Ê\"¬–˜…¯Öô-~\'b-*ﬂﬂâº˜E˝hå¡–ü‡(%ˆÊÔﬂvøcGûåŸ´¨:Îrò\'Gí¬ŒZl	%Pqlû! t¶_¶˚QÓ´†WµCÔ£+hÉ$·ÔI…	ò7\0hUGÛ˚^@Q¢jı≠vîb˜†j´ç\Z\0Ô¥«¿-∆\"¯\r	lqø¥ÈΩê[µ£Ì€˘>	pî!ª-ÓXΩ∞ôs˛¥˘ò`™¡kUæë`6ÓE\0»ÄÆH\Z¿Ã§ΩOπ\"â∫r1%{xÍ\r&L1&!-¿∂\nÿÁô˘´óß™µÀ\'œ¡˚5Ëhªû˘=4 •eå$ß&©V‚⁄˚]®EØø„t¡è>ÂØ;b<2˙„¨ıá$∏qüÌÎ‡ŒA–ÉD œ‘≥WΩ¨ÁˇÔPoOÑ±Êuø≈»¯Ã™^k-ÜÓGâ_Ÿ≈}¶ß“N-v˜≠Vx*ä’@∆,Iµ%IÂCZ5s∂#®]IM!áLÛó2ﬁGÍ√\0qTnuﬂˆz^~Ù>ÌÁ÷}èüGÄJÖ∏HÛ94ÿS∂€÷ﬁ∑‘«Åk´‹m\0ºé®è≥_‹s¯‚™~CÄ		®¨ È%†\0Pó\"ÇyßÁ<∂’¶´“YÃ„∑HkUgoIbãgíùﬂmøµ˝ZIâ\nÊ≈©§˛}∞’ÛuÎSÈÓ4M¬á[©|7I¨4Ø¨˜≈ı’ı~•n	WúN\'\\ÆøˇÓŒ1∆íí™Ô{tñ`ƒ…YË·¿:¡Ñër ¸Wø\r]](∏DŒ©⁄Úqe‡äÏÄÃ1Cæ£‹„_]{„ö{¡Ó∞,øór7ÄÓf€7ÓΩ∫ˆÅÁ€Íì{\0Î0ªË⁄{°˘}‰∂⁄QWe0Á˘¥T9e‰s‰\0ÀIM©ÄQ:DÊ>)cºrÏ(˝ó;ç∂Ä%∑qt¥·˙B¥·\r¢,TÇ-⁄ËΩµŒ‡z”ÙU¥πU˜»IÑ1¸Õ;-øí¶19á8Á08‚ÁÇûü⁄äE\'(9R§O[OZNrd†bÆVÆ2O~\rÛπ¿bÌZX∆@(YÔ5ìwkÁ:ºÔT«…v\0åT˜8xé#¿ãíÉBÂæÁÃ˝X¬\Z\Z ⁄®Ω6ÄrΩ≤x÷ª@bÄñÁ(ß.Í°U=ÜRˆ˙◊‹s>ßÿ`(ˇ1 ıŒú¿Àpr\ZR;ôv†n«´>gò,Ñ\0Ê∞\Z[êØ€YÅY)ßÌmŒYó71%IÒ9uπ\0[)¨Æò«òENäçJÍ⁄A6’ò8≥y˙a\"cø≈õ»\0∂+·€eêrÉ>·•¯]ˆäz%z|Ù\'¸ú|œN´ø˘“Ó\n}èﬁ √)Øûﬂ3ÉOÕ·ãMÛ‰)RW3˝„J2+*E∫Õ¯…”,Úrkï%®Ùe≤éSLªH¬…u9_ÄÀæGzÌcﬂ>NÄuàL◊\0AﬂuKuÊ‡Ïë˘º+ÔFbcY◊´EÙºn;s$Õ≠û©>ûAF∑d–6IJ{í—‚;ô<‚˙|˛ßøç1ËsÃX}|îä‰Rµ„V˚(˜≠•ä°c6&G#é…Û–’ÅÚ:é\0ÿÆApıÅÅŒ8¢lCãô∑ô)ÆıG\0÷Äô±=¿Á5\0…I!øê†Íg´Á_]NÁQ≤ã§¥mG»$]É|ÌŸ6ﬁ∂èRwFIÄ¸RKd,&Xåó€jL\"É√Ì$+™(/§WŸ⁄ƒ_ê]ßóÔˆ¸w–uö0Éè·<∞EŒCﬁâõ¥ıb©ZÊﬂÂ∏^ìm\n⁄’eı¥¡dÄ	pçÛäxiófıÍ“∫=ÄqJ+-ü%?D¡ï}—\r}ƒ•]hÎæÌy\"&Ëçe\0\0ÖIDATÉ¿Äø˙E{«¿Ëiﬁr0é\0•dG«ÃÄ4#tÄ˙]CÍ>2˜⁄k@)≥F6∂&Â[ëYr Ôp®æã!ƒº›å≥Uöï¸X10Dl±ªÆ@HøﬂX;ﬂ%wK6ÖMÍœ.K`>Kf5“ñ„îVèSú¯ôCëfÎ@¬ãπ–:|l™çI…k◊i—ﬂìË∫.ÌÂ¶Â´π’™ı{IüñŒõ nîUj”éyÜ\'@å»@lèüóî Í4p&bk”ÀgHå√ò7c‘@‹U§º≠1åQ–/:˛ﬂA‚Ø¯q:·Á8≠<êˇ	ƒÃ¯Îr≈«ÈG‹kvø$VΩÔ¬ k&ﬂ¸&T±3*y1*ƒZR[\\¨mîîûI«c…Ë…:L!Ã÷e=É9œa‘‰ä’}Vø„¿†î◊1¯mPÒ¶ss®Ä4ı5œ’SU´SÉ~aûπˇíJ$˜WN1˘âvûaÎﬁ\0ëú3´§GI. î”⁄¥ ˆhP\n±I\0¶€olÜhõb	Ö—[<sÔ\Z‹Í˚Te’	√d0ìÊ—#ÁEÃ°AfI-ç]*ÔA3m®z‹bÀûí≥»‚ﬁ≤ˇ›ZáH!Á\r-œ sª%2ºsI\r™ı\nä7lØΩÔ’ªØAU¬®œaPQ%’íÊ˜Dn¿Så|πé∞÷·‘\r ˛öa»a6íúzÒêùl3\'Îpáiö0úˆwﬁ¢zNøí^%âï˙¶+>∫c&ˇ|p˜Ø§üóŒß\\únŸS61Ÿ¯´œ’Îõ∂~eÂ⁄äA†9¶/6HZÒÍu–sî≥\'òÍûbR–]Uñ(oîY’≥JtÁæ	º∫ÊCbƒU9‘eÛ±)F®H0≠î∑,Í‘‚π)«IB\0Â’~u\\ô\\hÆ!Ã&x„^ ÇÄÒMÃº£RM‘ Jj2(„L5FªFòôØ1Ñ9´gÊøyùDR[ ≥P√’!T”{…|lYÁÚ<ÄeˆzNÍµéí\n±VìŒnˆ⁄_dc,{»©-Rh+AÎ{o¥ôL!‡\ZíTR⁄]µµ¢kà8[Õoπ\rd:ÎÔB≥‘Æ\0Ô%IöŒ§Ô>˜âf˙pTe\r…§õ∂âåÖ±Û^ÅëQ$§ñB¯+tÆÉsrîDb±-ﬂC∆:å9¥ƒPÚàﬁ#â÷\r)8WˆücÛ⁄ >B-}IùaBoÏÈÑÀu¸Ü;|?]ÆWúO\'ò;(<ÏùXË\0≈Î‰∂ee‹Ä⁄Å‘¸\\e›†πå5âÈ\\C^=*äëAÔ:¿§=jZ¿a êJ2~@6•£Ñ|=.◊9Œ§}‹≠Ô>Ù.Ì«≥Ü–Jõdﬁ≠-%≠4tµ_Ó∑a{´•÷ïJQ\01ë9Å™„Õ≥Ø¿ñ§;B`à`å1/¡Cﬂo⁄Ôê‰¸R∫vuıßúHm•$Õ˘¶|{LösÇ%∞IU^Å\\xπ5éˆç⁄$πr\"I)å\\éPJÒZ1R—4#@IıWÉ™Çã!Çÿó—/˙∂4†m¨æ€m£á©)Rıø.ÙDíîUﬂC€1ÊEnÀ˜=ß1Ÿzà≤§9w≤k\0†˛åÎÃÂßY”ï¨u8˜g»tπÎz*´ı‚%}@e”Pô˘—]ÙhÛçıJdòx≈ßÅ	◊çl&ø;].W¸8€»ûñƒtí¥PbdÚ©0™IÀ”rbË\n∂û∑ ,ß¥;˙€ö‘LYøO…πCPIw\"\"˘Öm™Ô@0‰–YáXeÕ\"Ä“~W ≈yãsi˛–|ØÀÖ|b}ﬂÂ±¢∫ì&ƒ†;H πg_kÀ€ñÁÄF° Gw´éÖ}3”J™3Y‰‹$,∑*YHa2_£Íïb{R÷xV«◊‘¿öü3io77∑©áQ∏ ŒÔ)0NâÒ˙ò˛b…˛ë∆¥5.aWœIûÜ&Ç≠lß{†U7JÅ…3–a~∆=)¨ñ∏§-Øcië®hÒP¨_hCå4ˇ‘âHIòøî©£‘œë˚∑KYî#∫y›÷¸Ω˜>ˇ õÎ˜#Ä?Œ\'x∆?Ã>«	?˙~◊£Ù9Ôƒ¨rÄ…jô(í\'¬bªw`f ‹ÎI¶Ák úxπ±‰êΩ®4Pô∞®µ\0ö]L´„u[íä,•√*`@lèq\Z3O[π;õvñÍzT˜¨˚è(9#På≈v◊“¬˝WœÒÚ˜Í|˝}Îñmô˚¢9ßÜùghlq,w∫Hå≤\0àX32´9ßº®•ïò R§üœ˜™ÖU¸æ9Fı˘jº®jN$Ì∆ú§)K	¥4d‘bƒ¿ERq∂eÍvÒÈO“÷8ynê\0¶;·Áx-Ì˙Ë;X„0Eø\0Ò∂/ÁΩÕ,:k`9€Ë¢ˇ\Z“cï˘wÅM\nvåÂN\r˜Pêy√[•\"˝=IŒuËùâÄêÊƒvê)Ê1n\0w#[àP5ŒÎ√çÀ‰kœ˜w◊€RúÆ	ÃNßd¢Òæÿßgäë11ï›LZzŒ;±b,˙ss,P\ZS‡Ù©ìLU3eöl<œìmÃ´YebùùoƒyB´¶†Y¿”\0ßS\ZƒålõK⁄3\n<K=Ï«‘æ“Ó8{¢epHn◊{„<=O⁄¡Tòë≠H MÃ)À∞©⁄ªXÈVåøÙ•2ÏˆX·⁄À˙Îs“ûœœTø≥Úµ=ı9T`YÎπ™wWã^[ãv ´‚®ˆ0\0ë„RR´•ÆÉ%¬\Zì%!^Ä‘‚sÎXuÆ∂›≥î™Í¬ŒfÌZéSﬂ\nRd,ló©uò†+Ñ9∆NX†[iSò„¬vTMŸºœ≈\'ÄŒ:8¢§Bå~ÒnÀ;Vêﬁ8V6®˙dc¯˛niÛà„S1`C?$u.à_n«tH¶C\0·ÛÛ≥RÔ«{Ë2éË∫>yh~!ª˝?çÿ\'0˚p§Ô˝Ù“êáW”u\ZÒÁ∞ÌàÛ∞:±^Ω•5u&®ò\\Æ‹§˘]ˆjbAÒ|“\r/#RÖöô^W\n`ZÔÚ5ã\'£NÑºr)òÕœ`]¢y;àgSñwBzFK)˜c»S7<,n˝Bp61®:⁄$ôW˝•ˇö˛‘†Ê\"°µL∏aJ–Œ˝TÔG•`g\ZÜ•ﬂåIûÇ⁄∆’\nPAú\0©b8∫¯h˛Pœ_H§ºÎ’˘ÊX˘^}J^QsÆ4∑ÍÛ÷±ÌK¢Y≠iÛxÏÏ¸›/ãb0uTLÅ1y¡ò’â)}Ú<ûúu	Kh∞y´`ÙÉ≥∞÷!ƒ0KR∫ +m%0˚Yí ÁtÒ—™LÀ€Æçe€†Íö›B≠Ü4±AM1tn¿xî∆>ã¡988åõ†xãòÃó˜“ö¸\Zÿ€E‹+≥=Fe±¯7Såà)ÏËGﬂÉA9©yDØ	}x	‡A´›¢ÅGˆCEûY]∆îÅ»†ÿäZ¨∫∏0)]·Rµ›Ö§:«Ä‚I$S´\nï€ñ«kª\Zÿ„‘;LS®tˇ2ÁæÀúø32á\0P`t÷Õ`«‰:àW≥BŒ	J…q-a.\n0ı™ï}ıß˚Iï}æ‹6`	‹¨Ä¨Ù™U˝¥hW›ñ∂‹,á&‡Ø#˙˛V\0÷\0\\˙T‰≈&\0µûçÿ®WèHˆéîM†€∫eU∂34Înµ.ØÔØLüEw[`XDâ%l$D).ﬁ*	Ê¨2µó°1≥˜üà Jöò∫q∆°s”4ñÒ;1‡Ñä$ΩÍ\'}ü;ÄÊêû3\nyÇyz/~Rlôz˚nù?‚)ŒuË¨ÅÜÑ-‹€÷f N!æD\r7ﬁ∞π(’ˆÂW“ﬂ•N<¢ò]Ò\rÄì±†”Pú…|ÛJøê∆…„√u´,¯©Î’™Hˇ”≠À”ú<’‰Å›z…≠Y\'9G¿∫$iYT[L`…Ä[[Õ‚∏ﬁﬂÃ`K‡ÆW[ó≥¬!ÌÆ\\◊#\0àazÉêEkk„p6Yˇ%HwŒ&€@H‡∆qŸÆ¶OÍﬂÿ™≤QökÎÛh⁄Z˜ESñ⁄rMø’ˆ:=6ﬂG÷u◊Lqt\nxÕø•:∑πˆ‹¿Õu\n,%[…÷}Íﬂı¯”±•åZá¨•∏¨Iv1˝t˘≥üzÅ%9ê±`≤j\0C5—¥oÀ\\âŒu¡fÙËª>ŸS%@B⁄ï⁄˚\0Ä”FíC ◊‘U˝{àò•¡ätú¨§≤‘⁄¬Áj’AEEe=$¨UÜ‰.ﬁ„áÓ8p@d¢Mí·Û`\'¸ãI8¶¥o»È…úÉò!€~>Ñ_í$r”\Z≤sÏêH@Ÿﬁ\0êº∫‰ÏË¡Hå@ÅEáá:jXã≤4VG\rX6HﬂÎß¸uÕÿ[&ÆÂ—Ó|‡“·÷∏d´ä!elÿ¨ì—[∂⁄0ñ`Ö%N˜çêŒ¬]°0lgJÃU]w€æ\Zòj’ÿ£˙ŸJ=≤¥C,@iQ˘LµK˛‹ûdî∆(óéœı‘Ì´KRñàZ\0\Z	*øœ-†QJ)öî·…\\«∞πJd®ÀŸy⁄{ß{Ê8ßJ3º:õ˛\\˛≥‘H*¨å_`ô—9á»\n) ªs.;s4YıÄ/ËÃú\\ÿöú¶*§Ï¢Â√ÑS◊aÈÂèS¿πÔÅ8KI¨¥\ZË¥/µõ•∫æ∑9÷pç;%pævø_ÿ6(˙	}7`úFk—[ów2_´5◊°g¡îc…Ü~∏úÓë^åI·6>¶,_≠OÊa˙R˙$±#J™≈‘\njL.g¯·¥ ˚ª⁄\"sàÑ“˝6±\\PmA:·‘\r∫ƒ‹‰+egùiQ”Ë≥;3Kö<!Œ±[≈6l2T‡∏\0Aå-©óòk\0r\0JŒC‰2’‡û\'ô‡‘;@ÃÎ\r&g\0â8ı1DíZ—¿ÏÊd,mmÅ3ˇ	©πF˘KQbÊUã qÃÅπOöœrére’Ä™∂/Q¨‰sl%™ˆ-.õô≠2tCY2‚™Ü˘°[\0≤f~Ä-p™«Òñ§†@bÛß™ı”Êø.öûñ\rÅ-…Øâú1∞] °)1&˚°Î5H:˙ï›pp⁄6Dmé-ÿGüÄÃ{§Ω◊NÆ∏ﬁ·≥ë§™/˝üÅh™⁄€^RÍ6uõØ´qfÌµ®L‹F+9C†aÄëâk2∆Åç≈°ŸÃ±$ΩæA∑ 8Á–ì@‚à¡;`:∞ü›ÉOﬂÑa•Ó\nÈÇÄ\0Ù∆`»ﬁé„t;ª∆óÔ-ÛW∫SL M‹\\â·ŸACU*!OnóÀ©Kd±•Qö0ö*Iô∆ò›Ùù‡Ü·Íè%ÄT/^˘¨u`fxf}üfßHŒ‡—€Ï\"`çÅ1p61ü˙~‡Ú2ƒ,X€Ä¡.•Racë\"ñ‡PÆﬂï–º˚»ÄƒˆûøÓ´U]´~îÂ˘¸ÇX ¸|U;ã]\nk)hÂpëm§® ’@ó¿dÓ\rLØÅ∞˛t6ı)múØ˚BcóÍÛµ7¢eı6ô˘∏ÇYΩò“æI!%ìs«BÜÄ“¯\"c!0ﬁÁq``ª¸x!†ÏeUKi•_´ﬂàC◊cÚâALb0êÍ`g©ﬁEu¨®0%Õ1Ì}ı…£6gÓ–Ù[’ZbåÀw™4≈4/ˆÄLb\0bXK^ÆCÑ¡5ÑMzc-HxxΩyYœèö,pñZ%2úõæ∑+<ÆÔû{>Køª$vDà)l‰£Î…‚rΩﬂCÙQÚ!†≥n!|<Ìb/¿ºI`1¢tLøC*ıe„r´Vm≥õΩ∫:◊Wu€r¨e‡0û:g—õ\"!\nƒ\0ŸŒöîﬂ9\"í ∞Nµ∏W}èÍòT\rbD≠C\"¨Kÿ[ ⁄`∂∑, l›w„˜V[ïjŸfYVöÁZÇ◊jë…4s4\rP©îÿñ’Ô¶õt\rï˚Ø\03ì≠Uå@ñ¶Û)üˆ^2_Z@L˜Sïô:µ∂∞˘bÉ‡”N–÷ZÙlpı8y∫20Ö\0‡<t ≤1§|å÷B$Œ˝UµqœÎs©6\rËªdGì¿}üVüö•b´æ™ÆÿÙi€ø∫ıœ#§Å‡[‘¶å\"óú¶iZ,ûZ\Z∫¸@ˆÚ#\"Z6Óä/#c,(€qZû@∆ÄÔÃérD&Ä?>>WˆJ‚A›êvWŒÙêMåÄŸ©C™*f–Ç@Ê,Y44q\0œŒå%#Y0˛zÖYµ,B‡HR8Ÿø∫ﬁ¿˚\0gS\Z#cñBﬁÜ≈fFÍlí∆uJuo=$ÎÔEf±&KSAÑ‹bˇ≤Õ:Úg…âxxè5HÌûŒ∂˝ıR‡Ba,[\0´Ì04◊∂%ÖïÔ’±6>©ï‘Ln!Å¿ã∑Ÿîœ ·mÈOD™*¨ÅÆñƒÄ%à’uîOı·Â⁄#1eÆ1¬ ÑFÚ\",[7Q∂¡tºà<5ãÈ@qéèküÒ{^%:KõvH~Ç˙dG”2[íXÆà5Åû™ﬁáSØ≈vÃÏQÃ™ÔMQ\rÄ±‰:L!b\Zo€∏úÌÄÓñH⁄]Kcà8Ÿ‰qH∆¡«„ wŸƒHbD∞Æ_≈v¡πµpç1ÇΩﬂ\\Dt]è>\'˙~≈Î\'Œß3>àŸ{Ñ⁄˛z,N,è¯b,V◊zIﬂ)sä3Éµ˘S8]ô[T1%I∆uìÎ≠cãÎùqì’$4!ƒÖ>]$ F¬–w`NÁ¨IŸ´Å•ÓΩf õL_øÁJ›ûrû—;Éê•;·òΩ ca\ZE]”÷œUªÎÛÕÀi}’∆¶¡Âô6 K^aƒz‡6@XWgT‰©iCÍ—/öπæ-£Âí‘ππ°¶ô@ãz)´öÕ6`ñ‡˘¸Ω±zd[ùØÔQÁF,∂]÷ƒÀœí∑[Q{n\03°ÔÜƒ NÆó\0YÄ§¨˛û˚†iÎÜ§T⁄»ÉÌ1\"Qè”ÑÛ–µ[¯FGKıŸN!©⁄WÉ€]D«Âc c1˙˚å˛ù5ègî?8bÄ∑C6cXå7úEn’˜ùÙËΩ/Q^òùﬁ˚ú—ˇEﬁû\0@aDﬂ˜ÖﬂæíÍÃN¿É	Äk¶ØqJÃ≥J\'j!…ˆ0É‰∆û\'äÓ]-Íõb*@Ó›ºï4ÍµªlñÑ—&ZwhuQô‡U›ÕÇvø´ãj∞ûÉ•sf‘Y\\≠”q’ıö•â_®\Z∞8Ws°çg—:KÒ\n†iqN™ÊÂsÊ/3sMbPêÜ¡nJb˙ºÕÛ¥‡T¨lî˙Å∑§π˙∑`}æ}Íª5ÊÍ‹J\nú`Lƒt—&x?°ÔOÄ\0óÒ\nõóu{≠†i.∫∞€≠2ı3≈	\'7‡ÍGÄi\n8u)Ÿ¥>W]ØÜƒ§l(ÍˇıÀ~ú4-◊…4‚‹∏‹êƒN˝\0ˇP[Ëñ(\0,0y◊ıªÍæUÊªêÓëzE`∂\"ÕøH¸‚gì»∞ÓıÌ∞JÚ¸p∆é2ÓeÂ2©Á?ıV‘\0OU)fl+.ÿ≈Ë^_Wﬂ∞¨ﬂŒ∑Ï3÷îè1éJ∂ÖE]’d¶J\ZZÉ‰Ú~ã6¥e9πe∆òºUl⁄ö• Ê∞zôôX}úP©mÆ5˙\nPÇÌ†sTÛ•B_©∑éiŒcJ:ö\Z∞k¥®¡Ωî°{#Õ…\Zdò9Ÿ.Ñ-ØÄo\rÂ˛‘∫◊˜”±Sr.6}µ´VWR?≥ÊA,õ] ¨VTX8≈Ñ	†>¯≠$E†∏n˚Íwj[øGú˙£ü¿`Ll–[ól\r¬ó≠Z0Ô‡‹.\" ¶™¥î‘Íﬂé≤≠PÊ:Ó≈?äùÎ1Ì˝\0‚«„éBò–eáó=∫˙	dÑè•AgªÏπ|LøÜX,û_E[^_•{=M!2IÌY◊˚x`©$\nJA 0(yëÄ&VUo/\"‰Õó´lÌ8ç\r€kŒÄËoÉ‰™è¶å~™\'•z\0Æ’t¥»›ÿ÷øhC”û≈ÒÇHñ‰jÔh∂n’__øU‹xû≈Ω•rzêÂ˘-u‰v{\rTvÇ-˝fbúwv∂˙JJ¢‹03ÔrΩ%≠i#ÍÎ∂$7\"öΩö˚,@QA®i$!©ÛBıª%≈ …MOAÕ9#GŒ¸_6 ï`\rÊπ`un4˜&–\nÿ⁄ˆo~J”o˘>Ü”v?¡{8k™÷T≤˜[èIö≥∑r1ù€U˜≤\râkΩ05Í™æR2„\'ì–\Z’Öﬁ∏ˇ-r÷ÇÔP{ﬁ#¸=Cèz\'“7¥cÙÁ∆ÎÔÀÙ\rÌt÷•∏¥™‚áΩÎïöRZëbëzJ∞îº@ïÙUMfıHh$ÑÍ~[¿‘Iè≤Â·\0¢›2ÉÆ≥æ«êmµ/’œH˚ô9Ñ)¨\0oÎéÓ≠Åﬂº< xm÷⁄©ß>∂ÓÀlÏ\"[ÂaÑ÷Ô_iÉ˘ÆTÅ\0≤v5I∑2D¶]ﬂ#6üsÒ›sœ˙Ÿ8j	£nÉ⁄vÎwR∂SëŸkî)˝õÙõ\0±	~U”@\0®Î7•kÕlGÆ€ªx{}ª8∆úºpœßîƒ∫ívo^€‹SÉ»Àúñe9\r¯˛\nIÙ∞dpÜ2ætŒD%\nŒ√Ä;pj˚zd[o7Á‰ÔJØñò\0§‰‘›i·ı˜Â:_V”LF\'nEœÌ\'ñWà:˘UΩPo∆»ú\0J’;Í∆,\r7	Ñ≤Dæ…xwòÒº∆û€WüèX=˜¢\\ÿ8∂	47 -Ó°ﬁé[Â6Í€íÍV◊l\0|˚lG`øÆ†GD◊‰mπ¸ŒVìßï,–JdØº≠ô∑%›mIÈª˜∫Qˆ˙%?[qË»ÕV0”å22çEU@¿¨ó\'\09ªãÕ◊Æ§\'∆Bùπh◊F[7¡≠yâ˝<˘\ZZŸ#´c˙zµˇm¥ß:ˆ\n/¬@ñƒt‹~ΩN≤}Yz$%‡ﬁÙ´ÙhΩ$DÊaÏ-∫zè”•±6c–+hK¯~j?1\0À•≠6ñÊâB4«ã\00≥H.:O&¬ÇIÔ1ÔÉæCÍÿ´„Ë˚≠zÓÆ˚\08Î”m±-‡^ùø¢ª‡˙d[ÙÀ&smøÔqï=Êåf˛l][ﬂ∑@XåÿHÊ&Ç`yê£w˛S‹(ÆÍ’¯oÔ±¥áﬂ7\rıÒ’3lUTø[öØ_L€JÚZº˜’Å7Xi~UΩ187|9ÉK!F;¿ê<ºùNK∆uô∏óä÷Ø¢ÁÇùë\'É2=–ú7Ç≤Î≥ë ÊUM˝∫Pmùõ¿upnó)ﬂ®;Á⁄gΩ∑æG¡Óf}Gmÿ¯~´>úSÈπ]≈órÌÍHvÄ®e¢uµınÇ¬‚ÀFõoÄ∆¢^.ö€W>yÁÇYö™•ª⁄}WM˙H{6ûÛVImO’˚¶ﬂûéí0ÖÆ”à”pJ\Zµ\'ÅÃX/x˘ÜõŒ∫î\r¶=˛§lÅåx9°À#(ì£å¢∫ÚÕ«ˇ÷âùÛ∑Æ˙¸≠ﬂO÷ﬂ¸Ó˙kZÄ≈ıo©òJ∂á∆âÊº4eı÷uHs≠Í@RÿFñM®∆^	yêı≠›@ŸœŒTej`[µcØOéÆ©èım≥X(Ûÿ|gıb£uh˚ˆ-å≠i5F^XÔ£|ò8•∏{÷)ÊàÆ◊+˙æás¸`<ö±ˆ0OÂ≥îp^∞)fK∫rUıJ∂LÍ:-ò_5ú¶LûR·ˆXŸµ√r˜÷wÉÓΩo{≤e+\0∏ßæ∫/˜Í´O}Ÿû‘≤j_√ Îw∫y˝å˘[ ∂(ÿû⁄Ë§-`myaH”e<VvÆÕ∂<”+ ﬁ§\Z∏™√Ì1iºiìæÿü¡∆<∫ÓÑÎ7Äêí˘ND˙,•îRG;?Î ∆·\Zb|=Ä…©cÎi\nv>¢„£yÚKïÚFnf≠hÎ⁄)∞◊‹’Ò[“…A%G◊ÏµÌÓ˚H√821ò»n∂´9¯hü]£\'wÆ=$;Á∂Æª∑4?‚Ω≠$”Rõ¿¸|…∞t¡µkßkoCÁ∂Æ€iÎÊu≤qnÎ∫;$÷v@æ±láæI{∂^#åíl¸HDpΩ¶\\ñÆÎRéP¨˘ó\0∏˙\0Ê◊‰Ω‹¢”Èå8nß±˙≤$÷“B2V+¡íÆiÉÉÔ1ı{n∫ßF:b˙˜¨x€˛Ÿö¸õuÌÅÔ¡ÉÌ—\r–ﬂ≠ÎËA∂H7ßW¥YÓÿ˝\rıÌ-t·•æ‰ZÆŒJ°˝yóD˘d˚^]ﬂ—{€Jµµ∏z”LøÜ•Ω€ÜSöÔ$Ô=˛æ]√ñdåÅë∏Î—˙%õÿm©ÃVáÊniË	⁄Ω~ÉÈo2ÄÉÀˆﬁ¿ìı%Ë©Áè\n›…ç_µ¢?¨Á+mŸZRb˚—ÎË∑¥ÂÌI¥w‹ËHJøg\\æ)ë\0øÖwbM&Fc_ÓDÒ;Qﬂ\rYˆüˆN|Üé‘Wè–=¿ÚËıè⁄RÛΩú^^/ºˇØ§omŒ≠ q_¸fØ‚Møq˙>ˇ• ÷˜i∑Ü#ﬁ˜míÿõ^OofˆãËœë˜˝=ËwI;’O#˙˛ıqcøö¨µp∏Ì™ˇrõÿõﬁÙ¶7˝ÈªxÂWmm\"√Œ•çSˇ\rDd0∏a∫mÔ{ôw‚õﬁÙ¶7˝´ÈwÛÏ®àC@ﬂı„_ôƒ˜ê1ßÆGÔsXyKboz”õﬁt˝∆\0~BﬂıÒœ2cÌ›ò“ƒﬁÙ¶7ΩÈN˙ùA»@ÊzxÍ‡ˇa™≈æ‡ V\'æÈMoz”}Ùªãbô¢ü‡¨ÖÌå”Ùm¡–Ø\"2Á·ôFƒ\'Ú5æ%±7ΩÈMo∫ì˛ {Ù≈à°Î¯ÈÿM˝WaËz¬ıÛÈz˛?÷_¥1‰x1\n\0\0\0\0IENDÆB`Ç',-1234),(95,'âPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0\0\0\0∑E\0\0\0sBIT|dà\0\0\0	pHYs\0\0\r◊\0\0\r◊B(õx\0\0\0tEXtSoftware\0www.inkscape.orgõÓ<\Z\0\0\0HIDAT8çÌ”±¿0≈Pì˚îúó`ˆÜñ:YA©m’ØïU’ª` Ljó‹„Àã/>ÀÃ8ﬁ{s¸gXu7«¡±$ég„%HìèÛÍ\0\0\0\0IENDÆB`Ç',-1234),(96,'âPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0∞\0\0\0\0\0\0¡i5À\0\0\0sBIT|dà\0\0\0	pHYs\0\0\r€\0\0\r€ô_\0\0\0tEXtSoftware\0www.inkscape.orgõÓ<\Z\0\0IDATxúÌúy|TUñ«øo©JU™íJÅ@Yí\0	IHX$(h@m@@DYT≈q\\pF≈•ÌVq≈eÏvh⁄Ö˘ÿ2£≠@‹@EDY\ZB $AÇ!l	ÑÑ¨ï™∑Õ/©XdÅ∞™~ˇ‘ßÓ9˜‹sÓ;uÔ9ÁﬁWÇa4¢Ù¡ÿ\0‡^ HbπÑK∏¯(≤Åı¿[ùÊy\Z	B£ó>€¯\0H.§N=$ÈÇk{ﬁ†Î®e≈Ëï%[ìK8sÏnÌ4∑(\Z∏Ù¡ÿ$``KásÃ£HÆÆUÀÛ	ΩÍµ´ﬂ°nÌªãË~3\0:Õ-⁄)îÃåëÅM@Z§ó∞gLΩ»∫]8xÛøß‚ÌÈ†´[ïKh?∂ÉE‡. Õñ:ÊWÌº’’’‰ÁÁsÏÿ±s&”öpékÓ?gÚ.·Ç\"\r∏KÜ8«˝±UN˝.å #H	ô à-Úhyﬂ Fß#8\\-“\roz··=#z†Ì€à~p;XÏHÒW!∫böıÒx<,˙h!ˇ|ˇ}\n}Ì···ÙML‰Ågí⁄øˇÈõ‹ú◊Œ§nÌªı5g%Á.\nÜK≥ÖÃÉ¬¬úcfµ •|ã\'Î?ë∫_é⁄rlÏ]ˆ<®§n)-Àÿ∫œ«#˜ΩÔ≤ÁQVæÜˆÛ&¥ΩÎP7ºá`FÍñÍ„?P\\ÃÌ∑M„ì¨,lZ-◊≈\nÃË´30Ucsﬁ~>Z∏∑€ÕÄÅëŒ4ŸEºª◊¢UjìÕ9ˆ	l)£PÌnÊÏÇ≈FMœaçÇ7›ôÈq\nOzâÄƒLî¢mJ˝YÀì#{4·iW›ÖqzÕqÙÍ≤s†ÈEÄÙî#„⁄‰íGÅlE›±§E∫QymÔ˜®€?mUÜ≤u1bDOÙ‚≠hy+±Ä¿«ˇÖ„©ùXÜﬁç˜Î—èÏ‡DEìoûDA^/X>÷ÀSTFIfbﬂ@˛í··˚â*c{Yôˇˆ;<>Î—3û\0©s€ˆÿMƒû1¡⁄ú([±gL≈>¯Ê≥“£ÕÒ3¶ö„8Œâºê_Ä-mB`éë˜rœ{ÁDÓFOê≠mr	∂`‰∏´—røMiFW∑}Üé~h\'˙±¬ftΩ¥\0˝Pr˙$‘=k]1X3BpÑÅ≈éı∫\'±ﬂˇbÁ>\0<Òÿ„--ÂŸÀ\rÆÔﬁT%∞ªπﬂX\0$ûIØg|úÖ/ñ.eı Ug<¬)Ïø–É;‚q/÷ûÉ|mïfRπ`&zMπ…„tx’]Ùﬁn˘ñnIHÆ(<yﬂq¸•ë®áÚêB;#wÍqÆL∏Ph%†mr xw%⁄Oﬂ˘e€b§òtsïﬁ˛Y≥æjˆ\"ê,»©7Ça`®–¸312ÄÇ¸V≠\\…=)∆vˇ›Éÿ≠?ñÅMâ¶(¿3˙Gw‡©?ˇM’N◊ú_5Ç&<çsÏ„à¡}mı€æ†~€ﬁ:\0ú£gt√SàÆ®vÀ∑&@?qÿ¸¨2cπKÔ≥U˝Ç„¥Xäø\Z¡ﬁ5g©_ª∂oF≈A,3ê„3Qw|Ó_[’‘ü#˜âä‹˜U%xæx\n√”<q ZºÄ·ùΩ~ÌÚê;Q÷ŒMEåJj2@Ä+¬*9ZZÍóË]í)¥sÎtõπKb+â-Ä‡@\n?Íµ\09 ‹ÒÍ¸Ç⁄Uo°ñÓmb%§∞h‰é›Aî[ód:ΩÌ¡\rs—B÷»#[€Ω∂ÆŸ…ê,Hâ£P∑NÄ∑¨Å\0®[!8√ë‚Õ\nÖö˚5Z—f§ÀÃÌOÕ[âQWÅú>\0K∆O\r ˜o£¨¡2¸,¶Çd™≤ß`¡vÒ°M°ä`FÓs\ruodbxk±ºœgO¯Ë#Õœº›ªâãè√0Ah◊D¥ñÿTBÓ˛ƒ†p‹õ7¥6˝pÌC¶|Ûsæá_øu)ïˇ˚ \0n˚©cpˇˆ°∑\"à\"5Àﬁ†ˆõy8G?Ç-uTﬂ_ë\"b©]Ò7\"^ÃF∞sÏ±DÏWﬁÅ˝ÚI\0O|9<˜ÊOqÕZäg◊**ˇq∂‘1ﬂˆ™≥û∆Ωq°üÓ ¡]¶\r1)XbSqo Ú£ã°.Dn»\rÙÍ2NºsJÒ‰.	∏f-EŸøt\r®˘¸B˙OŒ\n*Ã$ 1ìwæEı‚?·ﬁîE‡ïw4·)ÕD€Ω)ã™Õº•√Ùøê4˜˜Ôcz\'ﬁæÔOõN˚9úˆ\n \'ﬂ\0ä5Ô\0w%ÍÓ»©@íë‚Ü#ÿC¸¬uÎ\"Ñ–ÆH=2ÃA¿ö˘ˆô+ª•‡˝Ú‹oéF?#\0•••$uq 9]Å°ˆ»Éßô	§∑uÁóHΩÜ!ÿÇêL!p÷z“^˙IŸ∑ØêÃ·√IÍ›á)7O¢ ø†=ÊµâôàA·xv≠Ú≈•ç+Ä=c\nÜaP˛∆M(?o≈ñ6∂i%ñÃïFÓ‘É⁄ïoÇ(˚ú÷ìÛ\rJÒN\0‹·Ÿµ⁄î,ò´ì ‡Õ_á∑p\0ıŸK®ˇÒ+¥“BAÙ≈±RßÓ≤ı–Óf∫{Û÷°Ï3˚çˇS≥÷⁄k0rÁ8‹>§Í√«É¬±ı”`¢à [±ˆàç7o-Í—üd+RX7slW7sÏ£E\rs1CıR˛∆Dî;±∫¡Êl∞Àú˚ï”P\n∑†ïn◊shóK1È!Q®9_\0ò·ÇÍENõ‘¿`AJ\ZçñªTOCu‚,˝oÜìVD1,€-Û±ÕX∏ÁOD+\\OTTb(∂;?ƒ6c!∂ª≥êì«°l\\`vTÍQsó#ºÎ∞˚qˇc\ny≥á°È:QQ]y{˛|˛πh!111LæÈ&JKŒœΩπã≥ª7B›w¸hÇ≈Ü•KoÙ„Qˆm¡[∞\0K¨â—ΩÂ3ÍVœ7Â5TÇî;—é\0¿ªwSã®ŒG;∫œ‰)⁄Ü≤Ü¶†ñ¸Ñm èME=úﬂ¢˛ïÃ¬‘bÈûésÙ√~¥F==9+Ò‰¨hQwtç„Ø\\GÌ™∑1<µËï%à: 5ƒÂZi°FEˆD+€è≤/eÔfD,—…˛sÒ›{Tºy⁄Ò‚ım\rÌr`9y<⁄ﬁuu®Ÿãêb Ü7e[r \rı’®y´ÃÍÑ  ß›‘™H)v\0∂€Ä(°¨ôKü>}ÿ[TLÌ‹ÎpœΩ˜‹kpˇ˜Hå™&GT∑|àuƒ#®;ñ`î≥Âàôº%ÙÓMØ∏8íììy˘µWâääb—¬Ö≠å|v$3V3<uæƒ™rdOêd_Ω÷P‹f{îídx—W:˝hÆ5(s¨vƒ‡éH±®G\n0ToãºZŸ~™≤û0+ÒCõÙoHÊ≈Ì≥°1^nÑzdÜª∫È{…^§‡DDWzm9zm9rÁxƒ¶π®ØnêÁ?ﬁ}Ÿgds˚≥\ZÅ¶‚˝ÊÙí<‰¥…~t):\r¡ç˙„\'(€≤ÃÌ>8“G7*è4ì)G\"ıºΩºò‰‘ºä∆äC≠Û˙—üPÛW¢¨{Ä-’aÿâã˜ØÁ^=bGèmØâg…ÄÇ}–D‰nf“)4¥ü/®sÕ·√cê¬cQÏlìø~Û\'‘o_Ç@–MMÒzcY’⁄{∂Ã∂ìt7Tèﬂwµ¥D18…ÖVj&‘Çlˆù.s.∫ˆık˜…S¸Âù.⁄Ì¿bDOƒ.â®ŸãÃ84ÒÕx‰‰qh{÷`T¿í>…◊Æn˚ò∫◊Ü†ÌYÎﬂAq£mFãeƒ»ë…»‡Âlô2wÎzx≤¬‘íıs\0´ÚÀyÙ±«∞Ÿl~<;srË◊/π	ÁRH\'Ç&<C@¸ÓÍf˝\\£—Å-]˚\"Öù“Åjø˘;\0r«ÓX{\rˆ£^y;A„û4uwWµ)Gk®`H\"ëBª¢ñÏı£K°QMxkœ¡¶º3tÿìqF˚ñú2Ô·]H˝∆Ç≈ﬁúû| öø!8#ÃÍD§∏·`±·]˘_ÿ:∆!Ñt¡pü@Y3√SÉú<AòÛÍ+å∫ÊZÓˇóã9˝+Ë‹¬ïG•û¨¢@^‹‡&-=ç€nüÊG^±|9º˛∆_œƒƒsıp«_i˛?_PÌ√¿öpÖ9~ÒÆ˘ÏCo≈õJ}ˆÁxÛøG)Œ¡›ØŸ⁄Ô‹y⁄µa≈ï\"bÉ¬|ﬂ·›óM≈‹I-u=+¥{êìÆQÚ[]˝ÑÜ_Üÿ5πˇD_È@pÜ0nzIuØ≈˝÷8Í^Ωe√ª»)„ë‰EEEÒÓÇ‘&/ó˘{aG6îJîπ!˜8º[`„Óç·º∏ﬁM∆–°Ãù7œØl∂ß`O>˛sÁÕ√ÂjΩ{æpÚ]â¿·w>{=Å√¶ü˜qµÚX„3\Z∏º˘¨=ax#rd/†È £±ÿßÇY%üΩû∞?≠nsÏFáµ\\ñ‡!Nû«à{	üΩ˛ú›|<£XÍà%cbó§Vy‰î	HΩÜµ–>125˚#ÙäÉ»]ë2ë‚Øˆ„KêŒ≤ÂÀyeŒﬁˇÙSÊ◊˝Úî≠ûp\'œø¯\"ìßNÒÎWZR¬åÈ”yËëáIê~&ÊùÙÜá,:√ùa~4µ¥√Sãÿ\0)<⁄å™ßî]m:î`mæª5„9iT‰êm^:j%ÅSèÏ1ı\n1a§0sÂ’Nò˘âRúC@‚Dá¡ä‰äB˘yk€:Wñb‘◊¯éøEî√˘ä«wÄ—ﬁπ8d¿@S⁄]ı∑él˚çe¿îfÅ#ƒ»¨cû=ÂÅé@û}·yû~v6˚\n…›ïã√È )©ëù#õÒü8qÇ;¶›Œò±◊sÎ¥i-Hl-‹Ô8‘;!u4ékÓCØ8)15tî‚¨=„ı0I◊`®^º{÷üñÏ∆:∞cƒΩﬁ:Í∑}Ÿ*O‡∞ÈÓJﬂaÑrh7)—[Ç7å~{∆T‰Ë~»ëqËU«P\nÕJÄRd÷‰Ì√Ó¿⁄◊\\X<πﬂûRoµ¥KL2Ü‚A+o∏›ß©®s±ƒÙ√9Í!˙^Ö·≠Ci«aE0§YÉBn1ºÓ0GÊøµØÎ©ÆQàÁÓ]:Q	#°wozÙËÅ3»Ÿå«ÌvsÁÌw«ÏÁûk◊I\\›Íwö&ºX∫%¢Wñ‚Ÿ±√]â~¢…ÖI›Íw¨v¥£?Sˇ„W\0h«äê:^Ü5Órî¬Õ‘,}Ÿ∑≠ 1†Îxvã~‚÷ÿ˛he˚©œ6ÄÙÍcàNr◊ﬁË’ex~¿›Ω‚ÓÏœÕãS’eàé»ù0ºµæ…’[Úµ∏7.D-Œi—ΩÍÜª!¿Å‹9•xï<å^—p7¢≤¡Ñ•k[ukﬁ•~√B•¡jGÓ‘ı`.ﬁ<ˇ{1¢#t•p3û]Mó´¥≤\"‰é=∞ÙºÂßç‘,ôÉV∂ﬂ‘∑cwPºªV£Wµªb¥W(ôÛ09|ˆz_˙∑M’∏ÁÓªŸ±c;è>ˆ8í‹Ù„	ÈBÊ»muÊËS~7⁄ù„˛à#Û _á≤«≈VÁ|c°¨&◊,ôCáÈÛ.≤>gÜ•Kñ†i\ZââI|Ωlô-:&¶MÆYÒ∑ﬂçÛÊ	óÆ¢j9Å˚ùaÌ•ó:O/u\n\"_›âV∂ü„Øå∫ÿ⁄úoò/uvö[§”O’¢\'©¸øˇ@+?xëu;ø–´éQ˝ŸTº5Ì˜„ºÄÅr`ó/ˇ√LÔ4∑HΩÙ«&ó[CÛ?6iƒ•øñ∫Ñ_)ähÂØ•˛˛ã•–R˛I\0\0\0\0IENDÆB`Ç',-1234),(97,'âPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0\0\0\0”7,“\0\0\0sBIT|dà\0\0\0	pHYs\0\0S\0\0S˝Uæ\0\0\0tEXtSoftware\0www.inkscape.orgõÓ<\Z\0\0\0JIDAT8çÌ‘±\r\01C—˚o»îP‰f¯Ì	◊~í+ﬂÃ|‰Vjf§µ,X;†3√@w3 ¬ViD0PU–´TwG‡≥.ÕÓ«Óá\0\0\0\0IENDÆB`Ç',-1234),(98,'âPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0F\0\0\0Îa5\0\0\0sBIT|dà\0\0\0	pHYs\0\0\r◊\0\0\r◊B(õx\0\0\0tEXtSoftware\0www.inkscape.orgõÓ<\Z\0\0\0CIDAT8çcÙ‘`¯œÄò–\0Àt.4#t-hz∞˙]\0]AT∞Ö>÷û0[h·∞aÌπA∑$k\0RMç∞\r€†\0\0\0\0IENDÆB`Ç',-1234),(102,'<?xml version=\"1.0\"?>\n<artifactType type=\"application/vnd.wso2-forum-reply+xml\" shortName=\"reply\" singularLabel=\"Reply\" pluralLabel=\"Replies\" hasNamespace=\"false\" iconSet=\"7\">\n	<storagePath>/forumtopics/@{overview_location}/@{overview_topicId}/reply_@{overview_id}</storagePath>\n	<nameAttribute>overview_owner</nameAttribute>\n	<ui>\n        <list>\n            <column name=\"Replied By\">\n                <data type=\"path\" value=\"overview_owner\" href=\"@{storagePath}\"/>\n            </column>\n	    <column name=\"Replied Date\">\n                <data type=\"path\" value=\"overview_createdDate\" href=\"@{storagePath}\"/>\n            </column>\n        </list>\n	</ui>\n	<content>\n    <table name=\"Overview\">\n	<field type=\"text\" required=\"true\">\n            <name>ID</name>\n        </field>\n	<field type=\"text\" required=\"true\">\n            <name>Location</name>\n        </field>\n	<field type=\"text\" required=\"true\">\n            <name>Owner</name>\n        </field>\n	<field type=\"text\" required=\"true\">\n            <name>Tenant Domain</name>\n        </field>\n	<field type=\"date\" required=\"true\">\n            <name>Created Date</name>\n        </field>\n	<field type=\"text\" required=\"true\">\n            <name>Topic Id</name>\n        </field>\n	<field type=\"text\" required=\"true\">\n            <name>Timestamp</name>\n        </field>\n    </table>\n</content>\n\n</artifactType>\n',-1234),(103,'<?xml version=\"1.0\"?>\n<artifactType type=\"application/vnd.wso2-forum-topic+xml\" shortName=\"topic\" singularLabel=\"Topic\" pluralLabel=\"Topics\" hasNamespace=\"false\" iconSet=\"7\">\n	<storagePath>/forumtopics/@{overview_location}/@{overview_id}/topic</storagePath>\n	<nameAttribute>overview_title</nameAttribute>\n	<ui>\n        <list>\n            <column name=\"Title\">\n                <data type=\"path\" value=\"overview_title\" href=\"@{storagePath}\"/>\n            </column>\n        </list>\n	</ui>\n	<content>\n    <table name=\"Overview\">\n	<field type=\"text\" required=\"true\">\n            <name>ID</name>\n        </field>\n        <field type=\"text\" required=\"true\">\n            <name>Title</name>\n        </field>\n	<field type=\"text\" required=\"true\">\n            <name>Location</name>\n        </field>\n	<field type=\"text\" required=\"true\">\n            <name>Owner</name>\n        </field>\n	<field type=\"text\" required=\"true\">\n            <name>Tenant Domain</name>\n        </field>\n	<field type=\"date\" required=\"true\">\n            <name>Created Date</name>\n        </field>\n	<field type=\"text\" required=\"false\">\n            <name>Reply Count</name>\n        </field>\n        <field type=\"text\" required=\"true\">\n            <name>Timestamp</name>\n        </field>\n	<field type=\"text\" required=\"false\">\n            <name>Last Reply By</name>\n        </field>\n	<field type=\"text\" required=\"false\">\n            <name>Last Reply Timestamp</name>\n        </field>\n    </table>\n</content>\n\n</artifactType>\n',-1234),(104,'<!--\n ~ Copyright (c) 2005-2010, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n<aspect name=\"ServiceLifeCycle\" class=\"org.wso2.carbon.governance.registry.extensions.aspects.DefaultLifeCycle\">\n    <configuration type=\"literal\">\n        <lifecycle>\n            <scxml xmlns=\"http://www.w3.org/2005/07/scxml\"\n                   version=\"1.0\"\n                   initialstate=\"Development\">\n                <state id=\"Development\">\n                    <datamodel>\n                        <data name=\"checkItems\">\n                            <item name=\"Code Completed\" forEvent=\"\">\n                                <!--<permissions>\n                                    <permission roles=\"\"/>\n                                </permissions>\n                                <validations>\n                                    <validation forEvent=\"\" class=\"\">\n                                        <parameter name=\"\" value=\"\"/>\n                                    </validation>\n                                </validations>-->\n                            </item>\n                            <item name=\"WSDL, Schema Created\" forEvent=\"\">\n                            </item>\n                            <item name=\"QoS Created\" forEvent=\"\">\n                            </item>\n                        </data>\n			<data name=\"transitionExecution\">\n                            <execution forEvent=\"Promote\" class=\"org.wso2.carbon.governance.registry.extensions.executors.ServiceVersionExecutor\">\n                                <parameter name=\"currentEnvironment\" value=\"/_system/governance/trunk/{@resourcePath}/{@resourceName}\"/>\n                                <parameter name=\"targetEnvironment\" value=\"/_system/governance/branches/testing/{@resourcePath}/{@version}/{@resourceName}\"/>\n                                <parameter name=\"service.mediatype\" value=\"application/vnd.wso2-service+xml\"/>\n                                <parameter name=\"wsdl.mediatype\" value=\"application/wsdl+xml\"/>\n                                <parameter name=\"endpoint.mediatype\" value=\"application/vnd.wso2.endpoint\"/>\n                            </execution>			\n                        </data>\n			<data name=\"transitionUI\">\n                            <ui forEvent=\"Promote\" href=\"../lifecycles/pre_invoke_aspect_ajaxprocessor.jsp?currentEnvironment=/_system/governance/trunk/\"/>\n                        </data>\n                        <!--<data name=\"transitionValidation\">\n                            <validation forEvent=\"\" class=\"\">\n                                <parameter name=\"\" value=\"\"/>\n                            </validation>\n                        </data>\n                        <data name=\"transitionPermission\">\n                            <permission forEvent=\"\" roles=\"\"/>\n                        </data>\n                        <data name=\"transitionScripts\">\n                            <js forEvent=\"\">\n                                <console function=\"\">\n                                    <script type=\"text/javascript\">\n                                    </script>\n                                </console>\n                                <server function=\"\">\n                                    <script type=\"text/javascript\"></script>\n                                </server>\n                            </js>\n                        </data>-->\n                    </datamodel>\n                    <transition event=\"Promote\" target=\"Testing\"/>                  \n                </state>\n                <state id=\"Testing\">\n                    <datamodel>\n                        <data name=\"checkItems\">\n                            <item name=\"Effective Inspection Completed\" forEvent=\"\">\n                            </item>\n                            <item name=\"Test Cases Passed\" forEvent=\"\">\n                            </item>\n                            <item name=\"Smoke Test Passed\" forEvent=\"\">\n                            </item>\n                        </data>\n                        <data name=\"transitionExecution\">\n                            <execution forEvent=\"Promote\" class=\"org.wso2.carbon.governance.registry.extensions.executors.ServiceVersionExecutor\">\n                                <parameter name=\"currentEnvironment\" value=\"/_system/governance/branches/testing/{@resourcePath}/{@version}/{@resourceName}\"/>\n                                <parameter name=\"targetEnvironment\" value=\"/_system/governance/branches/production/{@resourcePath}/{@version}/{@resourceName}\"/>\n                                <parameter name=\"service.mediatype\" value=\"application/vnd.wso2-service+xml\"/>\n                                <parameter name=\"wsdl.mediatype\" value=\"application/wsdl+xml\"/>\n                                <parameter name=\"endpoint.mediatype\" value=\"application/vnd.wso2.endpoint\"/>\n                            </execution>\n			    <execution forEvent=\"Demote\" class=\"org.wso2.carbon.governance.registry.extensions.executors.DemoteActionExecutor\">\n                            </execution>\n                        </data>\n			<data name=\"transitionUI\">\n                            <ui forEvent=\"Promote\" href=\"../lifecycles/pre_invoke_aspect_ajaxprocessor.jsp?currentEnvironment=/_system/governance/branches/testing/\"/>\n                        </data>\n                    </datamodel>\n                    <transition event=\"Promote\" target=\"Production\"/>\n                    <transition event=\"Demote\" target=\"Development\"/>\n                </state>\n                <state id=\"Production\">\n                    <datamodel>\n                        <data name=\"transitionExecution\">\n                            <execution forEvent=\"Demote\" class=\"org.wso2.carbon.governance.registry.extensions.executors.DemoteActionExecutor\">\n                            </execution>\n                            <execution forEvent=\"Publish\" class=\"org.wso2.carbon.governance.registry.extensions.executors.apistore.ApiStoreExecutor\">\n                            </execution>\n                        </data>\n                    </datamodel>\n                    <transition event=\"Publish\" target=\"Published.to.APIStore\"/>\n                    <transition event=\"Demote\" target=\"Testing\"/>\n                </state>\n                <state id=\"Published.to.APIStore\">\n                </state>                \n            </scxml>\n        </lifecycle>\n    </configuration>\n</aspect>\n\n\n\n\n\n\n\n',-1234),(105,'<!--\n ~ Copyright (c) 2015, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.\n ~\n ~ WSO2 Inc. licenses this file to you under the Apache License,\n ~ Version 2.0 (the \"License\"); you may not use this file except\n ~ in compliance with the License.\n ~ You may obtain a copy of the License at\n ~\n ~    http://www.apache.org/licenses/LICENSE-2.0\n ~\n ~ Unless required by applicable law or agreed to in writing,\n ~ software distributed under the License is distributed on an\n ~ \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY\n ~ KIND, either express or implied.  See the License for the\n ~ specific language governing permissions and limitations\n ~ under the License.\n -->\n<aspect name=\"APILifeCycle\" class=\"org.wso2.carbon.governance.registry.extensions.aspects.DefaultLifeCycle\">\n    <configuration type=\"literal\">\n        <lifecycle>\n            <scxml xmlns=\"http://www.w3.org/2005/07/scxml\"\n                   version=\"1.0\"\n                   initialstate=\"Created\">\n\n                <state id=\"Created\">\n                    <datamodel>\n\n                        <data name=\"checkItems\">\n                            <item name=\"Deprecate old versions after publish the API\" forEvent=\"\">\n                            </item>\n                            <item name=\"Requires re-subscription when publish the API\" forEvent=\"\">\n                            </item>\n                        </data>\n\n                        <data name=\"transitionExecution\">\n                            <execution forEvent=\"Deploy as a Prototype\"\n                                       class=\"org.wso2.carbon.apimgt.impl.executors.APIExecutor\">\n                            </execution>\n                            <execution forEvent=\"Publish\"\n                                       class=\"org.wso2.carbon.apimgt.impl.executors.APIExecutor\">\n                            </execution>\n                        </data>\n                    </datamodel>\n                    <transition event=\"Publish\" target=\"Published\"/>\n                    <transition event=\"Deploy as a Prototype\" target=\"Prototyped\"/>\n\n                </state>\n\n                <state id=\"Prototyped\">\n                    <datamodel>\n                        <data name=\"checkItems\">\n                            <item name=\"Deprecate old versions after publish the API\" forEvent=\"\">\n                            </item>\n                            <item name=\"Requires re-subscription when publish the API\" forEvent=\"\">\n                            </item>\n                        </data>\n\n                        <data name=\"transitionExecution\">\n                            <execution forEvent=\"Publish\"\n                                       class=\"org.wso2.carbon.apimgt.impl.executors.APIExecutor\">\n                            </execution>\n                            <execution forEvent=\"Demote to Created\"\n                                       class=\"org.wso2.carbon.apimgt.impl.executors.APIExecutor\">\n                            </execution>\n                        </data>\n                    </datamodel>\n                    <transition event=\"Publish\" target=\"Published\"/>\n                    <transition event=\"Demote to Created\" target=\"Created\"/>\n                    <transition event=\"Deploy as a Prototype\" target=\"Prototyped\"/>\n                </state>\n\n\n                <state id=\"Published\">\n\n                    <datamodel>\n\n                        <data name=\"transitionExecution\">\n                            <execution forEvent=\"Block\"\n                                       class=\"org.wso2.carbon.apimgt.impl.executors.APIExecutor\">\n                            </execution>\n                            <execution forEvent=\"Deprecate\"\n                                       class=\"org.wso2.carbon.apimgt.impl.executors.APIExecutor\">\n                            </execution>\n                            <execution forEvent=\"Demote to Created\"\n                                       class=\"org.wso2.carbon.apimgt.impl.executors.APIExecutor\">\n                            </execution>\n                            <execution forEvent=\"Deploy as a Prototype\"\n                                       class=\"org.wso2.carbon.apimgt.impl.executors.APIExecutor\">\n                            </execution>\n\n                        </data>\n                    </datamodel>\n                    <transition event=\"Block\" target=\"Blocked\"/>\n                    <transition event=\"Deploy as a Prototype\" target=\"Prototyped\"/>\n                    <transition event=\"Demote to Created\" target=\"Created\"/>\n                    <transition event=\"Deprecate\" target=\"Deprecated\"/>\n                    <transition event=\"Publish\" target=\"Published\"/>\n                </state>\n\n                <state id=\"Blocked\">\n                    <datamodel>\n                        <data name=\"transitionExecution\">\n                            <execution forEvent=\"Re-Publish\"\n                                       class=\"org.wso2.carbon.apimgt.impl.executors.APIExecutor\">\n                            </execution>\n                            <execution forEvent=\"Deprecate\"\n                                       class=\"org.wso2.carbon.apimgt.impl.executors.APIExecutor\">\n                            </execution>\n                        </data>\n                    </datamodel>\n                    <transition event=\"Deprecate\" target=\"Deprecated\"/>\n                    <transition event=\"Re-Publish\" target=\"Published\"/>\n                </state>\n\n                <state id=\"Deprecated\">\n                    <datamodel>\n                        <data name=\"transitionExecution\">\n                            <execution forEvent=\"Retire\"\n                                       class=\"org.wso2.carbon.apimgt.impl.executors.APIExecutor\">\n                            </execution>\n                        </data>\n                    </datamodel>\n                    <transition event=\"Retire\" target=\"Retired\"/>\n                </state>\n\n                <state id=\"Retired\">\n                </state>\n            </scxml>\n        </lifecycle>\n    </configuration>\n</aspect>',-1234),(106,'<transportSender name=\"ws\" class=\"org.wso2.carbon.websocket.transport.WebsocketTransportSender\"><parameter name=\"ws.outflow.dispatch.sequence\" locked=\"false\">outflowDispatchSeq</parameter><parameter name=\"ws.outflow.dispatch.fault.sequence\" locked=\"false\">outflowFaultSeq</parameter></transportSender>',-1234),(107,'<?xml version=\"1.0\"?>\n<artifactType type=\"application/vnd.wso2-api+xml\" shortName=\"api\" singularLabel=\"API\" pluralLabel=\"APIs\" hasNamespace=\"false\" iconSet=\"7\">\n	<storagePath>/apimgt/applicationdata/provider/@{overview_provider}/@{overview_name}/@{overview_version}/api</storagePath>\n	<nameAttribute>overview_name</nameAttribute>\n	<ui>\n        <list>\n            <column name=\"Provider\">\n                <data type=\"path\" value=\"overview_provider\" href=\"@{storagePath}\"/>\n            </column>\n            <column name=\"Name\">\n                <data type=\"path\" value=\"overview_name\" href=\"@{storagePath}\"/>\n            </column>\n            <column name=\"Version\">\n                <data type=\"path\" value=\"overview_version\" href=\"@{storagePath}\"/>\n            </column>\n        </list>\n	</ui>\n	<content>\n    <table name=\"Overview\">\n        <field type=\"text\" required=\"true\">\n            <name>Provider</name>\n        </field>\n        <field type=\"text\" required=\"true\">\n            <name>Name</name>\n        </field>\n        <field type=\"text\" required=\"true\">\n            <name>Context</name>\n        </field>\n        <field type=\"text\" required=\"true\">\n            <name>Context Template</name>\n        </field>\n        <field type=\"text\" required=\"true\">\n            <name>Version</name>\n        </field>\n		<field type=\"text\" required=\"true\">\n            <name>Version Type</name>\n        </field>\n        <field type=\"options\">\n            <name label=\"isDefaultVersion\">Is Default Version</name>\n            <values>\n                <value>false</value>\n                <value>true</value>\n            </values>\n        </field>\n        <field type=\"text\">\n            <name>Transports</name>\n        </field>\n        <field type=\"text\">\n            <name>Redirect URL</name>\n        </field>\n	<field type=\"text\">\n            <name>Advertise Only</name>\n        </field>\n        <field type=\"text\">\n            <name>API Owner</name>\n        </field>\n        <field type=\"text-area\">\n            <name>Description</name>\n        </field>\n	<field type=\"text\">\n            <name>Endpoint Secured</name>\n        </field>\n        <field type=\"text\">\n            <name>Endpoint Auth Digest</name>\n        </field>\n        <field type=\"text\">\n            <name>Implementation</name>\n        </field>\n 	<field type=\"text-area\">\n            <name>Endpoint Config</name>\n        </field>\n	<field type=\"text\" url=\"true\">\n            <name>Endpoint Username</name>\n        </field>\n		<field type=\"text\" url=\"true\">\n            <name>Endpoint Password</name>\n        </field>\n	<field type=\"text\">\n            <name>InSequence</name>\n        </field>\n        <field type=\"text\">\n            <name>OutSequence</name>\n        </field>\n	<field type=\"text\">\n            <name>FaultSequence</name>\n        </field>\n        <field type=\"text\">\n            <name>WSDL</name>\n        </field>\n        <field type=\"text\">\n            <name>WADL</name>\n        </field>\n        <field type=\"text\">\n            <name>Thumbnail</name>\n        </field>\n        <field type=\"text\">\n            <name>Visibility</name>\n        </field>\n        <field type=\"text\">\n            <name>Visible Roles</name>\n        </field>\n	<field type=\"text\">\n            <name>Visible Tenants</name>\n        </field>\n        <field type=\"options\">\n            <name label=\"IsLatest\">Is Latest</name>\n            <values>\n                <value>false</value>\n                <value>true</value>\n            </values>\n        </field>\n        <field type=\"options\">\n            <name label=\"Tier Availability\">Tier</name>\n            <values>\n                <value>Gold</value>\n                <value>Silver</value>\n                <value>Other</value>\n            </values>\n        </field>\n        <field type=\"options\">\n            <name label=\"Status\">Status</name>\n            <values>\n                <value>CREATED</value>\n                <value>PUBLISHED</value>\n		<value>PROTOTYPED</value>\n                <value>RETIRED</value>\n                <value>DEPRECATED</value>\n                <value>BLOCKED</value>\n            </values>\n        </field>\n        <field type=\"text\">\n            <name>Technical Owner</name>\n        </field>\n        <field type=\"text\">\n            <name>Technical Owner Email</name>\n        </field>\n        <field type=\"text\">\n            <name>Business Owner</name>\n        </field>\n        <field type=\"text\">\n            <name>Business Owner Email</name>\n        </field>\n	<field type=\"text\">\n            <name>Subscription Availability</name>\n        </field>\n        <field type=\"text\">\n            <name>Tenants</name>\n        </field>\n         <field type=\"text\">\n            <name>Environments</name>\n         </field>\n        <field type=\"text-area\">\n            <name>Cors Configuration</name>\n        </field>\n        <field type=\"options\">\n            <name label=\"Response Caching\">Response Caching</name>\n            <values>\n                <value>Enabled</value>\n                <value>Disabled</value>             \n            </values>\n        </field>\n        <field type=\"text\">\n            <name>Cache Timeout</name>\n        </field>\n	<field type=\"text\">\n            <name>Production Tps</name>\n        </field>\n	<field type=\"text\">\n            <name>Sandbox Tps</name>\n        </field>\n\n     <field type=\"text\">\n            <name>Api Policy</name>\n     </field>\n    </table>\n    <table name=\"URITemplate\" columns=\"4\">\n            <subheading>\n                <heading>URL Pattern</heading>\n                <heading>HTTP Verb</heading>\n                <heading>Auth Type</heading>\n                <heading>Mediation Script</heading>\n            </subheading>\n            <field type=\"text\">\n                <name>URL Pattern0</name>\n            </field>\n            <field type=\"text\">\n                <name>HTTP Verb0</name>\n            </field>\n            <field type=\"text\">\n                <name>Auth Type0</name>\n            </field>\n            <field type=\"text\">\n                <name>Mediation Script0</name>\n            </field>\n            <field type=\"text\">\n                <name>URL Pattern1</name>\n            </field>\n            <field type=\"text\">\n                <name>HTTP Verb1</name>\n            </field>\n            <field type=\"text\">\n                <name>Auth Type1</name>\n            </field>\n            <field type=\"text\">\n                <name>Mediation Script1</name>\n            </field>\n             <field type=\"text\">\n                <name>URL Pattern2</name>\n            </field>\n            <field type=\"text\">\n                <name>HTTP Verb2</name>\n            </field>\n            <field type=\"text\">\n                <name>Auth Type2</name>\n            </field>\n            <field type=\"text\">\n                <name>Mediation Script2</name>\n            </field>\n             <field type=\"text\">\n                <name>URL Pattern3</name>\n            </field>\n            <field type=\"text\">\n                <name>HTTP Verb3</name>\n            </field>\n            <field type=\"text\">\n                <name>Auth Type3</name>\n            </field>\n            <field type=\"text\">\n                <name>Mediation Script3</name>\n            </field>\n             <field type=\"text\">\n                <name>URL Pattern4</name>\n            </field>\n            <field type=\"text\">\n                <name>HTTP Verb4</name>\n            </field>\n            <field type=\"text\">\n                <name>Auth Type4</name>\n            </field>\n            <field type=\"text\">\n                <name>Mediation Script4</name>\n            </field>\n            <field type=\"text\">\n                <name>URL Pattern5</name>\n            </field>\n            <field type=\"text\">\n                <name>HTTP Verb5</name>\n            </field>\n            <field type=\"text\">\n                <name>Auth Type5</name>\n            </field>\n            <field type=\"text\">\n                <name>Mediation Script5</name>\n            </field>\n        </table>\n</content>\n\n</artifactType>\n',-1234),(108,'<?xml version=\"1.0\"?>\n<artifactType type=\"application/vnd.wso2-provider+xml\" shortName=\"provider\" singularLabel=\"Provider\" pluralLabel=\"Providers\" hasNamespace=\"false\" iconSet=\"7\">\n	<storagePath>/providers/@{overview_version}/@{overview_name}</storagePath>\n	<nameAttribute>overview_name</nameAttribute>\n	<ui>\n		<list>\n			<column name=\"Name\">\n				<data type=\"path\" value=\"overview_name\" href=\"@{storagePath}\"/>\n			</column>\n		</list>\n	</ui>\n	<content>\n    <table name=\"Overview\">\n        <field type=\"text\" required=\"true\">\n            <name>Name</name>\n        </field>\n        <field type=\"text\" required=\"true\">\n            <name>Version</name>\n        </field>\n        <field type=\"text-area\" required=\"true\">\n            <name>Description</name>\n        </field>\n        <field type=\"text\"  path=\"true\" url=\"true\">\n            <name>Endpoint URL</name>\n        </field>\n        <field type=\"text\">\n            <name>WSDL</name>\n        </field> \n        <field type=\"text\">\n            <name>Tags</name>\n        </field>     \n        \n        <field type=\"options\">\n            <name label=\"Tier Availability\">Tier Availability</name>\n            <values>\n                <value>Gold</value>\n                <value>Silver</value>\n                <value>Other</value>\n            </values>\n        </field>\n    </table>\n</content>\n	\n</artifactType>\n\n',-1234),(109,'<?xml version=\"1.0\"?>\n<artifactType type=\"application/vnd.wso2-document+xml\" shortName=\"document\" singularLabel=\"Document\" pluralLabel=\"Documents\" hasNamespace=\"false\" iconSet=\"3\">\n    <storagePath>/apimgt/applicationdata/provider/@{overview_apiBasePath}/documentation/@{overview_name}</storagePath>\n    <nameAttribute>overview_name</nameAttribute>\n    <ui>\n        <list>\n            <column name=\"Name\">\n                <data type=\"path\" value=\"overview_name\" href=\"@{storagePath}\"/>\n            </column>\n        </list>\n    </ui>\n    <content>\n        <table name=\"Overview\">\n            <field type=\"text\" required=\"true\">\n                <name>Name</name>\n            </field>\n            <field type=\"text\" required=\"true\">\n                <name>ApiBasePath</name>\n            </field>\n            <field type=\"text\" required=\"true\">\n                <name>Summary</name>\n            </field>\n            <field type=\"text\" required=\"true\" readonly=\"true\">\n                <name>ApiBasePath</name>\n            </field>\n            <field type=\"options\">\n                <name label=\"Type\">Type</name>\n                <values>\n                    <value>How To</value>\n                    <value>Samples and SDK</value>\n                    <value>Public Forum</value>\n                    <value>Support Forum</value>\n                    <value>API Message Formats</value>\n                    <value>Other</value>\n                </values>\n            </field>\n            <field type=\"options\">\n                <name label=\"Source\">Source Type</name>\n                <values>\n                    <value>In Line</value>\n                    <value>URL</value>\n		    <value>File</value>	\n                </values>\n            </field>\n             <field type=\"options\">\n                  <name label=\"Visibility\">Visibility</name>\n                  <values>\n                       <value>API_Level</value>\n                       <value>Private</value>\n            	       <value>Shared</value>\n                  </values>\n             </field>\n            <field type=\"text\" readonly=\"true\">\n                <name>Source URL</name>\n            </field>\n	    <field type=\"text\" readonly=\"true\">\n                <name>File Path</name>\n            </field>\n        </table>\n    </content>\n\n</artifactType>\n\n',-1234),(110,'<wsp:Policy xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n            xmlns:throttle=\"http://www.wso2.org/products/wso2commons/throttle\">\n    <throttle:MediatorThrottleAssertion>\n        <wsp:Policy>\n            <!--It\'s possible to define a display name for a tier to show in UIs by adding the attribute of throttle:displayName=\"xxxx\" for <throttle:ID>\n             element.\n             For ex:  <throttle:ID throttle:type=\"ROLE\" throttle:displayName=\"xxxx\">Gold</throttle:ID>\n                      ......\n             -->\n            <throttle:ID throttle:type=\"ROLE\">Gold</throttle:ID>\n            <wsp:Policy>\n                <throttle:Control>\n                    <wsp:Policy>\n                        <throttle:MaximumCount>20</throttle:MaximumCount>\n                        <throttle:UnitTime>60000</throttle:UnitTime>\n                        <!--It\'s possible to define tier level attributes as below for each tier level.For eg:Payment Plan for a tier\n                        <wsp:Policy>\n                        <throttle:Attributes>\n                            <throttle:Attribute1>xxxx</throttle:Attribute1>\n                            <throttle:Attribute2>xxxx</throttle:Attribute2>\n                        </throttle:Attributes>\n                        </wsp:Policy>\n                        -->\n                        <wsp:Policy>\n                            <throttle:Attributes>\n                                <throttle:x-wso2-BillingPlan>FREE</throttle:x-wso2-BillingPlan>\n                                <throttle:x-wso2-StopOnQuotaReach>true</throttle:x-wso2-StopOnQuotaReach>\n                            </throttle:Attributes>\n                        </wsp:Policy>\n\n                    </wsp:Policy>\n                </throttle:Control>\n            </wsp:Policy>\n        </wsp:Policy>\n        <wsp:Policy>\n            <!--It\'s possible to define a display name for a tier to show in UIs by adding the attribute of throttle:displayName=\"xxxx\" for <throttle:ID>\n            element.\n            For ex:  <throttle:ID throttle:type=\"ROLE\" throttle:displayName=\"xxxx\">Gold</throttle:ID>\n                     ......\n            -->\n            <throttle:ID throttle:type=\"ROLE\">Silver</throttle:ID>\n            <wsp:Policy>\n                <throttle:Control>\n                    <wsp:Policy>\n                        <throttle:MaximumCount>5</throttle:MaximumCount>\n                        <throttle:UnitTime>60000</throttle:UnitTime>\n                        <!--It\'s possible to define tier level attributes as below for each tier level.For eg:Payment Plan for a tier\n                        <wsp:Policy>\n                        <throttle:Attributes>\n                            <throttle:Attribute1>xxxx</throttle:Attribute1>\n                            <throttle:Attribute2>xxxx</throttle:Attribute2>\n                        </throttle:Attributes>\n                        </wsp:Policy>\n                        -->\n                        <wsp:Policy>\n                            <throttle:Attributes>\n                                <throttle:x-wso2-BillingPlan>FREE</throttle:x-wso2-BillingPlan>\n                                <throttle:x-wso2-StopOnQuotaReach>true</throttle:x-wso2-StopOnQuotaReach>\n                            </throttle:Attributes>\n                        </wsp:Policy>\n\n                    </wsp:Policy>\n                </throttle:Control>\n            </wsp:Policy>\n        </wsp:Policy>\n        <wsp:Policy>\n            <!--It\'s possible to define a display name for a tier to show in UIs by adding the attribute of throttle:displayName=\"xxxx\" for <throttle:ID>\n            element.\n            For ex:  <throttle:ID throttle:type=\"ROLE\" throttle:displayName=\"xxxx\">Gold</throttle:ID>\n                     ......\n            -->\n            <throttle:ID throttle:type=\"ROLE\">Bronze</throttle:ID>\n            <wsp:Policy>\n                <throttle:Control>\n                    <wsp:Policy>\n                        <throttle:MaximumCount>1</throttle:MaximumCount>\n                        <throttle:UnitTime>60000</throttle:UnitTime>\n                        <!--It\'s possible to define tier level attributes as below for each tier level.For eg:Payment Plan for a tier\n                        <wsp:Policy>\n                        <throttle:Attributes>\n                            <throttle:Attribute1>xxxx</throttle:Attribute1>\n                            <throttle:Attribute2>xxxx</throttle:Attribute2>\n                        </throttle:Attributes>\n                        </wsp:Policy>\n                        -->\n                        <wsp:Policy>\n                            <throttle:Attributes>\n                                <throttle:x-wso2-BillingPlan>FREE</throttle:x-wso2-BillingPlan>\n                                <throttle:x-wso2-StopOnQuotaReach>true</throttle:x-wso2-StopOnQuotaReach>\n                            </throttle:Attributes>\n                        </wsp:Policy>\n\n                    </wsp:Policy>\n                </throttle:Control>\n            </wsp:Policy>\n        </wsp:Policy>\n        <wsp:Policy>\n            <!--It\'s possible to define a display name for a tier to show in UIs by adding the attribute of throttle:displayName=\"xxxx\" for <throttle:ID>\n            element.\n            For ex:  <throttle:ID throttle:type=\"ROLE\" throttle:displayName=\"xxxx\">Gold</throttle:ID>\n                     ......\n            -->\n            <throttle:ID throttle:type=\"ROLE\">Unauthenticated</throttle:ID>\n            <wsp:Policy>\n                <throttle:Control>\n                    <wsp:Policy>\n                        <throttle:MaximumCount>60</throttle:MaximumCount>\n                        <throttle:UnitTime>60000</throttle:UnitTime>\n                        <!--It\'s possible to define tier level attributes as below for each tier level.For eg:Payment Plan for a tier\n                        <wsp:Policy>\n                        <throttle:Attributes>\n                            <throttle:Attribute1>xxxx</throttle:Attribute1>\n                            <throttle:Attribute2>xxxx</throttle:Attribute2>\n                        </throttle:Attributes>\n                        </wsp:Policy>\n                        -->\n                    </wsp:Policy>\n                </throttle:Control>\n            </wsp:Policy>\n        </wsp:Policy>\n    </throttle:MediatorThrottleAssertion>\n</wsp:Policy>\n',-1234),(111,'<wsp:Policy xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n            xmlns:throttle=\"http://www.wso2.org/products/wso2commons/throttle\">\n    <throttle:MediatorThrottleAssertion>\n        <wsp:Policy>\n            <!--It\'s possible to define a display name for a tier to show in UIs by adding the attribute of throttle:displayName=\"xxxx\" for <throttle:ID>\n             element.\n             For ex:  <throttle:ID throttle:type=\"ROLE\" throttle:displayName=\"xxxx\">Gold</throttle:ID>\n                      ......\n             -->\n            <throttle:ID throttle:type=\"ROLE\">Large</throttle:ID>\n            <wsp:Policy>\n                <throttle:Control>\n                    <wsp:Policy>\n                        <throttle:MaximumCount>20</throttle:MaximumCount>\n                        <throttle:UnitTime>60000</throttle:UnitTime>\n                        <!--It\'s possible to define tier level attributes as below for each tier level.For eg:Payment Plan for a tier\n                        <wsp:Policy>\n                        <throttle:Attributes>\n                            <throttle:Attribute1>xxxx</throttle:Attribute1>\n                            <throttle:Attribute2>xxxx</throttle:Attribute2>\n                        </throttle:Attributes>\n                        </wsp:Policy>\n                        -->\n                        <wsp:Policy>\n                            <throttle:Attributes>\n                                <throttle:x-wso2-BillingPlan>FREE</throttle:x-wso2-BillingPlan>\n                                <throttle:x-wso2-StopOnQuotaReach>true</throttle:x-wso2-StopOnQuotaReach>\n                            </throttle:Attributes>\n                        </wsp:Policy>\n                    </wsp:Policy>\n                </throttle:Control>\n            </wsp:Policy>\n        </wsp:Policy>\n        <wsp:Policy>\n            <!--It\'s possible to define a display name for a tier to show in UIs by adding the attribute of throttle:displayName=\"xxxx\" for <throttle:ID>\n            element.\n            For ex:  <throttle:ID throttle:type=\"ROLE\" throttle:displayName=\"xxxx\">Gold</throttle:ID>\n                     ......\n            -->\n            <throttle:ID throttle:type=\"ROLE\">Medium</throttle:ID>\n            <wsp:Policy>\n                <throttle:Control>\n                    <wsp:Policy>\n                        <throttle:MaximumCount>5</throttle:MaximumCount>\n                        <throttle:UnitTime>60000</throttle:UnitTime>\n                        <!--It\'s possible to define tier level attributes as below for each tier level.For eg:Payment Plan for a tier\n                        <wsp:Policy>\n                        <throttle:Attributes>\n                            <throttle:Attribute1>xxxx</throttle:Attribute1>\n                            <throttle:Attribute2>xxxx</throttle:Attribute2>\n                        </throttle:Attributes>\n                        </wsp:Policy>\n                        -->\n                        <wsp:Policy>\n                            <throttle:Attributes>\n                                <throttle:x-wso2-BillingPlan>FREE</throttle:x-wso2-BillingPlan>\n                                <throttle:x-wso2-StopOnQuotaReach>true</throttle:x-wso2-StopOnQuotaReach>\n                            </throttle:Attributes>\n                        </wsp:Policy>\n                    </wsp:Policy>\n                </throttle:Control>\n            </wsp:Policy>\n        </wsp:Policy>\n        <wsp:Policy>\n            <!--It\'s possible to define a display name for a tier to show in UIs by adding the attribute of throttle:displayName=\"xxxx\" for <throttle:ID>\n            element.\n            For ex:  <throttle:ID throttle:type=\"ROLE\" throttle:displayName=\"xxxx\">Gold</throttle:ID>\n                     ......\n            -->\n            <throttle:ID throttle:type=\"ROLE\">Small</throttle:ID>\n            <wsp:Policy>\n                <throttle:Control>\n                    <wsp:Policy>\n                        <throttle:MaximumCount>1</throttle:MaximumCount>\n                        <throttle:UnitTime>60000</throttle:UnitTime>\n                        <!--It\'s possible to define tier level attributes as below for each tier level.For eg:Payment Plan for a tier\n                        <wsp:Policy>\n                        <throttle:Attributes>\n                            <throttle:Attribute1>xxxx</throttle:Attribute1>\n                            <throttle:Attribute2>xxxx</throttle:Attribute2>\n                        </throttle:Attributes>\n                        </wsp:Policy>\n                        -->\n                        <wsp:Policy>\n                            <throttle:Attributes>\n                                <throttle:x-wso2-BillingPlan>FREE</throttle:x-wso2-BillingPlan>\n                                <throttle:x-wso2-StopOnQuotaReach>true</throttle:x-wso2-StopOnQuotaReach>\n                            </throttle:Attributes>\n                        </wsp:Policy>\n                    </wsp:Policy>\n                </throttle:Control>\n            </wsp:Policy>\n        </wsp:Policy>\n        <wsp:Policy>\n            <!--It\'s possible to define a display name for a tier to show in UIs by adding the attribute of throttle:displayName=\"xxxx\" for <throttle:ID>\n            element.\n            For ex:  <throttle:ID throttle:type=\"ROLE\" throttle:displayName=\"xxxx\">Gold</throttle:ID>\n                     ......\n            -->\n            <throttle:ID throttle:type=\"ROLE\">Unauthenticated</throttle:ID>\n            <wsp:Policy>\n                <throttle:Control>\n                    <wsp:Policy>\n                        <throttle:MaximumCount>60</throttle:MaximumCount>\n                        <throttle:UnitTime>60000</throttle:UnitTime>\n                        <!--It\'s possible to define tier level attributes as below for each tier level.For eg:Payment Plan for a tier\n                        <wsp:Policy>\n                        <throttle:Attributes>\n                            <throttle:Attribute1>xxxx</throttle:Attribute1>\n                            <throttle:Attribute2>xxxx</throttle:Attribute2>\n                        </throttle:Attributes>\n                        </wsp:Policy>\n                        -->\n                    </wsp:Policy>\n                </throttle:Control>\n            </wsp:Policy>\n        </wsp:Policy>\n    </throttle:MediatorThrottleAssertion>\n</wsp:Policy>\n',-1234),(112,'<wsp:Policy xmlns:wsp=\"http://schemas.xmlsoap.org/ws/2004/09/policy\"\n            xmlns:throttle=\"http://www.wso2.org/products/wso2commons/throttle\">\n    <throttle:MediatorThrottleAssertion>\n        <wsp:Policy>\n            <!--It\'s possible to define a display name for a tier to show in UIs by adding the attribute of throttle:displayName=\"xxxx\" for <throttle:ID>\n             element.\n             For ex:  <throttle:ID throttle:type=\"ROLE\" throttle:displayName=\"xxxx\">Gold</throttle:ID>\n                      ......\n             -->\n            <throttle:ID throttle:type=\"ROLE\">Ultimate</throttle:ID>\n            <wsp:Policy>\n                <throttle:Control>\n                    <wsp:Policy>\n                        <throttle:MaximumCount>20</throttle:MaximumCount>\n                        <throttle:UnitTime>60000</throttle:UnitTime>\n                        <!--It\'s possible to define tier level attributes as below for each tier level.For eg:Payment Plan for a tier\n                        <wsp:Policy>\n                        <throttle:Attributes>\n                            <throttle:Attribute1>xxxx</throttle:Attribute1>\n                            <throttle:Attribute2>xxxx</throttle:Attribute2>\n                        </throttle:Attributes>\n                        </wsp:Policy>\n                        -->\n                        <wsp:Policy>\n                            <throttle:Attributes>\n                                <throttle:x-wso2-BillingPlan>FREE</throttle:x-wso2-BillingPlan>\n                                <throttle:x-wso2-StopOnQuotaReach>true</throttle:x-wso2-StopOnQuotaReach>\n                            </throttle:Attributes>\n                        </wsp:Policy>\n                    </wsp:Policy>\n                </throttle:Control>\n            </wsp:Policy>\n        </wsp:Policy>\n        <wsp:Policy>\n            <!--It\'s possible to define a display name for a tier to show in UIs by adding the attribute of throttle:displayName=\"xxxx\" for <throttle:ID>\n            element.\n            For ex:  <throttle:ID throttle:type=\"ROLE\" throttle:displayName=\"xxxx\">Gold</throttle:ID>\n                     ......\n            -->\n            <throttle:ID throttle:type=\"ROLE\">Plus</throttle:ID>\n            <wsp:Policy>\n                <throttle:Control>\n                    <wsp:Policy>\n                        <throttle:MaximumCount>5</throttle:MaximumCount>\n                        <throttle:UnitTime>60000</throttle:UnitTime>\n                        <!--It\'s possible to define tier level attributes as below for each tier level.For eg:Payment Plan for a tier\n                        <wsp:Policy>\n                        <throttle:Attributes>\n                            <throttle:Attribute1>xxxx</throttle:Attribute1>\n                            <throttle:Attribute2>xxxx</throttle:Attribute2>\n                        </throttle:Attributes>\n                        </wsp:Policy>\n                        -->\n                        <wsp:Policy>\n                            <throttle:Attributes>\n                                <throttle:x-wso2-BillingPlan>FREE</throttle:x-wso2-BillingPlan>\n                                <throttle:x-wso2-StopOnQuotaReach>true</throttle:x-wso2-StopOnQuotaReach>\n                            </throttle:Attributes>\n                        </wsp:Policy>\n                    </wsp:Policy>\n                </throttle:Control>\n            </wsp:Policy>\n        </wsp:Policy>\n        <wsp:Policy>\n            <!--It\'s possible to define a display name for a tier to show in UIs by adding the attribute of throttle:displayName=\"xxxx\" for <throttle:ID>\n            element.\n            For ex:  <throttle:ID throttle:type=\"ROLE\" throttle:displayName=\"xxxx\">Gold</throttle:ID>\n                     ......\n            -->\n            <throttle:ID throttle:type=\"ROLE\">Basic</throttle:ID>\n            <wsp:Policy>\n                <throttle:Control>\n                    <wsp:Policy>\n                        <throttle:MaximumCount>1</throttle:MaximumCount>\n                        <throttle:UnitTime>60000</throttle:UnitTime>\n                        <!--It\'s possible to define tier level attributes as below for each tier level.For eg:Payment Plan for a tier\n                        <wsp:Policy>\n                        <throttle:Attributes>\n                            <throttle:Attribute1>xxxx</throttle:Attribute1>\n                            <throttle:Attribute2>xxxx</throttle:Attribute2>\n                        </throttle:Attributes>\n                        </wsp:Policy>\n                        -->\n                        <wsp:Policy>\n                            <throttle:Attributes>\n                                <throttle:x-wso2-BillingPlan>FREE</throttle:x-wso2-BillingPlan>\n                                <throttle:x-wso2-StopOnQuotaReach>true</throttle:x-wso2-StopOnQuotaReach>\n                            </throttle:Attributes>\n                        </wsp:Policy>\n                    </wsp:Policy>\n                </throttle:Control>\n            </wsp:Policy>\n        </wsp:Policy>\n        <wsp:Policy>\n            <!--It\'s possible to define a display name for a tier to show in UIs by adding the attribute of throttle:displayName=\"xxxx\" for <throttle:ID>\n            element.\n            For ex:  <throttle:ID throttle:type=\"ROLE\" throttle:displayName=\"xxxx\">Gold</throttle:ID>\n                     ......\n            -->\n            <throttle:ID throttle:type=\"ROLE\">Unauthenticated</throttle:ID>\n            <wsp:Policy>\n                <throttle:Control>\n                    <wsp:Policy>\n                        <throttle:MaximumCount>60</throttle:MaximumCount>\n                        <throttle:UnitTime>60000</throttle:UnitTime>\n                        <!--It\'s possible to define tier level attributes as below for each tier level.For eg:Payment Plan for a tier\n                        <wsp:Policy>\n                        <throttle:Attributes>\n                            <throttle:Attribute1>xxxx</throttle:Attribute1>\n                            <throttle:Attribute2>xxxx</throttle:Attribute2>\n                        </throttle:Attributes>\n                        </wsp:Policy>\n                        -->\n                    </wsp:Policy>\n                </throttle:Control>\n            </wsp:Policy>\n        </wsp:Policy>\n    </throttle:MediatorThrottleAssertion>\n</wsp:Policy>\n',-1234),(113,'<sequence xmlns=\"http://ws.apache.org/ns/synapse\" name=\"preserve_accept_header\">\n    <property name=\"WSO2_AM_API_ACCEPT_MESSAGE_TYPE\" expression=\"get-property(\'transport\', \'Accept\')\" scope=\"default\"/>\n    <property name=\"Accept\" scope=\"transport\" action=\"remove\"/>\n</sequence>\n',-1234),(114,'<sequence xmlns=\"http://ws.apache.org/ns/synapse\" name=\"debug_in_flow\">\n    <log level=\"full\">\n        <property name=\"IN_MESSAGE\" value=\"IN_MESSAGE\"/>\n    </log>\n\n    <property name=\"msgID\" expression=\"get-property(\'MessageID\')\"/>\n\n    <log level=\"custom\">\n        <property name=\"Host\" expression=\"get-property(\'transport\', \'Host\')\"/>\n        <property name=\"Context\" expression=\"get-property(\'To\')\"/>\n        <property name=\"Http_Method\" expression=\"get-property(\'axis2\', \'HTTP_METHOD\')\"/>\n        <property name=\"Resource\" expression=\"get-property(\'axis2\', \'REST_URL_POSTFIX\')\"/>\n        <property name=\"Origin\" expression=\"get-property(\'transport\', \'Origin\')\"/>\n        <property name=\"Content-Type\" expression=\"get-property(\'transport\', \'Content-Type\')\"/>\n        <property name=\"Message_Id\" expression=\"get-property(\'msgID\')\"/>\n    </log>\n</sequence>',-1234),(115,'<sequence xmlns=\"http://ws.apache.org/ns/synapse\"  name=\"json_to_xml_in_message\">      \n    <property name=\"messageType\" value=\"application/xml\" scope=\"axis2\"/>\n</sequence>\n',-1234),(116,'<sequence xmlns=\"http://ws.apache.org/ns/synapse\" name=\"log_in_message\">\n    <log level=\"full\">\n        <property name=\"IN_MESSAGE\" value=\"IN_MESSAGE\"/>\n    </log>\n</sequence>',-1234),(117,'<sequence xmlns=\"http://ws.apache.org/ns/synapse\"  name=\"xml_to_json_in_message\">      \n    <property name=\"messageType\" value=\"application/json\" scope=\"axis2\"/>\n</sequence>\n',-1234),(118,'<sequence xmlns=\"http://ws.apache.org/ns/synapse\"  name=\"apply_accept_header\">\n      <property name=\"messageType\"\n                expression=\"get-property(\'default\', \'WSO2_AM_API_ACCEPT_MESSAGE_TYPE\')\"\n                scope=\"axis2\"/>\n</sequence>\n',-1234),(119,'<sequence xmlns=\"http://ws.apache.org/ns/synapse\"  name=\"xml_to_json_out_message\">      \n    <property name=\"messageType\" value=\"application/json\" scope=\"axis2\"/>\n</sequence>\n',-1234),(120,'<sequence xmlns=\"http://ws.apache.org/ns/synapse\"  name=\"json_to_xml_out_message\">      \n    <property name=\"messageType\" value=\"application/xml\" scope=\"axis2\"/>\n</sequence>\n',-1234),(121,'<sequence xmlns=\"http://ws.apache.org/ns/synapse\" name=\"debug_out_flow\">\n    <log level=\"full\">\n        <property name=\"OUT_MESSAGE\" value=\"OUT_MESSAGE\"/>\n    </log>\n    <log level=\"custom\">\n        <property name=\"Endpoint\" expression=\"get-property(\'ENDPOINT_PREFIX\')\"/>\n        <property name=\"Content-Type\" expression=\"get-property(\'transport\', \'Content-Type\')\"/>\n        <property name=\"Correlation_Id\" expression=\"get-property(\'msgID\')\" scope=\"axis2\" />\n    </log>\n</sequence>',-1234),(122,'<sequence xmlns=\"http://ws.apache.org/ns/synapse\" name=\"log_out_message\">\n    <log level=\"full\">\n        <property name=\"OUT_MESSAGE\" value=\"OUT_MESSAGE\"/>\n    </log>\n</sequence>',-1234),(123,'<sequence xmlns=\"http://ws.apache.org/ns/synapse\" name=\"json_fault\">\n    <log level=\"custom\">\n        <property name=\"STATUS\" value=\"Executing custom \'fault\' sequence\"/>\n        <property name=\"ERROR_CODE\" expression=\"get-property(\'ERROR_CODE\')\"/>\n        <property name=\"ERROR_MESSAGE\" expression=\"get-property(\'ERROR_MESSAGE\')\"/>\n    </log>\n    <payloadFactory>\n        <format>\n            <am:fault xmlns:am=\"http://wso2.org/apimanager\">\n                <am:code>$1</am:code>\n                <am:type>Status report</am:type>\n                <am:message>Runtime Error</am:message>\n                <am:description>$2</am:description>\n            </am:fault>\n        </format>\n        <args>\n            <arg expression=\"$ctx:ERROR_CODE\"/>\n            <arg expression=\"$ctx:ERROR_MESSAGE\"/>\n        </args>\n    </payloadFactory>\n    <filter xpath=\"$ctx:CUSTOM_HTTP_SC\">\n        <then>\n            <property name=\"HTTP_SC\" expression=\"$ctx:CUSTOM_HTTP_SC\" scope=\"axis2\"/>\n        </then>\n        <else>\n            <property name=\"HTTP_SC\" value=\"500\" scope=\"axis2\"/>\n        </else>\n    </filter>\n    <class name=\"org.wso2.carbon.apimgt.gateway.handlers.analytics.APIMgtFaultHandler\"/>\n    <property name=\"RESPONSE\" value=\"true\"/>\n    <header name=\"To\" action=\"remove\"/>\n    <property name=\"NO_ENTITY_BODY\" scope=\"axis2\" action=\"remove\"/>\n    <property name=\"ContentType\" scope=\"axis2\" action=\"remove\"/>\n    <property name=\"Authorization\" scope=\"transport\" action=\"remove\"/>\n    <property name=\"Host\" scope=\"transport\" action=\"remove\"/>\n    <property name=\"Accept\" scope=\"transport\" action=\"remove\"/>\n    <property name=\"X-JWT-Assertion\" scope=\"transport\" action=\"remove\"/>\n    <property name=\"messageType\" value=\"application/json\" scope=\"axis2\"/>\n    <send/>\n    <drop/>\n</sequence>',-1234),(124,'<sequence xmlns=\"http://ws.apache.org/ns/synapse\" name=\"debug_json_fault\">\n    <log level=\"custom\">\n        <property name=\"STATUS\" value=\"Executing custom \'fault\' sequence\"/>\n        <property name=\"ERROR_CODE\" expression=\"get-property(\'ERROR_CODE\')\"/>\n        <property name=\"ERROR_MESSAGE\" expression=\"get-property(\'ERROR_MESSAGE\')\"/>\n        <property name=\"ERROR_DETAIL\" expression=\"get-property(\'ERROR_DETAIL\')\"/>\n        <property name=\"ERROR_EXCEPTION\" expression=\"get-property(\'ERROR_EXCEPTION\')\"/>\n        <property name=\"Endpoint\" expression=\"get-property(\'ENDPOINT_PREFIX\')\"/>\n        <property name=\"Content-Type\" expression=\"get-property(\'transport\', \'Content-Type\')\"/>\n        <property name=\"Correlation_Id\" expression=\"get-property(\'msgID\')\" scope=\"axis2\" />\n    </log>\n    <payloadFactory>\n        <format>\n            <am:fault xmlns:am=\"http://wso2.org/apimanager\">\n                <am:code>$1</am:code>\n                <am:type>Status report</am:type>\n                <am:message>Runtime Error</am:message>\n                <am:description>$2</am:description>\n            </am:fault>\n        </format>\n        <args>\n            <arg expression=\"$ctx:ERROR_CODE\"/>\n            <arg expression=\"$ctx:ERROR_MESSAGE\"/>\n        </args>\n    </payloadFactory>\n    <filter xpath=\"$ctx:CUSTOM_HTTP_SC\">\n        <then>\n            <property name=\"HTTP_SC\" expression=\"$ctx:CUSTOM_HTTP_SC\" scope=\"axis2\"/>\n        </then>\n        <else>\n            <property name=\"HTTP_SC\" value=\"500\" scope=\"axis2\"/>\n        </else>\n    </filter>\n    <class name=\"org.wso2.carbon.apimgt.gateway.handlers.analytics.APIMgtFaultHandler\"/>\n    <property name=\"RESPONSE\" value=\"true\"/>\n    <header name=\"To\" action=\"remove\"/>\n    <property name=\"NO_ENTITY_BODY\" scope=\"axis2\" action=\"remove\"/>\n    <property name=\"ContentType\" scope=\"axis2\" action=\"remove\"/>\n    <property name=\"Authorization\" scope=\"transport\" action=\"remove\"/>\n    <property name=\"Host\" scope=\"transport\" action=\"remove\"/>\n    <property name=\"Accept\" scope=\"transport\" action=\"remove\"/>\n    <property name=\"X-JWT-Assertion\" scope=\"transport\" action=\"remove\"/>\n    <property name=\"messageType\" value=\"application/json\" scope=\"axis2\"/>\n    <send/>\n    <drop/>\n</sequence>',-1234),(125,'{\"id\":\"log-analyzer\",\"title\":\"Log Analyzer for APIM\",\"description\":\"\",\"permissions\":{\"viewers\":[\"Internal/everyone\"],\"editors\":[\"Internal/everyone\"]},\"pages\":[{\"id\":\"overview\",\"title\":\"Overview\",\"layout\":{\"content\":{\"loggedIn\":{\"blocks\":[{\"id\":\"overview-date-range-picker\",\"x\":0,\"y\":0,\"width\":12,\"height\":2,\"banner\":false},{\"id\":\"overview-log-event-chart\",\"x\":0,\"y\":2,\"width\":12,\"height\":4,\"banner\":false}]}},\"fluidLayout\":false},\"isanon\":false,\"content\":{\"default\":{\"overview-date-range-picker\":[{\"id\":\"Date_Range_Picker-overview\",\"content\":{\"id\":\"Date_Range_Picker\",\"title\":\"Date Range Picker\",\"type\":\"gadget\",\"thumbnail\":\"store://gadget/Date_Range_Picker/index.png\",\"data\":{\"url\":\"store://gadget/Date_Range_Picker/index.xml\"},\"notify\":{\"range-selected\":{\"type\":\"date-range\",\"description\":\"This notifies selected state\"}},\"listen\":{\"chart-zoomed\":{\"type\":\"date-range\",\"description\":\"This notifies message generated in publisher\"}},\"styles\":{\"no_heading\":false,\"hide_gadget\":false,\"borders\":false,\"titlePosition\":\"left\",\"title\":\"Date Range Picker\"},\"options\":{},\"locale_titles\":{\"en-US\":\"Date Range Picker\"},\"settings\":{}}}],\"overview-log-event-chart\":[{\"id\":\"logEvents-overview\",\"content\":{\"id\":\"logEvents\",\"title\":\"Log Event Chart\",\"type\":\"gadget\",\"thumbnail\":\"store://gadget/LogEvents/img/thumbnail.png\",\"data\":{\"url\":\"store://gadget/LogEvents/index.xml\"},\"listen\":{\"subscriber\":{\"type\":\"date-range\",\"description\":\"Used to listen to any date range-selected\",\"on\":[{\"from\":\"Date_Range_Picker-overview\",\"event\":\"range-selected\"}]}},\"styles\":{\"no_heading\":false,\"hide_gadget\":false,\"titlePosition\":\"left\",\"title\":\"Log Events\"},\"options\":{\"type\":{\"type\":\"STRING\",\"title\":\"Gadget Type\",\"value\":\"APIM\",\"options\":[],\"required\":true}},\"locale_titles\":{\"en-US\":\"Log Events\"},\"settings\":{}}}]},\"anon\":{}}},{\"id\":\"application-errors\",\"title\":\"Application Errors\",\"layout\":{\"content\":{\"loggedIn\":{\"blocks\":[{\"id\":\"application-errors-date-range-picker\",\"x\":0,\"y\":0,\"width\":12,\"height\":2,\"banner\":false},{\"id\":\"application-errors-log-error-bar-chart\",\"x\":0,\"y\":2,\"width\":12,\"height\":6,\"banner\":false},{\"id\":\"application-errors-filtered-message\",\"x\":0,\"y\":8,\"width\":12,\"height\":7,\"banner\":false},{\"id\":\"application-errors-log-viewer\",\"x\":0,\"y\":15,\"width\":12,\"height\":6,\"banner\":false}]}},\"fluidLayout\":false},\"isanon\":false,\"content\":{\"default\":{\"application-errors-date-range-picker\":[{\"id\":\"Date_Range_Picker-application-errors\",\"content\":{\"id\":\"Date_Range_Picker\",\"title\":\"Date Range Picker\",\"type\":\"gadget\",\"thumbnail\":\"store://gadget/Date_Range_Picker/index.png\",\"data\":{\"url\":\"store://gadget/Date_Range_Picker/index.xml\"},\"notify\":{\"range-selected\":{\"type\":\"date-range\",\"description\":\"This notifies selected state\"}},\"listen\":{\"chart-zoomed\":{\"type\":\"date-range\",\"description\":\"This notifies message generated in publisher\"}},\"styles\":{\"no_heading\":false,\"hide_gadget\":false,\"borders\":false,\"titlePosition\":\"left\",\"title\":\"Date Range Picker\"},\"options\":{},\"locale_titles\":{\"en-US\":\"Date Range Picker\"},\"settings\":{}}}],\"application-errors-log-error-bar-chart\":[{\"id\":\"LogErrorBarChart-application-errors\",\"content\":{\"id\":\"LogErrorBarChart\",\"title\":\"Log Error Bar Chart\",\"type\":\"gadget\",\"thumbnail\":\"store://gadget/LogErrorBarChart/img/thumbnail.png\",\"data\":{\"url\":\"store://gadget/LogErrorBarChart/index.xml\"},\"notify\":{\"publisher\":{\"type\":\"filter\",\"description\":\"This notifies selected filter\"}},\"listen\":{\"subscriber\":{\"type\":\"date-range\",\"description\":\"Used to listen to any date range-selected\",\"on\":[{\"from\":\"Date_Range_Picker-application-errors\",\"event\":\"range-selected\"}]}},\"styles\":{\"no_heading\":false,\"hide_gadget\":false,\"titlePosition\":\"left\",\"title\":\"Errors Distribution\"},\"options\":{\"type\":{\"type\":\"STRING\",\"title\":\"Gadget Type\",\"value\":\"APIM\",\"options\":[],\"required\":true}},\"locale_titles\":{\"en-US\":\"Errors Distribution\"},\"settings\":{}}}],\"application-errors-filtered-message\":[{\"id\":\"filteredLogMessages-application-errors\",\"content\":{\"id\":\"filteredLogMessages\",\"title\":\"APIM Filtered Messages\",\"type\":\"gadget\",\"thumbnail\":\"store://gadget/LogErrorFilteredMessage/img/thumbnail.png\",\"data\":{\"url\":\"store://gadget/LogErrorFilteredMessage/index.xml\"},\"notify\":{\"publisher\":{\"type\":\"filter-range\",\"description\":\"This notifies selected filter\"}},\"listen\":{\"subscriber\":{\"type\":\"filter\",\"description\":\"Used to listen to any filters\",\"on\":[{\"from\":\"LogErrorBarChart-application-errors\",\"event\":\"publisher\"}]}},\"styles\":{\"no_heading\":false,\"hide_gadget\":false,\"titlePosition\":\"left\",\"title\":\"Filtered Messages\"},\"options\":{\"type\":{\"type\":\"STRING\",\"title\":\"Gadget Type\",\"value\":\"APIM\",\"options\":[],\"required\":true}},\"locale_titles\":{\"en-US\":\"Filtered Messages\"},\"settings\":{}}}],\"application-errors-log-viewer\":[{\"id\":\"logViewer-application-errors\",\"content\":{\"id\":\"logViewer\",\"title\":\"Log Viewer\",\"type\":\"gadget\",\"thumbnail\":\"store://gadget/LogViewer/index.png\",\"data\":{\"url\":\"store://gadget/LogViewer/index.xml\"},\"listen\":{\"subscriber\":{\"type\":\"filter-range\",\"description\":\"Used to listen to any filters\",\"on\":[{\"from\":\"filteredLogMessages-application-errors\",\"event\":\"publisher\"}]}},\"styles\":{\"no_heading\":false,\"hide_gadget\":false,\"titlePosition\":\"left\",\"title\":\"Log Viewer\"},\"options\":{\"type\":{\"type\":\"STRING\",\"title\":\"Gadget Type\",\"value\":\"APIM\",\"options\":[],\"required\":true}},\"locale_titles\":{\"en-US\":\"Log Viewer\"},\"settings\":{}}}]},\"anon\":{}}},{\"id\":\"api-deployment-stats\",\"title\":\"API Deployment Stats\",\"layout\":{\"content\":{\"loggedIn\":{\"blocks\":[{\"id\":\"artifact-deployment-stats-date-range-picker\",\"x\":0,\"y\":0,\"width\":12,\"height\":2,\"banner\":false},{\"id\":\"artifact-deployment-stats-artifact-deployment\",\"x\":0,\"y\":2,\"width\":6,\"height\":6,\"banner\":false},{\"id\":\"artifact-deployment-stats-artifact-deleted\",\"x\":6,\"y\":2,\"width\":6,\"height\":6,\"banner\":false}]}},\"fluidLayout\":false},\"isanon\":false,\"content\":{\"default\":{\"artifact-deployment-stats-date-range-picker\":[{\"id\":\"Date_Range_Picker-artifact-deployment-stats\",\"content\":{\"id\":\"Date_Range_Picker\",\"title\":\"Date Range Picker\",\"type\":\"gadget\",\"category\":\"Widgets\",\"thumbnail\":\"store://gadget/Date_Range_Picker/index.png\",\"data\":{\"url\":\"store://gadget/Date_Range_Picker/index.xml\"},\"notify\":{\"range-selected\":{\"type\":\"date-range\",\"description\":\"This notifies selected state\"}},\"listen\":{\"chart-zoomed\":{\"type\":\"date-range\",\"description\":\"This notifies message generated in publisher\"}},\"styles\":{\"no_heading\":false,\"hide_gadget\":false,\"borders\":false,\"titlePosition\":\"left\",\"title\":\"Date Range Picker\"},\"options\":{},\"locale_titles\":{\"en-US\":\"Date Range Picker\"},\"settings\":{}}}],\"artifact-deployment-stats-artifact-deployment\":[{\"id\":\"logArtifactDeployed-artifact-deployment-stats\",\"content\":{\"id\":\"logArtifactDeployed\",\"title\":\"Deployed Artifacts\",\"type\":\"gadget\",\"thumbnail\":\"store://gadget/LogArtifactDeployed/img/thumbnail.png\",\"data\":{\"url\":\"store://gadget/LogArtifactDeployed/index.xml\"},\"listen\":{\"subscriber\":{\"type\":\"date-range\",\"description\":\"Used to listen to any date range-selected\",\"on\":[{\"from\":\"Date_Range_Picker-artifact-deployment-stats\",\"event\":\"range-selected\"}]}},\"styles\":{\"no_heading\":false,\"hide_gadget\":false,\"titlePosition\":\"left\",\"title\":\"Deployed Artifacts\"},\"options\":{\"type\":{\"type\":\"STRING\",\"title\":\"Gadget Type\",\"value\":\"APIM\",\"options\":[],\"required\":true}},\"locale_titles\":{\"en-US\":\"Deployed APIs\"},\"settings\":{}}}],\"artifact-deployment-stats-artifact-deleted\":[{\"id\":\"logArtifactDeleted-artifact-deployment-stats\",\"content\":{\"id\":\"logArtifactDeleted\",\"title\":\"APIM Artifact Deleted\",\"type\":\"gadget\",\"thumbnail\":\"store://gadget/LogArtifactDeleted/img/thumbnail.png\",\"data\":{\"url\":\"store://gadget/LogArtifactDeleted/index.xml\"},\"listen\":{\"subscriber\":{\"type\":\"date-range\",\"description\":\"Used to listen to any date range-selected\",\"on\":[{\"from\":\"Date_Range_Picker-artifact-deployment-stats\",\"event\":\"range-selected\"}]}},\"styles\":{\"no_heading\":false,\"hide_gadget\":false,\"titlePosition\":\"left\",\"title\":\"Deleted Artifacts\"},\"options\":{\"type\":{\"type\":\"STRING\",\"title\":\"Gadget Type\",\"value\":\"APIM\",\"options\":[],\"required\":true}},\"locale_titles\":{\"en-US\":\"Deleted APIs\"},\"settings\":{}}}]},\"anon\":{}}},{\"id\":\"login-errors\",\"title\":\"Login Errors\",\"layout\":{\"content\":{\"loggedIn\":{\"blocks\":[{\"id\":\"logging-stats-date-range-picker\",\"x\":0,\"y\":0,\"width\":12,\"height\":2,\"banner\":false},{\"id\":\"logging-stats-invalid-logging-count\",\"x\":0,\"y\":2,\"width\":12,\"height\":5,\"banner\":false}]}},\"fluidLayout\":false},\"isanon\":false,\"content\":{\"default\":{\"logging-stats-date-range-picker\":[{\"id\":\"Date_Range_Picker-logging-stats\",\"content\":{\"id\":\"Date_Range_Picker\",\"title\":\"Date Range Picker\",\"type\":\"gadget\",\"category\":\"Widgets\",\"thumbnail\":\"store://gadget/Date_Range_Picker/index.png\",\"data\":{\"url\":\"store://gadget/Date_Range_Picker/index.xml\"},\"notify\":{\"range-selected\":{\"type\":\"date-range\",\"description\":\"This notifies selected state\"}},\"listen\":{\"chart-zoomed\":{\"type\":\"date-range\",\"description\":\"This notifies message generated in publisher\"}},\"styles\":{\"no_heading\":false,\"hide_gadget\":false,\"borders\":false,\"titlePosition\":\"left\",\"title\":\"Date Range Picker\"},\"options\":{},\"locale_titles\":{}}}],\"logging-stats-invalid-logging-count\":[{\"id\":\"invalidLoggingCount-logging-stats\",\"content\":{\"id\":\"invalidLoggingCount\",\"title\":\"Invalid Login Count\",\"type\":\"gadget\",\"thumbnail\":\"store://gadget/LogInvalidLoggingCount/img/thumbnail.png\",\"data\":{\"url\":\"store://gadget/LogInvalidLoggingCount/index.xml\"},\"notify\":{\"publisher\":{\"type\":\"filter\",\"description\":\"This notifies selected filter\"}},\"listen\":{\"subscriber\":{\"type\":\"date-range\",\"description\":\"Used to listen to any date range-selected\",\"on\":[{\"from\":\"Date_Range_Picker-logging-stats\",\"event\":\"range-selected\"}]}},\"styles\":{\"no_heading\":false,\"hide_gadget\":false,\"titlePosition\":\"left\",\"title\":\"Invalid Login Count\"},\"options\":{\"type\":{\"type\":\"STRING\",\"title\":\"Gadget Type\",\"value\":\"APIM\",\"options\":[],\"required\":true}},\"locale_titles\":{\"en-US\":\"Invalid Login Count\"},\"settings\":{}}}]},\"anon\":{}}},{\"id\":\"number-of-api-failures\",\"title\":\"Number of API Failures\",\"layout\":{\"content\":{\"loggedIn\":{\"blocks\":[{\"id\":\"number-of-failures-date-range-picker\",\"x\":0,\"y\":0,\"width\":12,\"height\":2,\"banner\":false},{\"id\":\"number-of-failures-message-processing\",\"x\":0,\"y\":2,\"width\":12,\"height\":5,\"banner\":false}]}},\"fluidLayout\":false},\"isanon\":false,\"content\":{\"default\":{\"number-of-failures-date-range-picker\":[{\"id\":\"Date_Range_Picker-number-of-failures\",\"content\":{\"id\":\"Date_Range_Picker\",\"title\":\"Date Range Picker\",\"type\":\"gadget\",\"category\":\"Widgets\",\"thumbnail\":\"store://gadget/Date_Range_Picker/index.png\",\"data\":{\"url\":\"store://gadget/Date_Range_Picker/index.xml\"},\"notify\":{\"range-selected\":{\"type\":\"date-range\",\"description\":\"This notifies selected state\"}},\"listen\":{\"chart-zoomed\":{\"type\":\"date-range\",\"description\":\"This notifies message generated in publisher\"}},\"styles\":{\"no_heading\":false,\"hide_gadget\":false,\"borders\":false,\"titlePosition\":\"left\",\"title\":\"Date Range Picker\"},\"options\":{},\"locale_titles\":{\"en-US\":\"Date Range Picker\"},\"settings\":{}}}],\"number-of-failures-message-processing\":[{\"id\":\"logAPIMMessageProcessing-number-of-failures\",\"content\":{\"id\":\"logAPIMMessageProcessing\",\"title\":\"Errors in API Message Processing\",\"type\":\"gadget\",\"thumbnail\":\"store://gadget/LogAPIMMessageProcessing/img/thumbnail.png\",\"data\":{\"url\":\"store://gadget/LogAPIMMessageProcessing/index.xml\"},\"listen\":{\"subscriber\":{\"type\":\"date-range\",\"description\":\"Used to listen to any date range-selected\",\"on\":[{\"from\":\"Date_Range_Picker-number-of-failures\",\"event\":\"range-selected\"}]}},\"styles\":{\"no_heading\":false,\"hide_gadget\":false,\"borders\":false,\"titlePosition\":\"left\",\"title\":\"Errors in API Message Processing\"},\"options\":{},\"locale_titles\":{\"en-US\":\"Errors in API Message Processing\"},\"settings\":{}}}]},\"anon\":{}}},{\"id\":\"access-token-errors\",\"title\":\"Access Token Errors\",\"layout\":{\"content\":{\"loggedIn\":{\"blocks\":[{\"id\":\"access-token-errors-date-range-picker\",\"x\":0,\"y\":0,\"width\":12,\"height\":2,\"banner\":false},{\"id\":\"access-token-errors-table\",\"x\":0,\"y\":6,\"width\":12,\"height\":4,\"banner\":false},{\"id\":\"access-token-errors-chart\",\"x\":0,\"y\":2,\"width\":6,\"height\":4,\"banner\":false},{\"id\":\"access-token-errors-log-viewer\",\"x\":0,\"y\":10,\"width\":12,\"height\":4,\"banner\":false}]}},\"fluidLayout\":false},\"isanon\":false,\"content\":{\"default\":{\"access-token-errors-date-range-picker\":[{\"id\":\"Date_Range_Picker-access-token-errors\",\"content\":{\"id\":\"Date_Range_Picker\",\"title\":\"Date Range Picker\",\"type\":\"gadget\",\"category\":\"Widgets\",\"thumbnail\":\"store://gadget/Date_Range_Picker/index.png\",\"data\":{\"url\":\"store://gadget/Date_Range_Picker/index.xml\"},\"notify\":{\"range-selected\":{\"type\":\"date-range\",\"description\":\"This notifies selected state\"}},\"listen\":{\"chart-zoomed\":{\"type\":\"date-range\",\"description\":\"This notifies message generated in publisher\"}},\"styles\":{\"no_heading\":false,\"hide_gadget\":false,\"borders\":false,\"titlePosition\":\"left\",\"title\":\"Date Range Picker\"},\"options\":{},\"locale_titles\":{\"en-US\":\"Date Range Picker\"},\"settings\":{}}}],\"access-token-errors-chart\":[{\"id\":\"logApiTokenByStatus-access-token-errors\",\"content\":{\"id\":\"logApiTokenByStatus\",\"title\":\"Errors Distribution\",\"type\":\"gadget\",\"thumbnail\":\"store://gadget/LogApiTokenByStatus/img/thumbnail.png\",\"data\":{\"url\":\"store://gadget/LogApiTokenByStatus/index.xml\"},\"notify\":{\"publisher\":{\"type\":\"api-key-filter\",\"description\":\"This notifies selected API Key filter\"}},\"listen\":{\"subscriber\":{\"type\":\"date-range\",\"description\":\"Used to listen to any date range-selected\",\"on\":[{\"from\":\"Date_Range_Picker-access-token-errors\",\"event\":\"range-selected\"}]}},\"styles\":{\"no_heading\":false,\"hide_gadget\":false,\"borders\":false,\"titlePosition\":\"left\",\"title\":\"Errors Distribution\"},\"options\":{},\"locale_titles\":{\"en-US\":\"Errors Distribution\"},\"settings\":{}}}],\"access-token-errors-table\":[{\"id\":\"logApiTokenStatusTable-access-token-errors\",\"content\":{\"id\":\"logApiTokenStatusTable-access-token-errors\",\"title\":\"API Key Status Table\",\"type\":\"gadget\",\"thumbnail\":\"store://gadget/LogApiTokenByStatusTable/img/thumbnail.png\",\"data\":{\"url\":\"store://gadget/LogApiTokenByStatusTable/index.xml\"},\"notify\":{\"publisher\":{\"type\":\"filter-range\",\"description\":\"This notifies the log time range selected\"}},\"listen\":{\"api-keys-subscriber\":{\"type\":\"api-key-filter\",\"description\":\"Used to listen to any filters\",\"on\":[{\"from\":\"logApiTokenByStatus-access-token-errors\",\"event\":\"publisher\"}]}},\"styles\":{\"no_heading\":false,\"hide_gadget\":false,\"titlePosition\":\"left\",\"title\":\"Filtered Messages\"},\"options\":{},\"locale_titles\":{\"en-US\":\"Filtered Messages\"},\"settings\":{}}}],\"access-token-errors-log-viewer\":[{\"id\":\"logViewer-access-token-errors\",\"content\":{\"id\":\"logViewer\",\"title\":\"Log Viewer\",\"type\":\"gadget\",\"thumbnail\":\"store://gadget/LogViewer/index.png\",\"data\":{\"url\":\"store://gadget/LogViewer/index.xml\"},\"listen\":{\"subscriber\":{\"type\":\"filter-range\",\"description\":\"Used to listen to any filters\",\"on\":[{\"from\":\"logApiTokenStatusTable-access-token-errors\",\"event\":\"publisher\"}]}},\"styles\":{\"no_heading\":false,\"hide_gadget\":false,\"titlePosition\":\"left\",\"title\":\"Log Viewer\"},\"locale_titles\":{\"en-US\":\"Log Viewer\"},\"settings\":{},\"options\":{\"type\":{\"type\":\"STRING\",\"title\":\"Gadget Type\",\"value\":\"APIM\",\"options\":[],\"required\":true}}}}]},\"anon\":{}}},{\"id\":\"live-log-viewer\",\"title\":\"Live Log Viewer\",\"layout\":{\"content\":{\"loggedIn\":{\"blocks\":[{\"id\":\"7d8074704d9a3c81174d577910e23333\",\"x\":0,\"y\":0,\"width\":12,\"height\":11,\"banner\":false}]}},\"fluidLayout\":false},\"isanon\":false,\"content\":{\"default\":{\"7d8074704d9a3c81174d577910e23333\":[{\"id\":\"liveLogViewer-0\",\"content\":{\"id\":\"liveLogViewer\",\"title\":\"Filtered Logs for Tenant\",\"type\":\"gadget\",\"thumbnail\":\"store://gadget/LiveLogViewer/img/thumbnail.png\",\"data\":{\"url\":\"store://gadget/LiveLogViewer/index.xml\"},\"listen\":{\"subscriber\":{\"type\":\"date-range\",\"description\":\"Used to listen to any date range-selected\"}},\"styles\":{\"title\":\"Live Log viewer\",\"borders\":true},\"options\":{\"type\":{\"type\":\"STRING\",\"title\":\"Gadget Type\",\"value\":\"APIM\",\"options\":[],\"required\":true}},\"locale_titles\":{}}}]},\"anon\":{}}}],\"menu\":[{\"id\":\"landing\",\"isanon\":false,\"ishidden\":false,\"title\":\"Home\",\"subordinates\":[]}],\"identityServerUrl\":\"\",\"accessTokenUrl\":\"\",\"apiKey\":\"\",\"apiSecret\":\"\",\"theme\":\"\",\"isUserCustom\":false,\"isEditorEnable\":true,\"banner\":{\"globalBannerExists\":false,\"customBannerExists\":false},\"landing\":\"landing\",\"isanon\":false}',-1234),(127,'<inboundEndpoints><inboundListeningEndpoints><inboundEndpointListener port=\"9099\"><endpoint name=\"WebSocketInboundEndpoint\" domain=\"carbon.super\" protocol=\"ws\" injectingSeq=\"dispatchSeq\" onErrorSeq=\"fault\"><inboundParameters><inboundParameter paramName=\"ws.outflow.dispatch.sequence\" paramValue=\"outDispatchSeq\"/><inboundParameter paramName=\"ws.subprotocol.handler.class\" paramValue=\"org.wso2.carbon.inbound.endpoint.protocol.websocket.subprotocols.EchoSubprotocolHandler\"/><inboundParameter paramName=\"ws.pipeline.handler.class\" paramValue=\"org.wso2.carbon.apimgt.gateway.handlers.WebsocketHandler\"/><inboundParameter paramName=\"ws.outflow.dispatch.fault.sequence\" paramValue=\"fault\"/><inboundParameter paramName=\"ws.use.port.offset\" paramValue=\"true\"/><inboundParameter paramName=\"dispatch.custom.sequence\" paramValue=\"true\"/><inboundParameter paramName=\"ws.client.side.broadcast.level\" paramValue=\"0\"/><inboundParameter paramName=\"inbound.ws.port\" paramValue=\"9099\"/></inboundParameters></endpoint></inboundEndpointListener></inboundListeningEndpoints><inboundPollingingEndpoints/></inboundEndpoints>',-1234),(136,'<transportReceiver name=\"ws\" class=\"org.wso2.carbon.websocket.transport.WebsocketTransportListener\">\n    </transportReceiver>',-1234),(137,'<transportReceiver name=\"wss\" class=\"org.wso2.carbon.websocket.transport.WebsocketTransportListener\">\n    </transportReceiver>',-1234),(138,'<transportSender name=\"wss\" class=\"org.wso2.carbon.websocket.transport.WebsocketTransportSender\">\n    </transportSender>',-1234),(139,'âPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0ù\0\0\0\0\0\0{ Ω´\0\0\0sBIT|dà\0\0\0	pHYs\0\0\r◊\0\0\r◊B(õx\0\0\0tEXtSoftware\0www.inkscape.orgõÓ<\Z\0\0jIDATxúÌõ}TTÁù«?3wÜ√00¿ïFyô¬d°‚¡ï£FåV⁄dÛ÷»û§\'›MC6ÈzNö∞€§v∑]—$mO˜öÕ9nwœ“ú≥Î÷n–Mc∂¶®Dl»Åh\"Ñ#:8(zêÀÃùŸ?.ååÄö&ç~˛öôÁwü˚‹{ø˜˘Ω<œËB°”·Ûılñ}û ioqãk≥%=mŸÊÈ\ZtWäŒÁÎ	’¸G˙˙](ä¸«‹-æ¢H…N<π%/w˝Ê…øáE∑˜˝ÁW+ä\\ŸÂÆ]üIäîè’Í¯\"∆˙π°(2û3çv¢™ =úõ£1ñ‘îBV.ˇÒñ‰§ºÕ0ItÔæ˜Ù˚}˝Æ’±&â≈˘ÂÿR\nø≤¢;Ÿ]«±∂_Ùpn\ZÙz_ÀúeEwGE≈0ÄÊRª‹µH…Næ˝óø˚¢«¯π!äY•8≤J1\ZL4∑T—C∫)∏>˘Fïã´◊›ΩU›û}œ`MpP¯µßÁ›qHÓΩÄŒ,Õb*°QôP;∫d∫ÿD–&™™“€€K[k+ÕÆfº^\0í%âú‹ÚúNrrrÊ=ﬁU+7—w÷E_økﬁ}‹bnÑÇje˜©z>_œÊÅÅVŸ˜bK)úﬁxT&·Ø–ßÁ#dCîiäM¥ãê2åaIŸ¥}®«ˆÏÔ¿∞¸	‘£ª	ûÌ ‘ﬂÅ.ŸÅ>=C—#ˆÎÎ©€øüfW3m≠≠$à`–√¿%»»Ã‡œÚÛy¢ºú≈Ö”èy6,ê\nnâÓè»Öã\'È>]èAˆy*ÖÑ¯‚3¶5÷E[y›gı†n/âh\ryQ;}gF—˘ºAhT&8x\Z’µ]¥]j¡ñ›m\'ÿﬂN‘_l`gM\rüQÄ¸dÿÛ§õµ~‰1xπ©õÉøÔÊˇvøÀ∂˚%ÎJKÁuís0ô$FFºWµ[∂¥ÇeE»>Má™hkØô“†™\n\'O’ÛáÜë}“”äYˇ‡zŒ4≤Û∑èNÈ◊ûVÃ√j±Â‡ÖN˛Û◊kß¸>”±äååxh≈0€å•€ıjg√—©≠µ®«˜√®’›®ÕÜì€›ç˚€—g°∫vb(˛kå+üBó`\'tÆõ@Àn–®™ ¡˙z6>ˇÎ¡£πPê¢\0ÜÂO†3%bŸ˜œ¸|%∏/¬?4¿ñ J∫ªª˘õßûöÛM0DÇxUõ¯¯L‚-ô»>ÊÿTÃÊ‘iÌ∫‹µC*∑eﬂ√ò\"Û—ë7f=Eë£,·Ô——â·ﬂøäËgk(‰îÄ^ ÿ€:•-ÿ€JhHõ-BΩ≠T#⁄mGgñ–Y¥¶_êÉ.¡Ä.)C—#óó”€€K›˛˝Ä&∏%4¡Y≈a±:∏-6ÄÏÌ„˝˝usºÏŸm%&⁄JOO#zΩ@L¥uZªNw-ÕGµƒƒlN%6f±Ì8≤œÒ]-»> ÿM.:]¥¡±í`˜·)mj€^ÙÈË“Q›M˚€√m°‘ñwÓXé€‘œFàWgñ¿ Úá˙zˆ’ÓÂÅlXö¢âÄË8ÕF/†≥ÂÖè[≥÷e@Sc#O‰ÉªQXX≠º≠»>ñ8˚å∂CCΩ\0Ëı˙+£´°(2U!nºo≥ŸÜ,>◊Ûe`÷Ó@»ZF∞˚˛⁄W0ñn p§\nBﬁ:t	v∆ﬁ˛˙Ù|Ù©N™®ı⁄±πk≤ä1ﬁ˚OºÅÚ´Ô ,˛Ü¬ıË%D:::zΩT¨ä<Ø¯»ø¯h;°Qq˝VF∑=ûMùâPÔÅ}µµ|Ûﬁ{∞Ÿl◊{_¬òÕ©ƒö$<Ωç‰›Q∆çdh∏Ωﬁ@bÇøÑËËDzŒ4b±\\éèE—Bvf)ã E£ó˘¥mü∂n«ö‡†h…ÜGºòb$ÏÈ≈Ôxõ÷∂·ÂÓU?≈gG0àtπk9ﬁÒ6gΩG…À-„ŒºGââ±‚>Yá à\r˜Ú±k1—âî‹µÖRzΩ¿‡`\'>®‰‚≈ìdèóû.]\Zd°}Ô¸Ò¨ì≤Yœt\0∫T\'∫î\\‘∂Ω·áp’†ìËSùöÜ,ÚyµœΩÕ	ÄÒœ√∞º]J.Å´Ò◊˝Ç¿·ﬂ@@adxÄ‰òIÁ4KY≈=Õ{Z–KtñTÙ©Nåk*∞?ÑîbCñe^Ø™‚ı™*ﬁ¨Æfppp.ó6#&ìÑ à¯|∆∆dbM≥wõ≥EQdî1KúQ¥ FY¶∏\\kÇÉú€Ó\'—Í†ßßQ¥P¥dÇ kí»À-#Õ∂îëK^bMôKHJÃ ;´îÖˆï_Ú28ÿI^nÌ+\0» XKZj}˝.¨	úwîë±P{é……NrnªüÛÁ€È9”H∆¢ÏiZº.%9…À-„éúáº–9ß¯sé3]1¡€]¯k_\rª–†ª	„öÁ¥‰¡ \"d,%ÿŸ\0Ä⁄æµm/B˛}Ë‚«gÉàqı3W?ÉÍn‘íì∂Z¸áw\0w`zŸqﬁ¿ë\ZÇﬁNÌÛ—›ZRcAÌjd®˚(#≤&0õÕÜ¢(º¸‚KtvvÒl≈sH“ıâ$¡í¡»àEë√ÈLLîúÖÄ™ \\#Iô`tÙ<QQ&¨/tg∂M+:´’Aoüã¶√U,[ZA^nYƒKp∫ÁöUa[Pà≈b\'z<˛ÃŒ,eh∏ó∂„5»>Î‹A‚¯jSLåf≥∑ÓyÚrÀHJ∫\\˚LK-†˘h5≤œ£	;µà”û¬6\'vs∞·≈Y]ÁsÄ‡XâüWQèÌ	tÖ‹µ`–n∞p˚*Ç=GÒXM∞≥Å–ÿ0Qﬂÿ8}_Y≈D?ıÅè∂„?÷ ö~tì¥Ú].i¯˜—Ä‡i™k\'Ω›08yNg∏t≤æ¨åÚ«øã√ëÕwÀÀÁzâòÕ©èóT&ﬁÊÏ¨R∫‹µvÎ÷l¥“GKÎvº≠3÷=Ød¬Ω¶⁄äË9”HTîÖû3ç6\'∫ˆp⁄”@0∏f∆}%ÔÌ˚>zùeLfÅî?ßcØ≈|íù9ãN/9–E[P«g3ùY“b≤qt)πË$jÀnB˚4˚âUä±ÇÁNjÒﬁÑΩ≈Ü>C{£I$I‚>Úêø|˙ÛáFeÇ›áP›⁄C9vTAå(g;Dâ\"≤ÏõÎÂM¡dí–¬Öâ<]2—ÂÆ≈{Æï¡¡NN{\ZÊ¥° ‡˜c±ÿ#J\'ìÒ˚á1\ZMdåªÕ‰$Á¥v”12‚%ca	ÒÒô§,òªË-,atÙ∆Ñ+0—e¬∞¸	¸uø–æ>¸Zƒ\nÖ‡X°ÕtµØÇAg¨°-~;RCÃO>A}˘ÊNî[Óy®åÆò6ﬁ¨ÆÊõô∞\"m˙!(øyÄC˝˛iXWZ2≈ç* (K‹ú/o2qqvb¢≠$%Ê;à5I®™Bvfi∏<2Aßª6¢h<WÜGºX‚Ïöƒ©¬ÀXT¬≤¢\nl)Ö»>œúfªªVl¢∞†UU8?ÿ9Á±-Ÿ0ÁcÆ∆‹Eñó„ˇ‡ﬂ—E[0‹?•}¬éöÎt	vÙ∑ØÇ#5¯ﬂ˚¬ù˜†K∞£∂ÏFmyù’NB˛ZûH/¶©±ëüjÂÓÖ∞nëV ûå˚º¬AºÒ	‹wˇ}<˘ÙÂ5cØ◊K≈˜üeÕ⁄µÛ^©ò`\"hÒ‚Ú†™\n¢h	«C7íâU)…âœ7µ\\bK)ƒñRHÀ±Ì|Ï⁄éÈfCaA9gΩ-4™bÃ?Ã˙Á∂√f◊o•∑ﬂEjJ!√#ﬁp∏1_Ê%:]¥Esõ¶ƒp,7ô	¨OœèpΩB∆RÙQ?’÷au	vÇÓF0~˝ËLV“MVû≠xé-ïïÏ:—«âZ=nat–3\rg¿u§T;ﬂy¸qúNÕ’»≤Ãæ⁄Zö].˛Ó˘ênøæÚÜîÏƒÔ	oÖZ ∞∏†ú¥‘\"å∆X¸˛·ÎÍ2~øñπõÕ©·zﬂt\\k…nÊ˛áØkº¢haŸ“\nNû™øÆÊ):@õ©¶v¡B^iÑÎ’YlDoÅ#5®ü’\Z:ãa’ﬂbpñÜW(\0÷ïñ‚t:ŸYS√Æöùº‘˘Ê[,æ~Ô:^›∫5‚˜◊´™ÿYS√[ˇª+,ƒÎ!=≠ò°·^ŒùogìÂì§•aéµ1xaÓÆj&ÜÜ5°-êÚ9wæ}Fª®i\\Ôl¡ Lk¶ßcâ≥kí¬ÖÈâƒI0ààQ“”äÁÂûØdﬁ¢3Æº˙6(„™\r†üæ{√í≤7Lên∑ÛlEﬂ€∞ÅÆŒNdYª¢(íìõã…tYÃä¢⁄+Ø–‘ÿ»O6möµ‡ÇAï‡Kv·Òcëíù∏ªÎ∏p± ¬µ$ƒgﬁP—]ö®_Y.¥‚h•‡Œ«à5I$ƒgŒ∫Ô∂„5‰Ê|ãUÀ7·π\"+n=^ÉNg`M…OëeODΩÌ¥ßÅë/´WæH@UPô]{Ê=€N`ò®Û¯˝#¯˝#çS∑-MÀµñyföÁà(ä‰]ED™™“ÏrÒÎÌˇÕ»™íímØ‰“Ë˘´¶¸Má´8wÆ#c©™¬©Sı®™FOO#MT1pnÍö¥œÁ°Èp’åKZÚx˚¿πV¸˛aöWÖ˚≠>6!Çæ~ÕG´±ß”}J[Â±Z(cr∏üâ„⁄⁄kEKxLÕ-’TUUhkØa‰íÔxF~≤ªé°·>b¢≠òLRƒnÒ¡ù4Æ\nØHk€^uË9”qŒŸ D¢Dã∂]˝ÕˇZ2ô$ñUê±hˆÌÀ¿õ’’¸r€ø‚ıN}˚÷óïÒ ÷◊f<ˆ›˜ûûRoªŸXµb…INvΩÛ(yπe,[ZÅ,{ÿıŒçﬂNÂ»˙ŸY•[\0kJ~∆Ó=OÖﬂ§ŸV“ø§€Ìº∞Òá”∂- ÃúÒ∏éª√3∆Õå96{z1yπeÿR\nââN¸‹^ƒ‰‰ºé¨Rmª∫-•pK¢’Qy¶Ô0-«∂ìÁc2¬õkY$T9wæùè]€n˝#8”wõ≠ê¢%0\Zc	t~¢ã5IÿR\nÎ£¢‚Ñˇ\r÷÷æssóª∂≤”˝{§d\'∑ﬂv?∂Ûﬂ\n˛eDì˘ÿµ\rÔ@Î-¡MBDl)Ö(c2>üÁÜoç5I¸’∑Îàää”¡∂ÓrÔ]}∞aÀj≥9µrp∞ìK£ÁoË…oqÛ`D¨VR≤Û@zZq}^nŸÊâ∂)ˇ¯∞ÒïÕùÓ⁄Z∏≈ÕÖe!;ªî¬Ç\'$\'Âò‹ˆˇM…OÏoÍ∆≥\0\0\0\0IENDÆB`Ç',-1234),(140,'âPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0P\0\0\03§ÿ\0\0\0sBIT|dà\0\0\0	pHYs\0\0\r◊\0\0\r◊B(õx\0\0\0tEXtSoftware\0www.inkscape.orgõÓ<\Z\0\0\0|IDAT(ë•êª\rÄ0p¡\"Ã≈P4ÃE¡&i(lä8¸E RYÁ˜±“LÛ`\0¢∫–‚ÔÁ–Ñbr\'=\0ÇYÃ5‚‡tâ9∫Æ3ß`?ƒñƒπ˝©©Êd•yŒØR!’c•˜ﬂ(íl•/4R∞;—79ﬂéˇ–^!ö»≤é\0ÏNø°≠—¥⁄s\0\0\0\0IENDÆB`Ç',-1234),(141,'GIF89a\0\0≥\0\0‰ﬂÓÒÔ˜«º⁄ÌÍÙÂﬂÓÌÈÛıÛ¯”À„ÍÊÚÏËÛ€’ËÌıÔÏıÒÓˆÓÎÙÌÈÙ!˘\0\0\0\0\0,\0\0\0\0\0\0@S…Iëª8ª«ªE(é≈bûË¢≠IÎæI#œt√‹xŒ¨⁄ÁˇÖpHTé»$!¿l:µhj™´ÚÆºÅvÀ\0ø``L.Ë¥˙ hªﬂÉ|N7D\0\0;',-1234),(142,'GIF89a\0\0Ñ\Z\0ŒƒﬁŒ«€”Õ€◊”‹⁄’ﬂ›Ÿ„·›Á‚‡ÊÂ‡ÎÈ‰ÔÌËÛÒÏ˜ÚÌ¯ÛÓ¯ÛÔ˘ÙÔ˘Ù˘ıÒ˘ıÒ˙ˆÚ˙ˆÛ˙˜Ù˚¯ı˚¯¯¯˙¯˝¸˙ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ!˛Created with GIMP\0!˘\n\0\0,\0\0\0\0\0\0\0†Äe$fUEMR=N√,JÇ\0◊1Ñ\0;',-1234),(143,'âPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0·\0\0\0\0\0\0≥fãÓ\0\0\0sBIT|dà\0\0\0	pHYs\0\0\r◊\0\0\r◊B(õx\0\0\0tEXtSoftware\0www.inkscape.orgõÓ<\Z\0\0\0WIDATXÖÌ”1\0 Aıˇ>;+\r\"öù¬Jè°KRª§uDÏd_I¨ñS«Ï‰1ﬂıÃY„πe„É>çENˆ!ËúO¬àU≈≈XB†KõYl\ZÔ˚>üQ\0\0\0\0IENDÆB`Ç',-1234),(144,'âPNG\r\n\Z\n\0\0\0\rIHDR\0\0C\0\0\0P\0\0\0\Z‰qá\0\0\0sBIT|dà\0\0\0	pHYs\0\0\r◊\0\0\r◊B(õx\0\0\0tEXtSoftware\0www.inkscape.orgõÓ<\Z\0\0 \0IDATxúÏΩ…≤‰∏“&ˆ9¿!\"ŒêCU]˚[f2”V¶ÖÃz”Ø†µL/°ß“s»Ù ΩíıÚÔ{´r8S\0ﬁ\0$&2xNFVe÷ûv2H–19A˙Gw@ˇÔˇıˇ0à˛◊Ø¯∑ﬂ˛Û“ÂåÜ˚w¸œˇÀŸÃ\0_Nˇ?˛øˇ˙ø*œ%Ë„ièˇÛø˛o´<ˇ˝\"¸„ˇ?0\nÉQ\Zhi0êÇ\"çë\Z°`ˇ3@Ò\0ÖÉÍ†LèQwı	_˛∆Ò¯\'ıÏJWz—R\nÛ√LÄ(8…/_ÈJW∫“èNπrY@†⁄\\ò !ÍW5@RcÜWÂπô\Zí◊ﬁÚÄ`@∞ÑAÄÅÌ#ëAÄúû`Dê√Ä°¡¨aÃ¯◊ÙÒJWZ†p‰3»Åö)!f2g\n2¡qF\\8∫“ïÆt•ã∂#ù+]ÈJ?5—“ôBå%Ú≈ƒ)¬	œ…˝Á %wÒ\näÆt•+˝htCW∫“ﬂú(<\nÅOHÏ¯^âT\"†ƒÖÏQπˇØ†ËJW∫“èEW0t•+˝M©Ç\n@h›Y¸÷:Áz8M£+(∫“ïÆÙc—]ÈJCö@	SÇ.	~∂∂Ö√8§È¯\näÆt•+˝tCW∫“ﬂà®p¢å-@Ë[¿“†°ÄÅ”Jò\0‚¢˜ÓJW∫“ï˛∫Ç°+]ÈoBô[,K?óo˜π≤ŒœÛ±IúßÇ¿W@¥ï“[ı∑\\dR|C˛íiÚJWöÈ\nÜÆt•øQˇt»Îj£hEJÈúﬁ»≤Ü•Æ£H-MÅ›dó®ÿPıH\nÖvŒ∑,ˇSÂ«È¨«s‰MëSûøïÄÆt!∫Ç°+]È\'ßù±≠†0/Ÿ8üs:á9Êç]`90J’N¥¥á©W∑Ä\\Wo»ˇO#–¬≤·y¯˚Vä˝is•ÔHÙÙÂK<Ÿ√Ñ_ó\"Ä»˙ÙäàèiÈ⁄BnB0(ﬂNÙ 2ò\r†Ù“E˚+\\‰)˘•}=…ÍµÅ?æ“ï˛\n˘)-¯ìN„*Õ{/>÷Öƒ%”ŒπƒÙ}‡Éπ3æïÛˇüJÏƒ;kb{\Zkfû‰…!ócIÚ&≤œùÉÖ˚óï)ó‘≤,iÀµ)–=\0îúO…îA¡m‹n}Ù≤»  %\nE?¡õ|m‹^È?Q◊Î+$æ“ï~6ZB°]ò€æ∂–∑xŒÅ£íbLÅŒ˙À\0ëÉ.)òŸ\nÑ8FÒ˝…ÏeQqö6”¢x(øÅOäA Îe@d”2@4†•Ûïˆß=˛34S˝>Gï∆Ïï˛ÓD]ßVÜJ]fP\n‰€ºr¨\rÿ\\Ê…ï|€\0gÙ•d!\0π∂\r J3î	^Ãﬂÿå˙mm¿öUÌµ$•ï«»(}°ØEÇ®ﬁ÷\rËµ˝*^AUµÕ≤ò!ˆ≤XEÓ<¯…∞%ío’\0kJ$˘$ˇi\0Q¡*Ùf ‰¢†lNSJÉª|ﬂ\0l∞ \'†(D«&@¥d!ä¡QrΩ`	ö˜küÁ5˛◊ïÃ8tEˇëàNK`Ë˘–\Z®ÍÀ∏~å‘ÏˆˆoKñAc|Ó!*z£¬åâaîU\\Õª›v≈ÛÙ`èÂFeuéå∂ Ûp4Õ¶,˙4BùFàZæ⁄%X\"ÉGíÑ˙~∑-ì÷¿”£/’Ö¬Õ¥∂ ÛÓ~3Xü{®A’Öd¡3j»∂Bu≥Ì~@ç¿ÛìmÛÅm“\n0Ÿ\0wÔñbxcxÏ\0fÚ\\.QrI°:ıkf4®nj»¶:o%*xçÁ˘·\"( Œ¿QÈ¸ªQ	≈Á.u¯úuïM?pûóå|+îcŒí%»ü∆`ÂÄ»>óÅu»Á]r\rûÎX—äî⁄tRZúÁÜO4tØÓ≥ˇ(D«S=?u¥ÌÂk|z⁄›Y¿⁄`|Ï—|ÿú^CF®ÁÕ˚\re?|nn/ß¸£≤ø\0∑˜gï©tß∂ÉñWêÓÃ®Qﬂùª◊|˝‹ø≥%gπhWˆ˚gùz\0\"Tá◊mºÖ‘sír¶lcÄ«Ø¿ªÛÌ}5im?Dﬁ}»Ø%°·°Cu®´÷öõl•á√√	’MÛ\nãY\nj÷Æ}# zìÃﬂ`B‰‹Ω≈T∞EùŸ Y<ÎQÑ\ny£Î·œk˚êÇûÈø0a*Q⁄+\0Q¡]ñYÉZãÇﬁ¨u)\Z£ÁP˘kimºŒ,ûØÙ˜°ÚõN´ÔÑ\0k8ΩúeS/Í˚Ô”Q	ÄËºÎÕ˚‡ X ¥I„wB\0 wXmpÛÉ±óBÄïÒ·\0Ù›YV”´ÔÑ\0†∫m°;uû±;7wﬂ«B!•µ∆™¥%E…ØBå@•@àßøÊæµ¿3Néˇ≤ˆ9`‡\\wq›i€∂¥µdUIé©–ÿ•~ˇíoÂ·π<é˙!\0õÄ–\\Cr\'yÎR\0 6˝˘˙Ê‚~ÕÌ‡†ÕQﬂÊãqZJ)hDrÙ}í@qÖ]»˚íÒl•\"o8^ó€2µ¿ wILv•Ü™,˛ƒÄƒ∆Œ€à8Ùªó…h∫X|LJ¢–ÉÇlWÄŒ8X ÙΩd!Ñsç¨óœ‰ıMDVﬁ$Vî˚8Zkﬁ˜jGUÉéœ‡vÙŸ˜‰˜ì≈&Yè∞ﬂ?Y» ÷ZCe≈\0+Î‚‰$}:û~%íù\'iõ†Ã¿§Ú3`Ë€~ÅÛ 9€DÆ•nÎ	“Û-˜m3•≥æB(Ù<b˛•ÂÖ˜∞<∏Ù3QlX„$ïùƒºåC˘:æIæŸO)Óûë]ì<òx≤ˇ¯ÆLπ\'YQ±gq‚ =„Ö„sT\Z.È≈Td˛j÷ëeﬁ+˝ºT@ÏΩé Oó6˛~ﬂF|ﬂ˚ˆ=Òﬁ%…zJæ£,@hµå¨\"˛gI+ÄP	úJYπKîÇ\0JÜI\0ähÈ<Q–°Úâw¬éÎ⁄Ä∂¥e √!èKõSRp≥≈iaû“µ¨µ…¡ºÄ•‘4m›mÅ¶Sàlä?3Ùô˙ê¢BO\\˚Bœ⁄}€àãñ®4◊/.\0ùËr˙ÆÍÏÔAUiyíË˜{üW|ºÅgSUöã≥còùR[´ÉÉøÔEñ,ÿñ¨?S˘•,6éªK»ÇçU¢•‡ÎMÂ_hlÆï?ÀöŸJÜ˝ﬂ¯YBA9ö◊õ _ÍÎOí(¬Iq§⁄$9/ZÖ∂ë‚Zl‰nî{RïŒK◊\"ÖºÖ¨°2*√†µ~yË·æ)ñôÎ¡à&ÓMÄ1,äöƒ‡˘πZ\n¡Ö•i-~∑ÖÂ„.ÏuÜqJ†\'EãV¢∞9ﬂï~>™JÎœ∞Vl–7ÀØ7e¶xπ´ Wóz†éÃ®QöbˆüÅ˘∂“∑»¬\Z˙8ê˚:õ.?>tsêÙª]1P˙{„Ω≠¥e‹≠µUw\n∫AR†⁄◊† ûÜ\rc|Ë`z£⁄_o wπat´,˛4yï=ªPá $QûÍ8¬Ù\Z¢ê˚j¡Ãvr¬C=(@3⁄‹ƒ±G¿‚Û‡IΩŒÿ$TtÅ[,[ò¥\0v¬Ù‚q ä(bûrc7í!¯‰‰ö˚ü3Œ§∂sã,.îëÅ†∑¥OE†(DûªàRSTCÓVcé›g®*õÚì2é4ñ∫_÷jv÷¨¬ØÅ¢I>Ih*1p=Æ7ÎJ?6UŸ¿ô?9W3“Òxy¸êËÛ\0	áèÁk›Ú˘Ω¿£è#Ü/«Èíz\"4ølÏf‘æÿ@ÈÊ][Æk\nú[iá7óúì≈„0Ù‡_~¿†O\0mæ{∑ﬁ«ï~n·üzås–±~–|‹C4V…Î„àÒ—^ómÖ˙v!Ê\'z=◊Üs≤¯Ú…≤¯P\nÙÂÕp∏Ÿ÷«∑»ÇÅ·Îi¯`N#Í˜ª	™«Íπ\0‘∑-d+◊eÒ⁄6d<Ù˘P◊‡˚˜@ﬂÅ¿˜Ôl ˙πÚ¡\0õ˘û§±Aæ\r&Ngc0|>A˜~M,F’◊®o[Peﬂ÷√ó˙de’ºﬂCH ‚¯,v…˚πXC<xE\Z$2Ê¥4ˆgör=iô¬±´=36m\0?©≤„O‘ª0ù”Œ≈˜¢P_sÊe‡!ƒ ‰π“z≥Ú\nÕœN|ùﬁ¬Ñ3«b@4Á»mz˛~÷!óØÑr˜Y\nàñQOƒ¡>◊ôÁÌ,•˜\00Êa6ü˘VQ–◊+ ˙©©Ï&[z◊á_v}gÉj?}§˜ù\\>ü1+k•ú◊%%ûÒ±√¯ÿGiı˚D[MÔ+›Î)üºk¡ ª^—cáˆóY!o¬9¸e◊‹L3–uv›ôOø€K√`ÀæE,≥ç˝ÃX\n<√Á#‘qå“Í˜{P=„€P’˝ÃvΩ\"”+‘¡≤[‹d¥∆3›k∂≤`ÃÄ÷`•ÄæÔobô‰&Y0–˝˛3Ãã@í ‘ˆ )fYπ,‘Sä÷˙f7ôóÖ“@ﬂ€Yx⁄X∞¨50å‡fwˆ˘\00AB™üô-V‚˘:kÉÓ˜∞ˆ  Œ6´Ôw˚\0,P¨ÌP[~9°⁄◊≠åÎIf\\Ö…]|q3;e∏,Be\"°ÇÀ“§Ã\rZRB!†8´OÁæh	ööÄñ§ûå◊ˇüY9g@à9+#+Ø§x\rºò\n&àtI¨>%‡2\rò–]`òs÷°rn∂\0∫rPÒµTÃÁ-X4ﬂ˘2(Ú˜Æ∆]{ØÄËßßWÕßØüÅ°∑_∂ù≥H®—˛vp}∂Jl¿ø˛óXêŒZ|∆ßâZfã‰Ö11¶S‡¶¬ÈíúŒ˙Ùª˝*Økª`ü\'5Z+…8\0BZY\\àÙiÃÄPu®3wa∏pÇÓ,ˇÂy…©ÈZÉ>˝À*ˆpb8Mæ;Ÿ±”w@ªøﬂ`=‹H„s!\0®Ó⁄¸~`TüFÄÄ·±€∂÷‘Ê∆v\\4ç;Äï«È8Ûº<Å‘hßÁﬂﬁÉoÔŒóÀ¡AˆVü∆á.B\0¨[4\0 @Ç1\0”+ËACG»}=YÑ8‡?◊4P^\0˝âb∞1,µß<;,DÖÀ´≥ \nH5Ädg˚ÉIeÄ(∏PI—yzºî7∫ùK@(8Å›RW&ΩÌ¡i®ŸC∑Nàr∑XnRp8Î–tÓ/{pkÔwÏKÿLì52®πHoADãŸ≈Rz∞ó÷s∆J‰Er≈???ΩŒ2DdL¸rO…)A±¸¿û–·∫zÓ1>ˆvjx¥ä∆å\ZÍ4BÓÂ.Á:’ÀıbA@s◊Fu~õeà\0&êg TÍ@w≤á2˜FÜuúïfûÒ¡∫{®ñÄ·iç u\Z!≈Q ãÒ°«¯–»}ì…‚úeK<dÎ†q,Âö+pcÜIî˚ªÂ~`ñ∆¯ıÌVÂ6⁄\0nõ=ı<@öS5À¢ˇ‰∆Ø à]ÀÁ€∞˙|0¨EhâÇÁáCKj⁄IÉY˘e˙u∂\n1¨\rÜœGwˇÕ®\'´“¯‹;2œEIv<ßﬂgó≤¨El	‚Y9≠ã#¥˛‹∑‡ú¶XçY√x¿5[à¶KòÇV \"ó‚àÊÿ¶‘ë≠Ùc…\Zƒ!0≤i˛⁄,û¥Æ<_	D•¿\'vçÖ`ä}¯ÕÜﬁxp„éßBº‹]ês*‡˜¿›„”r¯í¢„rºP	ÏÑc≠ÿ√∑Ä†R^*%ch–Ø¢â9Às•üÅ™‹kµR—G[V\"›Ω]ÜhÄßG˚’Ä•tœE˘mŒ,f∑_\0£˝ıT	®ó¡∆ FˇÈÌo∑çk[˚ó©6.¢≠íGøK≠†%ûJ	Èd—Z`0Ù¿”Éé^ãıló∆¯‹Å°˝Ì\0a|Ï¨ª«\0›œÿ˝v;\'≤mÖ˙˝TãLÁ}Úû\'·≥¶ª≈\0Æj‡Ó\\7\0P◊Åû\'Ù∞,ãïqWêÖQ\ZÍ8@¥öﬂnfpt¡J£ˇ„Õo7ÛãM∆≤êá\Zıª=,^´,,hä„·¶ﬂﬁO÷C:ù@/Os)ã≤0Ó€9D]…ä∂Å„ΩÇºi–º€Åµ∆•˜#Ã`–9¢˘0«)ëDÑÊ™CçÍæ	⁄‚⁄üƒ-R∑ZÊsv\Z√¿∫–¢?ìÚî)›ç¨KÆ]ôª\"t-?kã4·éòÔ∞Ï˝ëÂ	ÚrD-»‹c)x\nÆ˙UØ7!œCNúyê4í√%¿≤$˚l¶Y‡˙‚4Sú;™œÁâ˚]Ë •…óYE»¡L∆øàÆÒC?/UŸ`„‡œ_¨BÛ¶Ã«D+3s≥~Ÿü˛\ZG–0Ä˛˘ÔV!î‹\"ÁıÕƒ”|<Xê·,’¡n–ˇqò—ˇ˛Ç›?,‡~vô»]mÛ?CÚ~.∂!î≈”Ëtúe!Ã/ˇò„?‡›hv†?˛	:≠[Òpcï„eADhπq. ˚¿’w;)m–∏fÙXpHÇ`˙y¡ºÍ∂E˝nWÆÔ≠≤¯Ú…?tÍ¸ÀØò?Ô¯pnZà?˛eì@œO‡ªw‡˝·um¯D-—|<X◊†ìMÛ·ÄQZphç·è£ç#ÄWZ˝~?ªWódqéRL¯«?Az^@ì˜p∏•Ü¨¡∑5∏™!æ~∂y>I	ÛÓcº=ç∑\n1«ıÑz“ˇ@Ó+4ÿC∂5¿Ì«ÜœGËnv©6Ôw\03LØßóuÛqg˜ fÄî’π$˜`Ö»$ú·ï)ïp⁄ıàº”$Ø‹+`wL7S¨è&ÀJ™`Ââ‰üÇ“¥–‰8”Æ¡ˇ≈¸»,SÆU˜ á}Eªß.){SÊ¿È‡&Eñß<ñ®‰⁄ä[d˘\"P5·≤…ë∑≤t€J›çÆ˘qÜ/º^äŸ,Ä¢Rq8≠\0¢π®å^—œC≈©ı@2∆¥öï?`‹¬|ˇ¬˚ÕYKuºYóPíáö\nÕØ7Ëˇxò—˝ÒÇˆ∑å«¡éA)PˇrX¨\'Ì‰‰ü•àG%≤∏{.¬\ns{z¸jœç+ı&YÑ<‰‚Ç¬<‚P£∆¡Œ≤S∆¢(\'±´PΩ€≠ ‚\r˙§Ud90˜ÔQ|˙´\ZÊpcg VZ≥,Ñ€C,ÃS›€~™ß∫WË>øXêt¿Ã®n[àC\r*Êoh\07eL\"ãÖôÑª=L”ZÈÚ¬ƒ≤»«]™\\≠raxÎÓs«˛Ö‹|‹c¯ƒòIBµØ†\rÄQø€A4˛{(W“g≠dì&Kï_†eRwM\0Ç8GAÌlÛp8<(€ÉÑ‹Bu!V^Ö√®;	‡)ª∆Ê∏îàq∂Ã`\"6K˘¢:# ¥>2”ˆÕ#…ﬂá \n6≈˜§n\"_‘îÊÕ` -J≥Ò»∏˚<˜%∂‚EΩZ|Iq~∂(ëR˛ÙπO˙»—˝HbâV\0Qbº“OFõ,C|˚`Ä^ûÌy›.ƒ*¯‚ÆkòèøÂºo’æ	âZ¢˝≈\"V˝?üßòáÍv•ça^…√Ô?_>É|lT›,ø\\Îf“º€Åﬂ}|õ,6»}çá)v§˚˜ßIıÌÓª»¬|¸ƒßYÄHd˜‘Z*£n∂`àoÓÏt˚Ù≈v!Y‘w∂ø„c}qÍ¡⁄Äà o\Z∞·)Ó@#⁄6ieÒ«?Ì±ÆÅ•x9¿nÇÏ‚ä¯˝pªèÅH(ãHr|n“ÎõÃ7Ôwò- zË°ü´ú*ÅjWGº°¢\\˘&∫òP¯ıñì∏e&+„L«¯>D &∏∑ŸßÌIÂïQ~a.K\0daÜS¯Â’hx[„AïT¨oÒjø¬ÒÄñí,jMŸ:é\nı•∑=*ë„ÎÃ˛ûßmKöQ*hÂz>™ ◊¢¸±©q%ÉM\\∑áÂÕΩ∆˝ú¥-fàŸ\n˚ëm∞¯≈∆6∫∞+˚ñÿúÂ\0jö_ËüÅIySØÊﬂ\Z3îµ’ê—s~5Rö=êì1ñ∑0e·5ÒSk$ˆÍè{üèì,‰Æ5‚¨,ﬁ3dt‘ˇrˇ|ˆÄœ®B}Yø±≠Ãy◊@ıÿÅ]`µºm``\0cÜˇ-oéö˙ƒÎœÀB\'≤òîfhi*˝Ú‹VßºfÂÎl.˝aÜÅ>*\'FuSÉg§ÉkzÃ¡1OA”X–D•Ç£‘\"ÂM≠FÓ∑®“∞†$}ï¸.NpUb\r\"L¿%Ö;Ï€üßF◊¬ˇ„ª∑q\r#\0≥Õj‰»eg˘âˆ$ã«æÌd\0Ä<Wpø“€‘\Zï[`°ïQû§Å\\ŒQ Jl√ÂôW¶-S\0à\"û+À+¿˝<¥i6=|Nßy†uù˝ö-ı˝úW)–ßﬂa~˚∑¨é≥≥Ü6Lu÷‘T0n˝hTöM5èõpæYà/üÏ:Bû∫|Sû™N]7ÁÌ{–óO0~ÕÍ∏§,D[€@^mïòÃh¢’òÛ\n¸\nÒ«øÊç<ôÅa\07˘\n◊\0@} ã„ /JYêu±gx¶ŸLÃ†ùÑ˛j`\\Õ±ˆ$ÑBLJaì¨S≠!˛¯}Õ®¿™Ù`)zF≠,ˆ7SŸ±,f∞É\'‡°ê-Âq$˜\r‘À¸A£;πØ\"˛¥@çXœMùH*™MW§«Z5∏ƒÀÁ)EEßç] ê&ï¿¢ØÚ‹|˘É≤y≠ñÌöíµs9~(Â-ª≈÷µ≤;T3!X√(åÔÚ≠ -\')`ä[«à‚m≤ÓbSoô?.\rM√qÀ.¨D.…x¥ø5@ü_›e?\'m[|g∑⁄v\n¶”qrEdÙ#\0MkÉâø3ÈóaB∞w¯t¥Î…\\òx∑öv\ZÌÙ¸4Ø≥“8NnEŸ©\0‰%i|Ï& \0¨\r˙ﬂ_≤µx.Aº?DÅøÙ5äßö“ªp≤À@;ñ@”7µ\'\0B∆Ùüè0Z√\r•FÙ««ˇ˛5–Z¡∏8ü0ﬂõHJ`∑wÓ1K‚·KU—Àì]¨‘Ákw÷’jtÊ\\g¶H„0≤Dc0|çüW›çË?ù‹X	À·¯<D])R„ò=/\'πñ¶GıÍHˇ¬Î©LÎ .§)K¢∂=*Ne‚é)»Ó√Ì…û(ƒxøˆRŸa€pTBK}*çgüV®#wÅ∆ü¨>ôOl}Ä∆-\nÍÒ∑±Ñb¬{[(p)là9Ñv[üJ·I©±•ã¡P]3DNr0˚∆WÀï˛<⁄d‚f4{;´ÃÉù/üÄ˝ç]ÄëÑ]pÓÂi∂¥Ìl)‘q)k+˚¢˜º’°±´,FˇÈàÍÆµ+ ÀÖÁmÂ˝-∞ø=~µ¡Ã†?~ﬂ‹Œ\næÔA«ÁY…ÓvK_fR«•da:-LY›4(jÉ˛˜g‘Ô˜êá&ÀΩÛË\"ütk-;‚ÛÔv¡I•@øˇ”.$XªÖ˚pö∑O·€˚ÿ\nîˇ≠≤∞◊,\Zü:å«Zih÷@-aN#0å˚ÌØ∑h-§[ [äﬁd†ﬂŸì‚˜∑+N˜=ËèŸqQ’6»∫≥≥\nßı˝GpìÃjKuzÕ)(Ó«ºHbŸ`3~Ìaî=$DE–ΩÇÓ∫ﬂ\r⁄è;∑GıLñ°5A\0([Å“„Ö|ÁäœΩ I0 ˘b¶ö¬A\Z≈≈AŸ≈ jé∏êû≈üî#¯?nƒëÄñò?ÉÅ´ üY¡dvbƒ≥ˇ“\"cÅ∆gÂ®£‹Á∏BI–¥ÚŸ†ÅKá[Çf€æ`˘…“ã.Ên3Ï™Í†ÂÒv5	˝‘¥m6ô#\Z∫àÅé/Äü!îÊCíü∂\Z±∑ÄÈ˛Àq$™˜{àõ√ß¿0‘ì]†PÓcWV˛ZYoKJëeåŸZàT‡Ñ›äa°ÏK…Çô—=MÁ¢≠PΩﬂÉ⁄\n„óìµñ}=°≠Â4;Ô5Â{æååè„¸~0∆Ó’∂D~ké◊‘ë\\_≥Üz‘Ëø°îÜR\n∫∏5–JÉ_*-a~˝\'¥?„E¯Öœ¥aÈû—8Z ‰I)k-[jÔ–Õ`»w 8(T¡î°?K€e∫„iú8Î€ÚP_;®„÷\Z˝óÌØkõs¥˛ù?«YŸØ(ô§îÓA√ö˛òîTÃù‚ØàÅWV°‹¢x¨PåÂqGƒ\05ü/Å§¸¨|%µPñ∆A\n¶lªÚ8°L∏i“¢¸É¡˝£\0TxÂ?Æ§∞ËAô“‚e˜hÊdp ªˆu◊“ıÓÊmI¬±6≥,/Wl(∂	Öàj9Îï˛Zz’F≠,$PU‡vg≠DúªDÃ˛d¥õ2ÃÄ(å‘-üﬂxÙq\0Ó1y€\0`àZ†˘∞«ájÍ±Àw(ﬂb\ZZí3 +ª v”Ä^û∏˚ππµS®ÖXÆÁB≤Pù›ÀQÂ6eïª\n|◊B=ú\0∂SŒÎw›d:”Ü¢,$XVÄ†SéYÿòÍN`yfÉ‘oê6„Áh•†î¬80;Å·8¬∞ACw6åÓ·ÒQ@ \0Aﬂ–v}Eª≥.„Ç+ôeﬁÌÌZU\"ëE8&ôm‘Íµ˝6Öâñ†N«≤ªóÃ‹^q`ê ˚0£æo¡JC˜\Zf––ßq~FÿπGÿXpõÙ¡crüÿ≥ÇLPI∫éÕíÊZ3ò·î{´R·˜Ã=ù4âùìœœào”‹∆˘åÅ<“∆î⁄Á˘9®{ŸJ¶8Æ≈_^PÓAGŒSt_†‰ö≥7¥âÒ§^π–Z∑îo±Ã®˚qá©‘ˇTf©¯Rã◊‡¸-ËUñ°0‡Uht\'0++ß…≠5≥Nì‚˘F›œÎˆêêáf>o+»ªÍ©Gu”,>CØyLD˝·óÈTÙv£VﬁŸ)“‘ü¿USZ`±Pˆ•e!⁄\n‘Œ´&»€zP0ßbAoí\0˝W“X\0\0 \0IDATÀºÔöt`à∑÷u:‡fge±QÁÆ«&œëc?⁄ôdZAUå~Ï1Ù¥—$P\0#°i\0•5Ñî\0ãr√+⁄Ä™ÇˆìîÇÏ;\0ssÍN ≠`ˆª¨¿d·ﬂπ~«ÜµÑeÔb]Û¥]`óõ=$’ªÃ\'ªp©ùl0+˚x≠ïÖˆº·Ú≈<ìÇÒ«aè÷…g5é}2‹Ñ˙8QõêÂõ\0E)…uwF°ú“ˇ”ºÒy\ZûÛ-n∂Êhè±8óﬂ≈_/yÕ¬R	ò∑)y?¡¿˙îÙo,t£BﬂL!RùN≠µfy(ÊùãÄ⁄YÑ∏Èäö~t⁄¥ŒPâ∏›ÜaÓ?\0¬}]üùÀò‘Òç<Ú–B@ò≠AûÍn—÷v´é∑†°≠≤ÿÄq¥≤\0 >ØØ≈T™„y™õ„ó#®võâÑø˘pÄπq{óΩÂûoîÖŸﬂZˆ€wÄ1è_íutæ≠¸e4dˇÿ0h_¡úz0TÕËO=˙ÆÉ÷\ZRJ`∑C’F•P)Æÿ*8ÒçmIHÓ\0Æ\Z·‹Ó!û›zK+Â¡\n‘sZ‡πôéôœ¸I∆4IÇp≥,≈Æ≤Æ‚@Àê∞´v˚≈ÑfCØµNƒ˝RÙïZIƒπ¬]V	2X1^`˘rÃ∏z_ñ/N{°e *l#\'IIyLQƒ∆Ÿı8[RWV∂˚\rWA»¿A Á≠Ô‡◊íCdƒ	◊ü\nß„g»ÌR‡¸Z‰Ç‹˙Mi\rÖ<”Ë<◊Ï‡‹KbqLV¶^,˜J?Ωn£÷êÕU˚<⁄”nºÚÅjâˆﬂ‹‚}¢ºÈ%’r—+˛ñÅm≤ÿﬂ{L}◊˜Á¸gËR≤˚\Zm{o¥Ö\r@◊d1+ÇıvúÂ	«	ËwøÃÁ´±M÷<ÃÄ16q”@\nt¿¯‹aFÙ}?Å!\"Å∫Æ°ïÜ1Z¡6ˇÖÓ@–wÊæ…z]ô˚1ów®K\'Î–í‚p«ıáΩà°ß6T¯ ∑@dËÍò=pÖ4Å¢\\cÃk.«Q$Yó›Ö≈èÎ ¡§◊\n<Ûy)±î±îîÖA“SÆ =êonÇm/ïõ«√dbüßªr›O`¥öï˝⁄X\rnŒ\"ñ«Miuj`^a:∆ÀÂ\Z@*nºÖbô\ZWÆ*\\&¿ÓôáıÒ¥òÆ Áßß◊m‘z!zÛ¬v%\"‰Êçmó∏~YlìÇÖ^/ãÌ˜„{…bõ¨ó⁄ ¡?√\Z ((£1®√8@°D%—Ëö5¥—0nëƒﬂ[⁄mî\"ôyÑ¨;,÷íi[H»ˇäXÈ⁄¯y⁄tÆêÁg£4=€≈ bRîV˚˛˘„ﬂ¶G∫î≈∏¨89/∑i[ZÊ<Ú˝`D˝8ﬁÑ=í‘|ÇèúÊíãK/A¶Úµ]≈Òı¢ããCõ,=gFõ∑]\r˘SÂƒ«1_±¸åßtm>)Ç∏UÑ¥êl˛%3ÇE(◊§<ÇËK»\r˙‡∏∫ ~|*∏…haÍ„iãN˝ûz∞£Yû3)ª∑€˜l»Çœ◊¡÷Ú›∆ª◊Í[e·“Ω%Éùï»h£4¥6–JR¬(m”µ±+u;~&∑∏æó+¢ªÑuÒv•¸ÖcØÃB\0B˛ +\'˚¡Òπ{`°†˝;´†í%á\nÁ%EW»N·I\\Z÷◊FÎ\"\\‹‚Ω.)Ù◊(È¿î≤‡àC#È§çQ‚Ç*ßîÚ§∑°0∆“;VhÕÃò£©§º¬å±œÎh©Ö! r◊œ·ïMxÜ¶ˇã-Ωb¢íÚ\0j!¿¶ºâÊ•h£ç€°˝Úd\ryóc¡®\r≤ÇËN‡|ô¢Àê÷vF⁄9>oÇ˛Nê1)ÚWkDUå#∏*Ø∂˝≠D„\0S’Á«≈6Â‡œ0œ∆Lø⁄ÿÌB¬tœ?ÂÁÛ6SU¿8Ãã%^òhav;Ñ=Õ⁄T	Ë≥q’TLä◊\0shG©\\œnÏÁl¨®óï |=æπ∏«“-úÀH@OI◊FWyˆ≈ÄiäØqˆ\\˛¢˛èn⁄ú\'?èÊ©ÅßŒ≠ÅQ*tì¢ﬂe®π¸í!`¶.î\'\'‘^†Ö°¶å‹}KåI≈∆3[¿a≈q:ÁÚÊî9·˝û:ÙJóß\"\Z‡™±”†ø√ä…‚˘¡Æ3sf§»CıÿŸ`‡É\03⁄)Ët.ÿ–≠ëDﬂ0C<?ŸYVÁd±Ø°;TÖ≈#øïL7BTÖ†ÍÑ∏j é/vˆ†(o3ÒˆF–ÈÛÓ√Ÿvà∂Ç~ o ¬˘ü∑1øÓ/ºÓ˘ıSèj∑ºÒÓTU{Äx˙\næ´cøœ∑√Ó®5 ™˘¥*	ÇÈµù Ú5¬Ò¬uı4†∫©óÛß¥L·4‰ãPππöJT¥O2À˘#@t.X:mœ\n÷\na∆§xM ó∂¿\"÷4ÁÏºä|rsgïÀ¿O©aS⁄ Í9ÈÖ“∏Y°({\0Ñ(eJŒ≥‚1uõUË\0YhDsIÎÛﬂ‚\"7q]]e?bÜ\0ﬁ@«g–„ó≈˝ï^MÃÄ—0ª∏r”x◊Hÿ)·√√$$æ}\01c⁄∞¶∫€·º\r\0–7w/Oˆ•..d•Ú≤8‹Ç≈€u-@Fb¯z	QZ«ÚMM`m jiwrﬂ\"ã€{àóG\0t9Yª^éæª√ñ7úÿW–«— Bäyπo˝—\Zz†ª|¡ùw\ZË5HkH,4å¡’-(-AB£π›ÉZy^Ëõ[àß/Vó∏!‡i¡∆X˛˚ììÜºm†ûz®”`-®Ÿ¨Ä‰óÉÔ’/0\0cgûI1C[QQBØylyCkHnâ≠¶yüS¿≤\\GÚh.M(hÕ⁄Gc•%¢pëy§€π‡á‚‡ò¿#Œé6rñ©»ö∫Éiï•	P$Á+‰Àõºb≈ñRã@(æ˛&ö*Ãﬂ∑°oÖñ1b4‚ú5lCÛœ[õ}•?èÚŸdéÿMë∂{M]‡Víòø∑\'*7M¸Õ˚FÖM\0&Pæ#œÂ“7nMòøP‘T®\Zk-∏D‹N$ã≠ÂëÄæuÎH]D	®⁄Xúÿ◊˚⁄Zu¶º2§H0àG@I ¿ÉÄ©	Ü$	\\p#ÄFÇ⁄\n‚PC∂\r® ◊ ]nDegã1Ö≈G_Må@¡Kø†”C9yôµp%¿&¸Ö∑,Ä wÍé àï¡‰nà‰u˘î‚Q6\0îP5AûâI◊ó.,◊7ã\"WÃEÑD‘˛ÚÃ≤πö≈k±-…’ dÖ&W˜Û≤ìï&p©EÒ˘W\"—‡>,µ¶¸û•Ñ!Œ¿…ytÕÔæ	ıdM)±âñ‹xaæŸ…X\0xW—E’Ÿ—%óªko…tIK˚7<MWYÃt1YºΩ\rëAÜ¿cÿ@h€F·…Æ%ƒÓ8æÓ€Q|mùiD⁄ê7R4/9Wª^ãîº:\"À¸Œ_Ù±À¬+ŒÛÖo˚x·ú8mˆÀLß9 Ò˘c˜ƒ≤BH¥m\0Ê…?œj9˘qâ5rHï5x°Ãò 6á5Ã«Q¸Vv- Á\\8^èß !Ë•Ú	¡d$´`[J¯¬NÅõ«U¿!ˇÎlw!îÅê;)U±Vmz££±3ÃbYÍKŒQ ∑óä!RW˙1©2>Ù+]Èg\"Î&„i≠!66ÄöçO∑Ôo√ÛzD˛˙Ã√¡Ãíø§Ò/Ê≠hR!0…˘s3X%ô*_<ÎIAT‡D`Øò=Úπ<ôq¬ÛÙ:‚sˆáûD™Ü#M Yﬁ©Ph≤d‰‡≤D5(≈àú-A≠\'dµïÚF\\\\Æk-wö∆·z\0∞P\0ØÇÎî6r°E≥÷»çöëØÅπ:nUÜÁ“ Ùs`h9QÙì7*\ZlqªIB\\‰t)ƒıi@VX/‡)mœ(˝PTÒäâﬂt\n<^ffÅ\Z9{nÕßFªøóπÄ+Ç\0ñ5∏m_˜5oÿnw°.–\0$¢…7L=õo@√Äã∏eà¿UıÍ y÷”+∞æ†,v’´g\rRﬂÅ‘b°5D?@v\'Tß#Í”ÕpÇO–JAHâVÍN¢™$ÑQ >Ä•…ybe¨,.ÙA1…BÃ\Z∆Ø4)»1É˙H©9Õ3:^*Âõ:ëî+∏Æ¡≤ûÚ˙’å&<L%E˚:h`Kø√,\0‹ˆA;À%≈©Ÿ˛ÄúÙu•§LÌ)¢•3@4ØÁKÀOÛÁyŒ…5ÇèÛÇà…u+‚ŸŒgOi°Õ,∏ßÏÏA\n)∂q¬è©Ù\0qDŒ‰ûß®Ëµ`(CFK„s)Ôl5ΩÖY9Y±±˝(Mª“èCU)á\rC?v˚\Zt®∑Oﬂ]!fÜÈ5‘±ﬂ<+ Ôse⁄ù›\0ÛõêVè0áõM3ƒx‘–/ƒ°Å<\\fF3Cü–)∑πÏyO@UC∑;Á¢˙÷F\0§àáœ–∑˜õfàôN¡Ù\nÚPC¥íÖf®Á¢˚\re≤Å|zÑiw0ª˝Ùπeåô®GQa0hÉæ–˜5N¢Üñ)+à™A›¥€=‘˛\0›Ó!ç∂[áº˚X¯ÑÀIÌıb_C\\\"∏\0îÜrœùhÏ™–v1ˇ	hÒc˘Â	fwÄŸ5à?”√ØÒŸKúT‰—bËA¶ﬂ‹N⁄¢w¸T¥Ø Ò›ÑÌH-@òì9<Ix¶≈Ró(H_’|)zÖ<sqe∞5Yv¸ÚÆúí7qÛÒt˚r†∏ú?~ﬁ¸EUŒ\0@ﬁ›Xt`˚c\r?ú\0!øàcÏKJug<˜\"¡.74„ä:`e\0Æ(®5põòß‰¥?Á·eR™\Z»+XŒsÒâïW∫(-CÍ±Éºk]ÄÌe÷⁄e0h\'@Bb|Ó ˆváÏåÖõ=“h≠Af∞	ó∞6Hıp˘Ù\0ΩaSYıÿ°z∑C≥>ÀøôˆÊ8¬ú˙≥÷2qzÅ™*p”\0‡≈È¡Ø&Y˚»«Ø–¡&ºE2lÅÏª∏î,@7Í±áê|÷B$ü1Óo¿“Ì¯XP€µÑ¥—P∆@im7l5vEj;#À¿Æ,lˇF\0∫ﬁAÄQΩ<¬‹‹≠∂ÅG÷z≤[ç∫&»˚Ík™⁄πÏÖÿÒÚu{(0ûﬁ∫÷¿.K\nVé@\nË˝‘uny\rªﬁQ4cÀ7√π(\\õ)BÖΩ4àÊ!\\TDiõ\nó·Ó·å9f@£ï1ÁgÕ◊\\>∞\'~/ÆPÖûsù•ÁÛm\\Ziz°åWØ∞	‰ÔU^ir˚Ãùù≠7A¥Vpñ˙íúû‡ÏÑ∂7≥å„5ì —„1P 1\'Áa~è6ñÓÜoÛ<(WaQÑs‚AÃì–04ùÆÖ•Ø=‰ÆÙf*[Ü\07V/w∑¶5^$`ûF†%c≤Á¡„°Ítƒp∏‘Å§ãµGxË¿≤ZÊQFh£.^?\0†!ËÁRû±\rù›˚Mßv\r}¶l”)PCg˘ﬁJ‹‘±á8g}S#4xíá`»0î\Z°∆—˛jÖQç0∆≠8mR˙î}Õ{o1å¨Ä°;;Óu7⁄Ÿl|>,Ÿ∂P#`Â‹®·À?\0CÃ0$‹È\n·œÚ#/\'=éÚh[–”∏igıdõtßª Û\Z≈n§;o≤E,°&NÚÁêb˙p/¬ñ•∫\n \'cXsÏ«K◊√≤À◊2(„hã‰bSà’Õ‰@X¨§≠NÁy5Œ»î†Íä•¥\"cöÚ\n‰ázïÄS·⁄ƒœÈåt0#Ô⁄ì—˙òZ ∏}‰_Èœ•πuxæb≥Å2\Z4*≠·˜?bÊ	Ù∏†™ÒªŸÖ2ÄÓ`VVÊA€ç?˚Ô“\0ÄÓzú√BU?B’√wkÉÃ©[uEön’tIÎXHÃ0ßBÆèªj°˙Dl£Z¥÷–J°Ô{˝Äa†F•åÒÌ¶ÃR¡Ó´6\\úqçå“‚;Ä!ÏÅïÅ®Ï1ö.Õ/p“\n,E9 ö√’R\0¸lGÏ>^Á∏•ô¨Óúj⁄A˘˚ûº´nÜ≈mBŸ≠ÂqTò{Åœ^\nÄJ‰*;ßâÁ¥Uê√Hˆ,≥ïó!WÓ<Z,{	G&)[\0‰u(êC\0r¶†Ë)Ë}vèÿÅ[{ç(qµ˘≤¿4èS<s{6›Çƒ…•Ù4_&∏3çóı5>≤W”w-¸J¶‹MÊ\0ÀZ`ık»ø$≠»~ùè„\ZçSR∆]sà∫?aîs∞›eI=@F-[:x4Äa_x≈ÂÄL7B‘Î\0£ÓNW,XﬂJUwÇf¨Ç!>)@ãÔ∂=\nòa:!◊-OK≤0Ï\\‘\nC?‡‘ù–˜Ü°«8–Z;Âmg¿ê3aR“Äÿ4ˆ=®ˇ.ƒ¯çcŸÃ—°‚g\0l,ﬂ‰œôÛßVîÚ#V:°B≥≈ƒÔÅ–€ÂU†â@Ú‘\0!Yì%.ëB]4Dl˘ÚfDì†≤æœÌ*ÁœSK«±\'á¶Ÿu©X‡*/ªñíñ¶X$À·¯)» »¶NÒ>—äÛâ2˛~∏NMñ%_…ä<ö‰ê¥iﬁEÕﬂ††ÖE¡Ã◊¶nsƒP\0Ck÷¨êJ˙dÕZ_À›jk¥V◊ï~4™8ç≈16YzH+ë`¨ŸŒ@\rƒNïò^¨÷ç°†’\0”å√ÄQ≈\"\";´AuGÆ	kn2Ú_”ﬁ™ƒºa¶òÄz-àz4V®ïÚ¬wMJöe¿äA{Y|Ê£âu†”_0lxà¬æßrY£∫;BiΩ.∑N£∞õ€.—ö,€ŸxöAá*Ác∏ØóÖµË6P£¬0NGt˝ÄæÔ†«¡æ‹•\0Å h˛#Ü}…ìU˛´c∞ ‰,e¡£Ü≠,‰]jÙœü\rpıä=t˘Ä·◊∞`%˚öˆ\n√Âs{≤\0„V= C®pb`5YmA6V°rÃ§É˝¬á ∏gã”≠A°Ç„àwæƒâæT<©“ J},–2\n¿œS\'Ê8O‘% ª∑º\n\0iJ*\r¨∏»’ˆåUB∞‚‹g‰„â“á(œÉ®$/¬ÎÆ¢–Í45â‚r ùèÆ±oE8∂˚öî†rãÌ8Lä€ä5πÖ¯l ÁÍÃÚÚ\\Èá†‹Mº\0Sbe†zòQ€i¿˚\Zb_Å*´DMß†æv\0\0™ƒM=ïeg˙h≠†î∆ÿèÎŒPZŸƒÉóÌÿ—ªÈ€K`Hç√Û#T›†€ﬂ†ÈOh˙›·ÍÃL±Jç`tµ¢|[•3@¬»†£∂◊Å[44ûŒÄNŒ‚S∞)[óË®¡g,Om7Àb±?„Ä›ÈCª√–Ó±;>£R#é∑˜0gfä5˝	„0¨É°ﬁ\0ï¡Po@\'ßî•óÖòﬂ/\ZŸÚN\0%Y0ÄŒ\0z»ñd¡.fFª3=Ω<£:>Aëƒ®\rnN/∆‡˘˛=™J¢í§ê¬≠ÓæíÌX≈Y˜◊“Û\0˙yÄy¡ÃçÑ8‘≠ú4ˆ¯Èh-éÄ\rÃœ 	] V≠C‡ÈYuçöJ ûÉx|Äz®w¿B†˙Ú	,%‘ªsQ!PÜ\0ƒÔÉ0Œ\'ûj?∑à@ƒì‚\n.˚Ü!ÛKdÚÓ\Z.ík°ÊxÌ\\é∂¯¬Ñ¯çÓÕDΩbV≈≈RÚƒ@∆ß@jÜl)®(óæ˝*jo—âfä!∞◊Pro(hQù‘#ä üÉH&Ã¶˜{\rá?6È≠â¬U7u«∆∞\rbÃô∂çú8o^¬	˝à¥ôìÇ~Ïßt÷·î£O”/√_ ﬂµ`0Ã®aòac:î“PjƒçæÔ—uùuc(\r„Ã˛DÑqË–è:B˛∏R#tU°R\nËé\0^@èvÄ^iÙuãJçã†®R6I≠∏üHŸ\'áÎxäéA}¨ê\rK8üÀGà†Ôêf˚U\'N£◊’ü–çeWöÔc;Ù0CººÄà00c\0p‘-+H≠°Ä_;tÍq’äDÉ+B¥Œ¢3†!Tn\r3è|¥mgI0ïìÖrÂeQœ`µ]a4ÿÄ‘àÕÒ≤Ô—h\r¡d§êhÑ@]UhêïCÈ¥¯5†≥∆√Ü°:ò^i∆Ìu˚\\\r\Zf∞◊≈ÆÌ§˝Pt4£pCwÜP*Ç!•l}Uhf˘\0ÅY[+ùaê—ñOV”k;±qs™3WÃÒWÆl™Õ√<“£ÓÍ™g\"CAê\"˜_|fYÖ¿≠xÕ#∂0ª˚åœsÃù‡ÏˇØÂO\"∑ﬁíÇıc9OÕ6<£LΩ\\BKƒT¯t,rµ$”Ïp•Ä\'¨=äÄ–î?µ(¡∂)ÉìE@‰€wèÀyƒ˜6ï°gr‰òÓË[@‘ï˛*⁄3ƒÉû,>ûh\'A≠à˘‹2øÏ∂C`£1~9Çˆ‡xŸhcÏLüa¿8Ë{◊a¥ô-Ic?)Ω5jD5tn!±ciò_ ›D’-∫Bêt≠òj≈jB\Z ò\0OâêI@µi\0}J q2ë÷ÀF®éÄ⁄€4O≤≥õîØë:«<ñf?ˆ®∆íö«RÊ”—‚fk5í98T„Ä°\Z`V¿êmª9\0C≤≥È!È`^Êsﬂo¿ Q√ µ:„-¢˜ëŒOò+…Çôq”!Ùà⁄πÃ7\0≤í¯®GÏ«á ZÉ§¥`à»≥1f(ÁQ_:‹Hƒ}Ò>\0\0Y◊ÒqÑ~QˇvòÀáô⁄„ïÅUI°¶6”≥\Zd¿èü-–¡∆!YéA£˙¸/x‰3~¯5ÚÃécM°2ä6ô\\![(õL·˘KôÒ TTHM:æ`UÛ˙=ﬂ`6ä±‰„b¢fPíÀÃ[+p¿ÎOÆÀ\'xôÙ0Îqö¸TT^ÆR‘¯ñb,ö˘f∑Wò7F	ûsN√t/‚}ﬂû\0Õ.’Pæ)‚	èΩœÿCâÜcep\rBq›á∏ï¡X≤qpPNsô©Ù#Û‘’@ÙC—YÀêuçuŸ◊U…LXE…`¿\0„óìç?R$ÁÜÅ©|Üãı–vÍ≥R£›Å\r™qD=VˆxdF5éà_óMíîºº_®Ç2˘t0≥	m´Ò·!BUG–â»î»U+ö÷&1# 000T∫º\ZÍÃr–VF÷FÉ∆xfC@A≤I^—ÑQ√V—j@ØÕ*í£ıny0$¿=e/Ç±‚lÅÏfpÂÄBÜ–¢ƒ∂éss’RYL„RkºEƒè]!\0Q°ñÑ∂n–6\rö∫F’¥‡v!$\0öcNV\\ƒ!E<l-¢fHPQnπ†˘{X?ı`•aN\n‘»à/n«¸\"è\\ÓZ‰\"r«∫jPı«@Aê÷BEJÕÍû¶jØ;3W)8‘C%D„”≠õ%5a\0Ò∞Ê8K°®PIŒÈ©\"[Ü† F)Ce«÷: àaT‹∂XWÛ‘Ô©ÿ–í(«¯8M⁄ûºqÉ|[°—,pÚÁ‰Ú\n=ò[6ı50Ω9Ä\Z#ÇL\0‡»‚S∞*E◊ªºJ]z% öì√1Q»ö.NöÅù9!^m\Z!”™…C±®≥\"ÆÙ„–™eà\rı•AækÅQCøXSÄ~Í\0…m‡zòæTŸπëËPÅj∑¶¸L˚U.•Ñ¨Ïü1\ZÜ\0„¢2˝+’5¡af\ZK«∫E∏∫j≠q3ˆp+∞@∞±Ã=OK-Äu*GB’F2tc∫tVŸFpd51Ç <àRˆ¡P-g˜q·≈í∑√ˆ9$+Ö˘°%º4-∆\0‹µzƒa¶é`ÜXêÖ9+ˇWı∂Ô∫bòä!G≤¿@’„>Ó\'rÒŒ¬Dleë’ÒVYH7∂@«Ê\0ÆkTRMÉåV\0M”†Æ+@0*¡¬≠{3Y1^7õL}Ó¿£Ü8‘†Z¬º.P‹~Tv≥Níà ÷«¡∆÷›V±Ö5±ŒÜ b≤9◊ #†fiòqW¶™°oÔ¿¬≠Yd™ógàæsÁ\ZPÉΩ>oT5ÀöM˘≈=oöµè£¿Zœã†3—)√[ÜJä&=ŸµIÒO-œ6õ^ƒA’I«2Æ∏‘îÃ8í¢.r»ÁqP\0U!p(¶Ë5ÊÑ†ÃXñ-?-Á\0÷ÜäÄD£\\O9ΩŸ4s¶œsÂÊÖÓ§â%±DÖ&e§>«å\'¥~!5j!ãy+“ÚË∫öÉ~\\*ZÜ¿n`JA‹÷†∆≈ F@Ì¡Ü°æˆ®ﬁ‰‚Û3U¬®)¶»Õ#@JBUU®Î\Z∆h03Ñêc≠Ìt˚Ü∫nßf	f‹üûÌâs{Ω4;∞¨ê:¡Ü∂≈mxå¬Sªè¨@µñ`\"g(i˚Ç5@®\0®ù=\0\Z≠´à\0‘\nPLÄ®“s,µ©¨˚®*<“\0‚Ã:C\r\0’Ã≤®µ¬Ì‡+n¿\0û€=H»Håc=‚f¥ñ±èN¡>Ón\"@TÅ´z›MFò‹dÇ\0)\0ÏÌÇﬁ@Ï>¨¥u˙Áæ1Å!›ÿøLn∏ÈW»Çà∞Sv√Ëv†o\0AxŸﬂ°©*H!P◊\rÍ∫Ül\Z6haPKâÍ˘¢o†˝á≠>à?zïe®&\0v≤\0êÕ˙±∑˚˙\rvBÅ|ﬂN}Àñ∑çÕá8ù™ßiv‡å:0Y¡\\íÌSÁtû]DR›øõ¡\0ê¿x{èJkàq\0‘àÍÎgò∫Ü∫·„˛®$è¸§Êç,S‡‚;¥	%ºgö∑>ób@≠Ç=Aå\0ÆDu-9Ø¬^ÃJ1,1OÛ%Ìã 	~É∏ú4M@<…π.ß™|¶r√SPπ*CKQÙBê‡ÄêAºÒ∆îûÑ8l{‹Å,G2<Œ¢)S•÷Ä\0\0¢IDATm_\"åµ]eÅ»‡3eOoÊ\Zñ	˚ºX’πBÆÙWQyj}0uX~t€x>IÔ\ZË/ù›WÍÀ	Ú√T	ò”h3kaÄ·±ÿ H@âJ2ö∫ò!H†ítmgïi£—J`àò—C∫≈Û	á[,Õk*â †PªL∞éN≠%W¿ê≤Ìü®Ôê/:0ƒi^OÔmRP\ròä`k ÉaˆÎ«^\nP;ÔÁ&çF+Ñ≥å≤Bª;†]»ﬂü ‹ì©ÑƒawàÇ•€A¢™õ’\0j·®CÎW$ã zÜËÁß>H[Y\0Äi	¶]®Émã◊•≤®tçùVΩalZÏwa«TUW®™\ZM”@VıÀìùIFT5ºª	p ‰‹≤@ƒ#~[3Ω8≈ùùEiN\n˙4Ç¡ê˜çH.vßzﬂ⁄‡ÍB]”‘zøÃôÄa»-É1%	iÅã∫›¡0Ï_¬nÏ®áŸ}lÑtmõ2π~ûÅÜ¡‘v\0^Åñ4A\0h‚BC\rîÊ	ùxßÓÑªSòíˇÊmÀ*t?4[E¶∂@(\n∂ˇ˜°dÂâ€¢Çu(xæ	ÄHÿóDŒÛ6LÜÊ™–™˜c.|ñ6qck±Øa}Ñ@hQ±î≤	≠•áQÛÉâ)\02úÚL«´\n<æËR~†`Ÿº“è@ØöZ?ë$à˜-Ùóﬁ¢‚POSÜ≈mçÿt>ø&àíƒ4_1Yâ¥÷”‚åçênGıÈ´˝ˆ˚ßØ\0\0U’0˚õ≈&∂ïD„^ˆ/7˜ÿ\'\nV Œû“kã*;=îõuM7lßè√Ω¨*Ì\0xWXS\'ÃK|XüNæìbwàon±y\0»¶≠Ï>ﬂPi|˜IIh™\nu”¨N≠ß ÿŸ_kÎ›\0‘PÁ›;HÄˆlWUæ_ô‚œÆé›Îe!7ÿwGÄÄ~É∫ŸAJ9ç-)%™ ∫Ãƒ–Ÿ‡˙∫Å∫{óôÔ-ñ8ß˛œ[è< ‚ìÇ9Z@e]Z‘J†…cÓ‚6¯ws®ní∏écÜTª∑{¶˘\réeÂM†Ñßx*9•ö∫Å⁄ﬂdü≤.™@yO•¶_‡A˛¢˚\"‘î\ZâxJ˜¬àæ•CE2·\"_œ$¥ ≈0%™gí_†®&•ÁL·‘‹Æ®6mNhC!&â‘ZEAÀs⁄¶KÁYcâ(A∂ælYÕNaáŸ§Æ≥\"O$åe∞√—Âç†(ΩVéÒıÒ$„l=SvöZ¬ ﬁ¥ı\ZÆÙ◊“€W†ñÄx_CÌm†ü‹ÃØ∆˙ìÚ¸ˆ≈Jê∞1CDv«o)%Í∫Ç÷⁄)É\Zπ?D\n£ÓNhˆ÷*`dqì™ıôZ2®ú‚Æ+¬∞€GñªË¢X_ght £Ÿ∞ÍÚçû\\ƒ5\0ÏÏ$p8∑zµnŒ¨$¨,<3ö”*\'ã∫nPñe±7#Ñ±˝¨*¬ò\0ß∫\"®¶]_gH\ZÎZC\0pª^–1åpcg.ê\ZÿøR∆†=©I’ÆÖ⁄ π©Û“Õ\ZìêÇ ›\nÁd4‰–A∑ª`ª`äìY°≠+¥ãª\n\Z|R‡„Ë.Õj~f?õ,µµáZŸmu ^+à°õŒY´`UÒ¯ÕLzú⁄@j\0çL]≈¨¡G—9x8œGä3&@gJ*}±« ,éy)î∆M!=E {P0-Ö4NbÂÇ’õCü‹âL∂©ƒsÎLÿÒuö†ÅÔ2Aæ]Åπƒûy8™;8‹kzM}»¿Rÿ∞Â\rœÎ‹Çóx¢¡¨áv!„Û©ó’Aà6MA∞óΩOπb¢í*S∞ˇizé$ÅÓ≠ÀÃìh≤2ÅË•JÇ\0!@\0$U ¡`ÆPø\r£2\n‹!B+Ï∫„î∆\0P707±¡Æ?ÅÑÂm\0»™Ç¶ÿKicÜÃ⁄‚å“Ä\r@kJ‹”‡Zœ3†ª\Z®◊Û≤R†›ôUóçÌf\0S\r=\Z!&Y‘D†∂fÑVÿ’5‡ä\r3∫Dn5≤›≠Ç!Ü’gV†ˆ¥∏VÄ_tí\0∫kä+pÄ˘ı≤®O/®e8_MÑ~◊Ç@ ·ßŒk%\Z˙‡é!û- 7~¸Øo‡ÒD∑vüüvOBÄeLöñè∞é Ó⁄\n¢~y∂\0»)\ZÍOPuÃÍöÀ©∫~∂*i\rÒÚ4/ƒËx\r0µa…2dÂ!\0«_Ë_¶àêR¯¯6‡HπL‡∆Å£‘äêÅûÏôñw≤˜¶.û:•êeﬁé¢íÊî¿ç¥1H±Gf\rÃ¨PËöÒ˜öÁãeÑ,¯t‰(YÅºÖ5û//ÄùU@§˘I3>mÛûbÑiâ*‚t·\0Œ<_Ke,3yYïFXJnmm˚ï˛T˙ÊΩ…Ã®¢ª~ÍrÆÄÑ¢ÄP≤Å‘ÃBÿ™ßm¿®Î\ZhB†R •Q\r|U„	C{Ôf ∏rŸ†~>BV6M◊\rL]C6;Îq$âœÇ!&∑7YsŒ∫„¯Ä√‚:ÄZ9πãy\ZÄöı’≤kÀÇÍ\n®$Ñ\Z≠ÖÄ:å∑˜ëıã¥FsÍ ‹øjm¿yÄL¿∆›à∫^ﬂõLDø0Gv¡≈éNÒÆ^DÃ`M†fe≤®ÓÄ∂Öz#&˙ÍˆDb⁄ÎNÍµ¿\'@Ô0UÂX\"ªÙﬁdÃ`•Áè≠¡_Ovr¡í(¸±l¡º@=O÷#ÜWr„Ó\0!%dﬂÅ¥ÅË;)a<xt›C—ΩÿË˝ﬁ.ºòÙây^ædòõU¯¯ÅˇBÊ–Q‡Br=V*˘\n”\\∞4pÚ[JÚ∫∫öÅê?£ËJ\n£8˙?ÃSjUee±´«7≈F≤ªno4+DrﬁSKX∆àsP3Ô;à+c†°[¨–Œ\" :ÜÇtŒ“R@:Sú\\ø\"¶gJ3GiÄãﬂ¨ÿÀ\rÛËâÀs)◊x°ñﬁ3‰YïÅ~\Z‚ÁÕ\0Íkq[O¡•Y>÷Ω\0OSÌ]ı\0`_Íâ’á∑`fàØ#¿v™}ı¸›¥`)≠{ê1”4ßÒŒÇ•Œ-\0†ï\0j6ˆ≥bçg‚Ì5ÃÄú˜IC‹â\"8\0#ƒôÚ•êôå´[≠Q?|∂˝1\Z’ÛL›Ç•\0i\r9Ù\0ÿ ÇÊÓ\0e≤êRÿuh÷¿êÑ›§u2Ga€Ã\0ƒ}c-LY#zYH	Æp]C˙*5†yzÄn\ZÄ$Hènm*ﬂâ—ª⁄“8ô\rcÎÛ\0Êqò◊vÚñ˛^É?ü¶Ÿñ•Úß¿°9—˛¿©ÊÈwR\nR¬»¿yz3PΩ<√Ù∏Æh!∆aR∫≠°K[JÒSÂ^* ÷BYôQñî/*≤8=UU\0:S+ŒßMáÖ®\'©¥8r*àÏÛqp==6-∂,≈ÂÊ|—uØLy)Wâ(9„Ïh6R–¨;)†\n˙ ú§˚√xı¢†K1ï∆F©{Ø´£v	úo.)XJ\0ê∑XÒR¶)]ÈG¢À–Ü/_ÙC?ØHXà€\ZÊ¡näiûz∞÷∑%´«¸˜´ˇzÚÜçiÀ®Ñ‰–€á,xôzK—\\H–¡°≥¡°	Ÿ5i uDÂú„lü«πÌ;	jÃ£U¿¸4⁄¢vóﬁÜÚóx™°ã“â\rƒê,Ö i†õ|ŒŸT˛d¡£çÚ|v\rÄ_î}I<†˜e@tIY¿hT›…ÂIÉ\ZÌ⁄:•‡˘7Æ@]‰Î4Ãia‚]Ó4∏S‡PüOêr@4mæö-J5+a≠RÌSÌèËNH¬8ÿiÙ1ßÂÌ;˛PÍñ@Ò8∏ﬂo—2\0\n3˚ﬁFMÀ⁄√Ö„RZz\\(ãy≤\"Ñ=òœ‚qîoÊ˜\0!vÂÑê`y´éîoæŒÖ¥ú ˆ®ƒâYÅl⁄¸qä®mqΩÖ„Ç…M+ÀTø ?œ¨/„£î+≈≥|=åÎ9k5ä]oVÚ±÷>\\ÈªR≈&π3Ü›¥ﬁı;f^8ÿ/KÏ+CÙÆÅ˘“€ƒÀ4\"sm)ﬂé«¬∫iaîÇnZàqò^H∫i°w{»æÉi˜≈r»i˜“µêkÊ]&Û<FÔqy®ù,ÃÉù—∆œ Ó?ï∏âËlñyLªáaÜnwê›…YÇbRªÉu=∏ne·Â±NÁ€jû’Ã!bg◊ﬂa\"ògƒá‹MÙ-≤–ªx`ö’ÒBÕ±[^°è7w∂≠`H&[T8^É≥cs”¯5˝8Ã\n∑vñ·≠uÕÒI⁄ÚàwÒÇ\rlÿÊ+’·ëı‡&Ìp˝l˜ c`Í\nıÛàM¨AoÔ@Z;ÎR\n\0Ç~ûC.œ`&Wr>Äu÷øÉ◊iRæû“ı¯8˝H/Åé‹_èKKb\0åÿ_Oaa!ñ((q[‚˙◊û”‚Ì†∏úP>˛\ró˜=8vÚ∂≈Ã◊¢›Í0ÍºÃg◊¢Û¨·Æü-∞ãT[é¢õ0mB¡äÁ\\‚…ŒW@ﬁï˛rz[ÃÊe˛“§J\05l–çÑyräO§~ô∑Óˇ‰™∆p∏q«Œ %∆õ;T«5B◊5¥î–é/˚:qÂáøKm(~°á§¶Ç¶wÏ˜1®Ï%¯Ë∂â0&˚ˇ&YödÅ™ÇËOnöÙ¡*A£°ö\Z,+7kéã/óy≈„µ6∞C\n+/‚^\'\0Y¬∆ø\0ÿ	†\'`\0SËœ∆Xµ%]U”Ã@íh†€t”¢y~ò°\ZÎ*ö‚òX+ˇ’<G≠!$r C	”[0Tí≈˘qg∑¨ëllÄq?£⁄fzÈJ! åÇ⁄ﬂÄâ–º<√]’¿4ì2›ﬂÃnwNî5ô£∞°©ííµ\'¡!•uvbÖ≤à¶√P¡∆~°—ï`\nzè7OG%KAuBê®nˆúÑ\'ƒ>1å€JîW4YAdÏ~b°Z“¸Œ\"6√»\0æ1í∫\n›(¢‡˜≠@\"j¶k\'ïÂrŒr3œ@£x8-‚∂0û˚ﬁº“_FoãÚÔi˜UJ7ÒﬁJhHK∞f†.-√æÂãÛ<è√·\\U0≤ÇππÖGò™ﬁ˜a;≤eVœî0óA‰îﬁÃOª∞	∑`·wäQ—uﬁﬂ¿4-XÕ»hª–‰∆Úœ…¬/§∂»„¯\0X◊Oõ»‚Æ∂.√V ¥ƒ∂qám≤Pmk˜ùkw\0˙õ;˚2ï„7îøâ\'[‘àÏ9˜µ˝`HülwŒÊg}ñWâ∂Á√˛\0°\ZËp¶(≠q¥\0í”˚RÈ≈æ(ñ@ŸL}òØX√H\\W§;≤M_‡gÌ∏§¯äM&ÌÔ_∫Ç4&ﬁ∏÷≤K+t+-^„‡zÄä^èÇÁ/¯øÇ<H5‰B∂sqØ<XA—‹æyè9’æÚˆ,vfµì+„qç&Àõõ_¥6Í&◊+Ô˙ÑüäHpì%i!ÌJ?-C[‚&ËNÇ;mÉKÎ\nÌÖ˚+Yw.7cG5Œ≈¿∆∫böˆÅ97Í‹ﬁdﬂj\0›U‡AÉ˛G{W∑ﬁ∏	Dœ»vúd€Øèÿá›m†}ëv≥ˆZbzàÜ)ÚfìÍ\\$Ò3 ¨9\Zx:⁄≠ıì∫…Ì#¥æ/:“\00gÏÉ¡tÏô“w§Q~ùÛ9O≠/Néè√Û≥UHÄ~-ÙEÁ∏ÎÍ\"◊ˆYÃ{Iı¯˘tıuáœ–”\02É˝˝t»”\0˝&vØNdhé;gQ2ló€W|ÆÙ˘0¿¡6û‹;Ÿ‰≥MI+{,ƒ1«ß\0ÊU·  #äh %.´ºt›.E«Is(˙]\'Gúæ∏ºP*â˚	-NÚ&ıV@ Uû;!A†y’öæª¥»/¸k‰Ùô∆yd÷∏+ƒf)i–ö%eœXúæE ª}‰˛I=(±´?+tÀPôp˛6À≤n?h[\nzÖâ~ëÏæX utYÜ\0‡!,	øK_‡ÙEáe»\n€(Ïq\0˘cró»‹9ÓÓﬁÂ˜<3\0¿Û!ºg»‹;ÓºÂ∆OCÕ KUÏŸ?›÷êø˙AJbØÑ8ãty0Àü∆€˙À{6˜\\uÿ£uSÚTwΩƒ@ÇŒui€agMIâëQ …IÃ2§≤ê¯\'®â\'A\0rkêíñ“[ØJœ>gOäCãKCwJc-EÅØ¯èã˘π˘K7æõøâyJñí∏Fæoä¢œPœWÙjl∏bgµ‹k¬ˇ£/Zñ!tXÜ^%∫∆›èÍãz¢˚À–wnÁiÎá&	P%D…e1\rÏ3gØ™µ<%ÓP*›ëÕ°:R•%ÕQª\n_˘ÕpM–1äó÷k$)ßb\"çoc¢§CS*”e3Òr·Ï\rô?å, „&ÕI$»ßQ¨AëFœ˚¢ãπ∏<öa∏R√ñDÇÚ·4◊Â,d?„ßôñ£ﬂ‹≠BÔπe´YÓÓ˝ÍΩß”>€V\0Sw\Z~µ?A_¿´Újñ!¿˙àul∆Ω\nSæ¬Fï„ÓCtYÍÊ7˜=d+ƒ:∆Ê¨(òÊB5ﬂ ˘’ã¯N∞|´Â;(≠$©\"≥qG\0äµ«ïêÈé\\T¬E“[®ﬁ∆Tén∞∏“î[æèÊ@]⁄o(≠aæÁõº«¿|plk#ê2c/\'œ42V =Û√td6õ≤Û&îtd\rU„DÎ#BT¢d´8Ü0àÕ‰4)€ÆjîÁÀ≈y3Æ…·\"“\rAw^ÙnêüZÄGˆ⁄\Z∆Má4 üÜtΩ¬úÍª3Ø≈p˚éÔßá∫¿◊	h‘∫|3¿°›Üå∑hßÌMa¶6)Ê2Åög≠≠_Ïq]\'∆Oö≠\0yYKÜ¿ó±Ôòñ‡Îz>VÂ`\0«€\rÌïÆ‹Ú* À8(.O®¢Ø‰iƒD43mdH/ë‡∑‰jÕ|Ö¥Rb•…^ròvÂE)iCyOÁ5ÌTÚ≥I≠Eî§d ±ˆ‰‰(üºŒ” ƒß≠+…OÍmi_íæ/z˚$É≈n”¨•Á‡S4ëJŒÀqèFmI√µ¢=í˘¸/ãÑ%H£Zs‘&˙æR§πﬂ∑Ùé\r°ZÜ8¿¸s}™ü∏æÉ_&ª◊JkE–È/_¡\0LÌ0’8]^0⁄+Œ\0ÄO˛:nOF∂†ß/Œè8Ω|≈ÌÒ	‹±v/à«o/∏ùœÌæ‹ÀÈ€jú,ø|5vô˘#ÍÑ¿Ì¸à”Àø∏π•‚[Åå±}Ò¸‹Ó7&\0Ó;ƒw¯€‰¨o¨+Å€√én\\ƒK¿°∫ÔT≠D\"L”à√ÂÇÔœøÃy¥ûñTçSºà5Aí‰@Ç‰®f\0V‚z¬%¢TBJ\0Ûœ{.®dπ–~÷≠…2lŒ˛Ü2“ÿ*S!ù∂™§K»óJÅA∏h¢‹˙•èQ◊Iàî{3!rÅyqÄC85Ñ5§¶dD6ñÖ¨úf,∫ríªUË]Åæ|˘STÉ/·DÏmj#–”a¡:^/ 3a;V∆òNÁekd´∞∑Ïã©;R¡å”ıÇyiË´aº„˘±zGñÎªn[\rè√\"+É„’üŒæQ_a<?-\"X|5¿∏q_<˙q%Úÿ‰DoMùhÒ0`<ü—Ø\r*}6OOË§à≤¥)˘J€\"√2ßƒÈ“jü¸•\\⁄}≠¶r≥2Ê≤Ñ5wÒÌﬁÅ•r(&.ùú\\S—Eº+ikÒj∫5ÔaÍÎæV\ZÌ~Èù±[ÑﬁËÛÁ?vﬁ∫c«GÑò(øó€®’ -òOChDIõd“ÚÎq:ÒZá“ƒ[\ZØQ≥±ë]N.]f9R{k:@BÇ(⁄e	N¡º“j‘“FÎ∆∞eXLÇ¸´˝!∞„} _M∂c«éè∆<uV\'E>16‡\röﬂJ‚-#|Ç¢x1e°{›î¬iﬁRö•‡$§¯’ k]g„’÷0Ï¥¨∑ƒ∞lEûo9 jAT_)πÕ;;S/≠ñÏÖÑ®7Õy[–Ï~<È¶¶_*√é7áÓ3¥c«éèOä\\pŸGkE°™…*ÔÔTM´ì ç Â•)!Íê©âî¶…xkMızë7jâò˛±óT»∑©Â«÷^˝‚ÇX¨’ã¢!Í-ZäÛ⁄«®˝\0Z√ªDÑ4y^+„é7√—Ïñ°;˛_êÀ∂ö÷¢jA›)(S,˘$RüüP^oŸ\n¥ƒi∫ÜîƒÒπ%≈«ï-C)…—|µ‰%…◊b≥)WÛ•{„è @JçI∆ZΩIàîDΩ’h∆ò˘–x5C£ñ?#A\0 Œó‹â–á¬ÒØøkvÏÿÒF»u™x—˜2â(m™Úe©ÓoÊúK“_wV”$¶r(˚ﬂœÔ&·¯_Wì‚àúÓdÑ&µÓ»4ßóGQ∞L•ﬂ∆.Ùc!zòel©ÁƒB+Ô.®LsÑ‚∏aı≤vº¸⁄“Ô[>`tâ\0\0\0\0IENDÆB`Ç',-1234),(145,'GIF89a⁄\0Ê\0\0¸¸¸˚˚˚˙˙˚˙˘˚˚˚¸ˆı¯˜ˆ˘ÔÌÙÛÒˆ¯˜˘ıÙ˜˘¯˙ÙÛ˜˘˘˙ÚıÓÙÒÔıÛÚˆÛÚ˜ıÙ¯˜ˆ¯ÙÚ˜˜˜˘ıÛ˜Ê‚ÓÁ„ÔÚÒˆÂ·ÌË‰ÔÓÎÛÌÍÚÏÈÚÒııÛ¯¯¯˙‰ﬂÌÈÊÎËÒÈÂÔÙÚˆŒ∆ﬂÏÈÒﬂŸÈÔı◊–Â¯¯˘ˆÙ¯ﬂ⁄Í–»‡ÿ“ÂÓÏÛ“À‚— ·Â·Ó‚ﬁÏˆı˘Ÿ‘ÊÚÒı·‹Îœ«‡¯˜˙ﬁÿË·›Î’œ‰‚›Ï‹◊Ë‰‡ÏÒÔÙÓı˜ı˘÷œ‰‘Ã„„ﬂÏËÂ”Ã‚‘Œ„ÌÍÛ€÷ËÍËÒŸ”ÊÈÂÍÁÒ„ﬁÏˆˆ¯‚›ÎÍÊÓÎÚ⁄’ÁÁ„ÓÕ≈ﬂ‡€ÎÔÌÛÚˆ˘˘˚¸¸˝˛˛˛˝˝˝\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!˘\0\0\0\0\0,\0\0\0\0⁄\0@ˇÄÇÉ\rÖ-	åSè\në\n\'\Z9  °C§[®©™´¨≠ÆØ∞±≤≥¥µ∂∑∏π∫ªºΩæø¿¡¬√ƒ≈∆«»… ∑`ÕŒœ–—“”‘’÷◊ÿŸ⁄€‹›ﬁﬂ‡·‚„‰ÂÊÁËÈÍÎÏÌÓÔÊ\0ÛÙ\0˜¯˜ÉÉ˝˛ˇ˛H∞ã¡É*\\»∞°√á#JúH±¢≈ã3j‹»±£«è CäI≤§…ì(1~Y…≤•Àó0c úI≥¶Õõ8sÍ‹…≥ßœü@É\nJ¥®—£Hì*] ¥©S¢˚âH`¿\0§0qq\0Å»S:0Ò·Câ(UH@I¬!C5ˇ6åÅƒ:¥Ë›À∑ØﬂøÄL∏∞·√à+^Ã∏±„«ê#KûLπ≤ÂÀò3kﬁÃ˘pΩœ†Cã=/ûÈ”®S´^Õ∫µÎ◊∞cÀûMª∂Ì€∏sÎﬁÕª∑Ôﬂ©ü\nNº∏Ò„»ì+_ŒºπÛÁ–WF\rP`V+»∞‚!Ö&8`¡∞Aà*Z^®Ë§…Ob∞0Úc…%3h¿ÿÅ\"ãˇˇ\0(‡Äh‡Å&®‡Ç6Ë‡ÉF(·ÑVh·Öf®·ÜvË·á 28]@≤¿â\"ê¿äTUU7‡¬Ñ¬î0PÅ<f¢@)‰êDi‰ëH&©‰ãíL6È‰ìPF)ÂîTViÂïXf©Âñ\\vÈÂó`Ü)&î§ïi¶h^§©Êöl∂ÈÊõp∆)Áút÷iÁùxÊ©Áû|ˆÈÁüÄ*Ë†ÑjË°à&™Ë¢~ûÈ®£¿E*È§îVjÈ•òf™È¶úvÍÈß†Ü*Í®§ñjÍ©®¶™™j—µÍÍ´∞∆*Î¨¥÷jÎ≠9\0;',-1234),(146,'/* ---------------- template styles ------------------------- */\r\n\r\ntable#main-table td#header {\r\n	background-image: url( ../images/api-header-region-bg.png);\r\n    height:80px;\r\n}\r\n\r\ntable#main-table td#menu-panel {\r\n	border-right: solid 1px #91961f;\r\n	background-image: url(../images/api-server-menu-panel-bg.png);\r\n	background-position: right top;\r\n	background-repeat: repeat-y;\r\n}\r\n\r\n\r\n/* ---------------- header styles ------------------ */\r\ndiv#header-div {\r\n    background-image: url( ../images/api-header-back.png);\r\n    height:80px;\r\n}\r\n\r\ndiv#header-div div.left-logo {\r\n	background-image: url( ../images/api-logo.png );\r\n	   margin-left: 30px;\r\n    margin-top: 25px;\r\n	\r\n	width:246px;\r\n	height:50px;\r\n}\r\n\r\ndiv#header-div div.right-logo {\r\n	/*background-image:url(\"../images/right-logo-bg.gif\");\r\n	background-position:right top;\r\n	background-repeat:no-repeat;*/\r\n	color:#cc362b;\r\n	height:32px;\r\n	margin-right:20px;\r\n	line-height: 30px;\r\n	margin-top:7px;\r\n	padding-right:0px;\r\n	padding-top:5px;\r\n}\r\ndiv#header-div div.header-links {\r\n	margin-top:-20px;\r\n}\r\ndiv#header-div div.header-links div.right-links {\r\n	margin-right: 0px;\r\n	height: 35px;\r\n	padding-top: 0px;\r\n}\r\ndiv#header-div div.header-links div.right-links ul {\r\n	background:none;\r\n	padding-left: 25px;\r\n	padding-right: 15px;\r\n	padding-top: 0px;\r\n	padding-bottom: 7px;\r\n}\r\n#logged-user{\r\n    color:#555;\r\n}\r\n/* ------------- menu styles ---------------------- */\r\ndiv#menu {\r\n}\r\n\r\ndiv#menu ul.main {\r\n}\r\n\r\ndiv#menu ul.main li {\r\n}\r\n\r\ndiv#menu ul.main li.normal {\r\n}\r\n\r\ndiv#menu ul.main li a.menu-home {\r\nbackground-image:url(../images/menu_header.gif);\r\nheight:28px;\r\n}\r\n\r\ndiv#menu ul.main li.menu-header {\r\n	background-image: url(../images/api-server-menu-header.gif);\r\n	background-position: left bottom;\r\n	background-repeat: repeat-x;\r\n	height: 32px;\r\n	line-height: 32px;\r\n}\r\n\r\ndiv#menu ul.main li a.menu-default {\r\n}\r\n\r\ndiv#menu ul.main li a.menu-default:hover {\r\n	background-color: #EFECF5;\r\n	border-bottom: solid 1px #C2B7D8;\r\n	border-top: solid 1px #C2B7D8;\r\n	color: #00447C;\r\n}\r\n\r\ndiv#menu ul.sub {\r\n}\r\n\r\n/* -------------- child no-01 styles -------------- */\r\n\r\ndiv#menu ul.sub li.normal {\r\n\r\n}\r\n\r\ndiv#menu ul.sub li a.menu-default {\r\n}\r\n\r\n/* ----------- child no-01 (disabled) styles ------------------- */\r\n\r\ndiv#menu ul.sub li a.menu-disabled-link {\r\n	}\r\n\r\n	div#menu ul.sub li a.menu-disabled-link:hover {\r\n	}\r\n\r\n/* -------------- child no-02 styles -------------- */\r\n\r\ndiv#menu ul.sub li.normal ul.sub li a.menu-default {\r\n\r\n}\r\n\r\n/* -------------- child no-03 styles -------------- */\r\n\r\ndiv#menu ul.sub li.normal ul.sub li.normal ul.sub li a.menu-default {\r\n}\r\n\r\n/* ------------- footer styles -------------------- */\r\n\r\ndiv#footer-div div.footer-content div.poweredby {\r\n	background-image: url(../images/powered-synapse.gif);\r\n	background-position: right top;\r\n}\r\n\r\n/* ---- login styles ----- */\r\n\r\n\r\n/* --------------- table styles -------------------- */\r\n\r\n.tableOddRow{background-color: white;}\r\n.tableEvenRow{background-color: #EFECF5;}\r\n\r\n.button:hover{\r\n	/*background-image:url(../images/esb-button-bg-hover.gif);\r\n	border:solid 1px #8268A8;*/\r\n}\r\n\r\n/* =============================================================================================================== */\r\n\r\n\r\n\r\n.cornerExpand {\r\n    position: relative;\r\n    top: 3px;\r\n    left: -12px;\r\n    cursor: pointer;\r\n}\r\n\r\n.cornerCollapse {\r\n    position: relative;\r\n    top: 3px;\r\n    left: -12px;\r\n    cursor: pointer;\r\n}\r\n\r\n/* chanaka */\r\n\r\n.form-table td{\r\n   padding-bottom:5px !important;\r\n   padding-left:5px !important;\r\n   padding-top:5px !important;\r\n   padding-right:10px !important;\r\n}\r\n.form-table td div.indented{\r\n    padding-left:7px !important;\r\n    color:#595959 !important;\r\n}\r\n.form-table-left{\r\nwidth:80px;\r\n}\r\ntable#main-table td#header{\r\n    height:80px;\r\n}\r\n\r\n.longTextField{\r\nwidth:270px;\r\n}\r\n.rowAlone{\r\npadding-top:10px;\r\npadding-bottom:10px;\r\n}\r\n.tabedBox{\r\nborder:solid 1px #cccccc;\r\nmargin-left:10px;\r\npadding:10px;\r\nmargin-bottom:10px;\r\n}\r\n/* chanaka end */\r\n\r\na.fact-selector-icon-link {\r\n    background-image: url( ../images/facts-selector.gif );\r\n    background-repeat: no-repeat;\r\n    background-position: left top;\r\n    padding-left: 20px;\r\n    line-height: 17px;\r\n    height: 17px;\r\n    float: left;\r\n    position: relative;\r\n    margin-left: 10px;\r\n    margin-top: 5px;\r\n    margin-bottom: 3px;\r\n    white-space: nowrap;\r\n}\r\ntable#main-table td#middle-content {\r\nbackground-color:#f5f6fb;\r\n}\r\ndiv#middle{\r\nbackground-color:#f5f6fb;\r\n}\r\ndiv#middle h2{\r\ncolor:#8a2c3f;\r\n}\r\ndiv#menu ul.main li.menu-disabled-link{\r\n	background-color:#eff1f9;\r\n}\r\n',-1234),(147,'SELECT \'/_system/governance/repository/components/org.wso2.carbon.governance\' AS MOCK_PATH,    RT.REG_TAG_NAME AS TAG_NAME,    COUNT(RT.REG_TAG_NAME) AS USED_COUNT FROM    REG_RESOURCE_TAG RRT,    REG_TAG RT,    REG_RESOURCE R,    REG_RESOURCE_PROPERTY RRP,    REG_PROPERTY RP WHERE    RT.REG_ID = RRT.REG_TAG_ID     AND R.REG_MEDIA_TYPE = \'application/vnd.wso2-api+xml\'    AND RRT.REG_VERSION = R.REG_VERSION    AND RRP.REG_VERSION = R.REG_VERSION    AND RP.REG_NAME = \'STATUS\'    AND RRP.REG_PROPERTY_ID = RP.REG_ID    AND (RP.REG_VALUE !=\'DEPRECATED\' AND RP.REG_VALUE !=\'CREATED\' AND RP.REG_VALUE !=\'BLOCKED\' AND RP.REG_VALUE !=\'RETIRED\') GROUP BY    RT.REG_TAG_NAME',-1234),(148,'SELECT    RR.REG_PATH_ID AS REG_PATH_ID,    RR.REG_NAME AS REG_NAME FROM    REG_RESOURCE RR,    REG_RESOURCE_PROPERTY RRP,    REG_PROPERTY RP WHERE    RR.REG_MEDIA_TYPE = \'application/vnd.wso2-api+xml\'    AND RRP.REG_VERSION = RR.REG_VERSION    AND RP.REG_NAME = \'STATUS\'    AND RRP.REG_PROPERTY_ID = RP.REG_ID    AND (RP.REG_VALUE !=\'DEPRECATED\' AND RP.REG_VALUE !=\'CREATED\') ORDER BY    RR.REG_LAST_UPDATED_TIME DESC ',-1234),(149,'SELECT \'/_system/governance/repository/components/org.wso2.carbon.governance\' AS MOCK_PATH,    R.REG_UUID AS REG_UUID FROM    REG_RESOURCE_TAG RRT,    REG_TAG RT,    REG_RESOURCE R,    REG_PATH RP WHERE    RT.REG_TAG_NAME = ?    AND R.REG_MEDIA_TYPE = \'application/vnd.wso2-api+xml\'    AND RP.REG_PATH_ID = R.REG_PATH_ID    AND RT.REG_ID = RRT.REG_TAG_ID    AND RRT.REG_VERSION = R.REG_VERSION ',-1234),(156,'âPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0»\0\0\0»\0\0\0öÜ^¨\0\0 PLTEGpLZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕZŒÕˇˇˇ[ŒÕ˘˝˝˜¸¸h“—Ü€⁄≤ËÁ§‰„è››Î˘˘y◊÷˝˛˛ç›‹È¯¯n””w÷÷a–œu÷’w÷’ΩÎÎﬂııp‘”q’‘e—–l”“∞ÁÁ“ÒÒÊ˜˜Í¯¯b–œf—–ÄŸÿ}ÿ◊Í˘¯Ù˚˚˛˛˛≥ËËÚ˚˚ı¸¸˙˙_œŒ`œŒx◊÷é›‹v÷’]œŒq‘‘s’‘|ÿ◊ã‹‹]ŒÕo‘”{◊◊Ç⁄Ÿ∑ÈÈ‘ÚÚj““ƒÌÌÕÔ„ˆˆˆ¸¸ù··»ÓÓ˙˝˝n‘”z◊÷Ñ⁄Ÿá€⁄¡ÏÏœÓ˙˙¯˝˝˚˛˛\\ŒÕ^œŒ´ÊÂ€ÙÙ‚ˆˆg“—â‹€ëﬁ›ó‡ﬂ∫ÍÍÿÛÛŸÛÛ˚˝˝¸˛˛íﬂﬁ°„‚ß‰‰™ÂÂØÁÊºÎÍÀÔÔ·ˆıÒ˙˙Û˚˚m”“t’’~ÿÿ®Â‰µÈË∆ÓÌ‹ÙÙÌ˘˘ŸÿÖ⁄⁄à€€ô‡‡õ·‡…ÔÓ÷ÛÚ‰˜ˆÁ¯˜Ô˙˙îﬂﬂö·‡πÍÈπÍÍ†‚‚£„„•‰„≠ÊÊ¬ÏÏ›ıÙË¯¯ñﬂﬂæÏÎ–Ò”ÚÒò‡‡¨ÊÊ¬ÌÏ√ÌÏv†ÒÚ\0\0\0gtRNS\0\r \"%(-.2578;>AEHKMPRUXY^_bcfhkmqux{~ÅÑÖâåëîïôù†§ß™¨Æ±¥∂∏∫ªæø¬ƒ« Õœ“‘◊⁄›·ÂÁËÎÓÔÚÙı˜˘˚˝˛ø«ªy\0\0∫IDATx⁄Õù˜_G¿/F≈ÜIæö†¶h¢±`4ì˜çJïËk·’ºbå({pÄÅÉè^U§Iï¢t;EÏ`çΩ˜¥ˇ·Ω€Cnvwf∂ﬁrœ/˙awv˜{”û63\nÖÙ2»∆fÑ≠›«sæ˘ŒiŸÍü6xyoŸ‰±v’íÖﬂŒüaˇﬁ»·6CﬂRXøÿéù4Õq…™\rR‹ñ/ö=≈ﬁn®Cÿ|2◊Ÿ’Õã‡ kó.ò1ﬁ:´bé´Á¶ÕÒ⁄ËÓ<Ÿ™ﬁfÁËNó©£l¨c‘§y´	1≤Ÿe˙∏¡éaˇ/W/B¥¨_Ê`;†S÷lÙ&$/OÁ11h∏√œÑ§≤ÙÉÅì«;zJãAÍv≈¥—rc8≠\',\"´G»à1bÒ&¬R≤e›lŸ&ØÀä€9F„·”›ãÀb{ãsL^I»!ûﬁ±(∆0ß_	yƒ€„ÍTˆÓÑå‚d©…˛›o	y≈„≥!ñ‡¯ÙGBv˘ﬁÛ„7ﬁƒ\0»∫$∆˘_bÄƒARˇ£üä√õ¯^¬>/π~»O˝\Zßê®VúΩâØè•È.ƒÄÀ,	8ﬁ_IXÅÃ$ñc‹ˇ´êb}ÓÑï»RQÆ\'¨F˛=LD}¨#¨H	&ô(cªR\'ˆÙñ§ª˚feeooÈ_µ\ZÕÒûì€’`ùmW≤aÏàR¬ÂV`æ˘∂eÇ8Ï÷ WE!JîÑ*e°ÄQx¥´|*qíÍcæÛk˛~ƒUÚq$*ÒR*√|ıÆdé¢X@B¡õ?Â«!ßU[ÌÀ¢‹jêº‚\\ümí$5Ñ\r§º}\rÛ◊NV˚£åçCôFıﬁq∫‹‰‰àoeIéßî‡Ïñ◊\0ââbIè¶ô¿çcñ∑’ÅlßEÍ8˘Sˇ!≥Ê~û?·Ã!¥5DnÀ6ÏÔ¶ESŸAf ≠ùÔ?ƒR@/¥Å’Gd∑≈\ZAŒ3#(l Ú{ÿAícx;VÊ ^!DÙ>v?à´ñüØ\r¢ﬁ{‰Â÷ÄÆg••Øäö;ZΩ«2 Òêrq∫˚|>_∞ΩBÛ\"πº¡∑—§+•Ñ¥˘™“œ7◊ŸsõD)˜ÀD	zz∂⁄øÎ\n˙≈u1Y‹è8v5¨‡tÏw«),Oì¡ÚÍ]E∞«QKjê;íÇHπR7#„l⁄π‰‰Ùrï ◊∑™≠±1#ZÚ#dLä”ã#äŒ∞Í›FπR÷¡≠v£#\"\"vGFÜÔ6 ÅΩππââ\n´´Ø˘◊‘\\øÓ/ÈéÍ!\\îﬁ=ïæ)Jé‚õt‘≤ﬁ8àk\"üOÃC%?9}–í Ó£†·VwC…÷%_©∂$»®Se\n[±£œï¸Âwã∂≠ﬂer˝K°⁄•±l/ô¡tŸ„K\\U*-r8ˆYmmÌ+çA∫∫∫é¯‡AQQQOOOjjj@@¨Q\"ëÖW3\rìeÿ^˛⁄eìtgﬂô®®C∑CÎ!WŸUî;¨?fcLÔc∞/{àhVœKüÁDáù?øOƒﬁöcEu¥Ò‡8Â9ô¬Tå“≥í≤«QWDÓ«´3i”w~ñ6°Heæß°P0;Ô&ü’ƒPQ.bæm,ï„ù_–∑j!FuUËI-∫D†ÆØ%&çbg_/;∆$‚B˘\n≠.∆ú`<¯‹Õ],\r?XóqˆN˜UÛ_vù{£Ü—HrHê®◊:ùŒàZl¯Wg¯SH‘≠÷÷÷8≤MÔ∆ºÈgä]b≥y£˛ÉCìòœAóILº\0¥ª”Ufø!’∫∏@vˆ@ü¶&üT√bÚõö2O\ZÂu|º˛•/»Ê/)c/:πÖéqÊ@6ˇÒ>∂\rx¬I™J6π<„ˇ!ç¡≠J•ä‘∑±ÇÀÅx–\\‰mutE0@¿¥ï}âÚågl >|@<>ZRÕÍ§è∑Wp¯ú¶>§rÅ}¸Ã∑ÿ\'ëmîy0E©9,DèË¢«“§Yn^‚à∏≈/É qRF>CIãêÑ0L÷sõÖp®è”GãWŸêÎ\"@fˆ;Å7úRÇ∆`π sO_ÀıhnCÒ ˝j <¯ıƒtJªÍ¬·ßcÿøâ§FÒ∆ùœd §éº7Ñpî¥`õ§Ïfπ¿Úöi}c\\œ kGè4\\9òZZ,Ò‚Ç·fRB{eB8\"ôÍ ‰9&êkb@<L ﬂA/vÄÔ-Ä√?à¡cêçdPq»RË≈ª¿˚€é	‡(d∫\\™`Ω÷Rç…ay’frÖˆı\n^‡HT1Ìä<¬2 ƒ\"#»ËJg∞y´(&€™òO4H°(êÂ∆‰∫©¨ﬂÒé˚ÂLéáÑ≈@‹Ï´[æÜ]©{®û7«1à”ÂÑ÷r Ω›f	‰BN¶B‘¸Uˆw.\0“±ª3P_‰„ÂQ ƒÁÜUl∞ı-ÅÄíµè¶ΩL2’⁄´{¬QÖtÈHÚÂ ≈HòEßB6EàØ<we÷¬!Ê<ø£≥T≥ã»vVC*Lı’ÒIU!’yÉQˇLí\n„àÌwWÏék3ÿ\')E“Ç¨∞ÅÜ©ÄØUﬁ°^“Äüó1kã`∫˛Òbg\n]yîd›≈|®!bñK‘KîÈZuç·Ã˚[		hÖˆG≠ıI˝]Øøä§\0!FB5≠n‡#®⁄ëœ9 ÷”zº∂VUÊö{‹oˆ6‰r©ë]\\A∆@≥ÃÄŸ0é¿‘à¡\'\ZN1œO@=û◊aÛS[Ö§ ê<˛‡#äË·∫¡¯e≥‡Y%@„Ã˙›¸ÁZIAﬁ¯˘åÓpg$N&Ù\\åJ`ÍÃ‹∫l‰™Hê˘\n»Aø`	˝\"cTJÍs˙á√9‚(\ZÁM¶m¬ÑCÜÀ?a ¿ –≥¸Ó2îÚ€OÈh£în6˚∏‚∂É EÇ,ÇÅ\\6G1#ƒÁ13ºfxQD9<¥As±vòµ…†ùRÇ∏¿@Äë©í,ãaÊ ÷Á˙\'√SR—\n_3õ[iW9Ép0¥]a i@Bx‘Œ$9ØèZz‚√n≥Ø,‰í(ƒ\r¢~›fXä{Óﬁõ˛‹D/\Z<˚ûî ûê‡eè`Ö™9r§i±µ{PB/Ht:õï[…â#}/æŸñfJ‚ÕrZ™ ôG#‘á$\'H\0R¡)ìî\"Ç‰oHx$PL”:¸ﬁO‡˘|ruo¡£%Äˆ¨…@rEÇ¿:{>≤TD‚ÿc∂T°€p◊KA:„Ÿ@\nÑ\rø`ı?kBƒ7YíuÎ˛ÇãÄˇq´èÑ –	’°º>Ö¯l∆<D±<_∆<\"\rTEπ…≈9áÇCbQ•*⁄û`i@†J#\\oG¶ŒÏ«,∫ªâ|†XüM‰≤üã\Z1¨~„îat	…qYç*\ZVq9 »^ë Ûa¶n0QÕ»¢˚Q˝=£YL2{^\"%à‘˘¿-KÙI;îCu]§∫úŸ˛8ÄÑqq>¿‹A`fS&≤l>ºJû†ﬂÊ8ÃBûJ\n2Í†ãÖ:mπ¡) .Ã€≤têZ\ZêëPó)ÿIZ0•Kô$≈∏∑Å~¶Ùx)A.S®ª»‹¿§î4–9Ó®qØk∫ïêƒ‡ƒÜÖ2Åü∫ΩS˛Q\n›x«ΩÕ4à˚ıÍp2ä}@à!¨\0\rÙ‹\0gL(4ü∫zAuXÔ’K\nbÙÖÖﬁ¬ÅX 6‹¿˙àƒø\rÙ|uíÇ|éÜfÉ^u∂›Á›5iÙç…X^ÍY@»]\nc0ûÆh‰ñ—mt∫lÌæ’⁄˝àM≥ã3lBÕZµ©≥ã1Üß·	z¿&Q±-˚ÚãâgÈ)πßÕè‹)Açê	JDÛ!^Ù‡êup∞ò@ÇEÅ,B\'’®)vRÇxêøPzæ ¶§\ZDö≈Q“¢ÀÒå-V%HbJsB$û˘Q¬\"9”êÈgÄx`SO≤g(q?ÍN%É∏`ì3iõJã‡»§Ê˛û&$ôÜOóΩAÒ]•Ì“LM¸mí\Zd0KÛkj0PpùPì:|i*èxêïl)ÂZj6_–Åî≈p)œ©Af≤&˘◊PïÙr!uíI€¨^+9»hˆe¥Lü™c>º«+⁄öã6∆‹*\ZXvÅ\\£•-∞j◊dÚ„(§Áî3.¢AÄÖ0Ë•IÁÈ!ùºöWE22oÀÏ 	.M¬,gƒ:π™+>~åù≥Í ¶\r¨É\\,Ü[æÁüNˇöC~\\8¬.ï”s∑Z`EÇPóÔ·TeÊ4¥úT≥aƒ433¸[°æT 8õç∫†ªƒı(3:’ûã≠ï0M\Z≥–	∏#ò›∞*‡†gqYt|§Ê\Z}Ω->2\ZÃ“”¡Ó?Å@Á\0Çã!éÂ≥<æ*_U˜t€ﬁ=áÅﬁΩ=70ˆw(∂≤5FàY…oa~Œ	d∞vKYØ&µ≥3U”[w9πªEsÅ!˚»”7 Ü$9s≤fM‰πUBˆ+¸∆4¡]W¢UàÒ˜Ø1∫˜…aƒ‡µÈçÔè9¢3Ë [%∞m^qØ\\)TB‚pÀ÷HêÂébìä∫ÔAÏÉ>K®µÙñÈÁAøêÕ+X∑â(»ëñä]5æjöù‚I*.1\Zÿv\"Ïº®Ô≈	·®cq¡ò÷!˘*œ_*å5U∆ôß·˛ö∆ ƒÓ‰ﬂ‡Ö√ñ;⁄Êvæªÿ6›1•É§Í„µj‚†ﬁØhµüﬁ–•≤ıÒ%¶ıòœQE·[Óp⁄©†ª!ÖGÁ»x ˛HS+\nzÕ¥⁄qT—9b∂• Ì‚⁄¿⁄¢˛,·dAÜ G¶¬r‹∂(Ó\"7\n€ÛáéFUm\'ÉZJvÒò˛Lz	´PöèDo›ñ}ä•ZäoËõ8[-d&q=lx!Ûtà|Ã÷m|6”ãŸZú¶ÚeLÉÌæÂgKoÛ∞íÛÜÎ®‡Èc¯dä€LèÁˆÜM	˜zã£nøH\n∫¥#Ó–e]ÈÈ@˛äHr`ËA¯√“‡á∞€\nŸpR| 882ß¿/ü$g±Jr™<OPÚcm[Ä}+àíg.ejñ’m jÙë}·Ω/<Ñ,V{#ã≠oõ‹˛9±Ö6:eüÖ,V{˝¥µæçãÕ!⁄úhR··-ã√∆≈≤o%M™‰T“I˝£≤X≠Oú9ùí:K˛”û¥§\Zâœ@sz÷s<,q\0\ZWlc’åi©	49ü„vÎ2oÄo\ZiI}´Ù∆ê…!\r0◊˜”QÌ‰?çÃÙOÊ>5Ÿ≤  ∆!è#	‰=$Ç2g’˜û>æO¥â®me÷:#QÓ√(â0jFaüS&à©∏yÒ<û˛πI†û≥b¶-¿Û Yè∂!Â>l-ÕV∆mºè∂ëı∞!£Ë!û÷Úp˙]¸í˜¯\'ÉdBV\r0f√ÖÇ·ìÒ@.£‹`Ç–gCar…{D\Z5èæ≈Æ–#“d>¥.ì·õ©•ﬁ∞HƒÒ{≤#xäÓ∆§Ó(!ÊAyvÃ°ÌˇJ	Tä;ÿQﬁ£6/”ˆ<<ã=jS÷√O+® `Z∑¯√OÂ<éVMq˜\n„Ó2±∂Ç¡e)\Z≥û(Õ¡2Ÿ\rÊßıgÏIwd≥láhÁ˜\0+yMíˆmŸé5/ÈWÊuoºu“k.€AÛ1}+.ã˙¸˘í4oåg˝(IvNjeeÁÖæ¿„˜£êwÂ∂=>¢∞àº-ÔI‘N∂\nã…0ß_e¢ˆ¯BaQô,è∆‚π‡ÖÖe¯t¸êãÌ2àÕW∆põ0X!èåXl9O‰ñu≥2 x\'Ÿé´G(‰ïÒíkí’a≈¥—\nŸe–páü•%Y˙¡P≈\0…î5%R¡º<ù«(RÏˇÂÍ%c˝2[≈@À®IÛVã¢ÿÏ2}‹`Ö5»€√Ïka.SGŸ(¨IlÁ∏zn⁄Ã´[ltwû¨∞F±˘dÆ≥´ß.„±vÈÇ„V,∂c\'Ms\\≤jFYæhˆ{ª°\nÎóA66#lÌ>ûÛÕwNÀVˇ¥¡À{À&èµ´ñ,¸v˛˚˜F∑˙ñ^˙ﬁèÔÅÆ0˝\0\0\0\0IENDÆB`Ç',-1234),(162,'{\"swagger\":\"2.0\",\"paths\":{\"/posts/{id}\":{\"get\":{\"responses\":{\"200\":{\"description\":\"\"}},\"parameters\":[{\"name\":\"id\",\"in\":\"path\",\"allowMultiple\":false,\"required\":true,\"type\":\"string\"}],\"x-auth-type\":\"Application & Application User\",\"x-throttling-tier\":\"Unlimited\"}}},\"info\":{\"title\":\"TestMe\",\"version\":\"1.0.0\"}}',-1234),(167,'<metadata xmlns=\"http://www.wso2.org/governance/metadata\"><overview><redirectURL></redirectURL><environments>Production and Sandbox</environments><contextTemplate>/test/{version}</contextTemplate><description></description><productionTps></productionTps><type>NULL</type><visibleRoles></visibleRoles><technicalOwner></technicalOwner><corsConfiguration>{\"corsConfigurationEnabled\":false,\"accessControlAllowOrigins\":[\"*\"],\"accessControlAllowCredentials\":false,\"accessControlAllowHeaders\":[\"authorization\",\"Access-Control-Allow-Origin\",\"Content-Type\",\"SOAPAction\"],\"accessControlAllowMethods\":[\"GET\",\"PUT\",\"POST\",\"DELETE\",\"PATCH\",\"OPTIONS\"]}</corsConfiguration><faultSequence></faultSequence><wsdl></wsdl><subscriptionAvailability></subscriptionAvailability><isLatest>true</isLatest><tier>Gold||Unlimited</tier><provider>admin</provider><endpointConfig>{\"production_endpoints\":{\"url\":\"https://jsonplaceholder.typicode.com\",\"config\":null,\"template_not_supported\":false},\"sandbox_endpoints\":{\"url\":\"https://jsonplaceholder.typicode.com\",\"config\":null,\"template_not_supported\":false},\"endpoint_type\":\"http\"}</endpointConfig><inSequence></inSequence><context>/test/1.0.0</context><sandboxTps></sandboxTps><endpointSecured>false</endpointSecured><versionType>context</versionType><endpointAuthDigest>false</endpointAuthDigest><tenants></tenants><thumbnail>/registry/resource/_system/governance/apimgt/applicationdata/icons/admin/TestMe/1.0.0/icon</thumbnail><endpointPpassword></endpointPpassword><advertiseOnly>false</advertiseOnly><visibility>public</visibility><wadl></wadl><technicalOwnerEmail></technicalOwnerEmail><implementation>ENDPOINT</implementation><outSequence></outSequence><businessOwnerEmail></businessOwnerEmail><version>1.0.0</version><apiOwner></apiOwner><transports>http,https</transports><visibleTenants></visibleTenants><cacheTimeout>300</cacheTimeout><isDefaultVersion>false</isDefaultVersion><name>TestMe</name><endpointUsername></endpointUsername><responseCaching>Disabled</responseCaching><businessOwner></businessOwner><status>PUBLISHED</status></overview><URITemplate><authType0>Any</authType0><urlPattern0>/posts/{id}</urlPattern0><httpVerb0>GET</httpVerb0></URITemplate></metadata>',-1234),(168,'<lifecycleHistory><item order=\"1\" user=\"admin\" aspect=\"APILifeCycle\" state=\"Created\" targetState=\"Published\" originalPath=\"/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/api\" timestamp=\"2017-12-11 14:19:12.127\"><action type=\"transition\" name=\"Publish\"><executors><executor name=\"org.wso2.carbon.apimgt.impl.executors.APIExecutor\"/></executors></action></item><item order=\"0\" user=\"admin\" aspect=\"APILifeCycle\" state=\"Created\" originalPath=\"/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/api\" timestamp=\"2017-12-11 14:17:19.496\"><action type=\"association\" name=\"\"/></item></lifecycleHistory>',-1234);
/*!40000 ALTER TABLE `REG_CONTENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_CONTENT_HISTORY`
--

DROP TABLE IF EXISTS `REG_CONTENT_HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_CONTENT_HISTORY` (
  `REG_CONTENT_ID` int(11) NOT NULL,
  `REG_CONTENT_DATA` longblob,
  `REG_DELETED` smallint(6) DEFAULT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_CONTENT_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_CONTENT_HISTORY`
--

LOCK TABLES `REG_CONTENT_HISTORY` WRITE;
/*!40000 ALTER TABLE `REG_CONTENT_HISTORY` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_CONTENT_HISTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_LOG`
--

DROP TABLE IF EXISTS `REG_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_LOG` (
  `REG_LOG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_PATH` varchar(750) DEFAULT NULL,
  `REG_USER_ID` varchar(31) NOT NULL,
  `REG_LOGGED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REG_ACTION` int(11) NOT NULL,
  `REG_ACTION_DATA` varchar(500) DEFAULT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_LOG_ID`,`REG_TENANT_ID`),
  KEY `REG_LOG_IND_BY_REG_LOGTIME` (`REG_LOGGED_TIME`,`REG_TENANT_ID`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=680 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_LOG`
--

LOCK TABLES `REG_LOG` WRITE;
/*!40000 ALTER TABLE `REG_LOG` DISABLE KEYS */;
INSERT INTO `REG_LOG` VALUES (1,'/_system/config','wso2.system.user','2017-12-11 08:08:17',7,NULL,-1234),(2,'/_system/config','wso2.system.user','2017-12-11 08:08:17',12,'gov;/_system/config',-1234),(3,'/_system/config','wso2.system.user','2017-12-11 08:08:17',0,NULL,-1234),(4,'/_system/config/repository','wso2.system.user','2017-12-11 08:08:17',0,NULL,-1234),(5,'/_system/config/repository/components','wso2.system.user','2017-12-11 08:08:17',0,NULL,-1234),(6,'/_system/config/repository/components/org.wso2.carbon.governance','wso2.system.user','2017-12-11 08:08:17',0,NULL,-1234),(7,'/_system/config/repository/components/org.wso2.carbon.governance/media-types','wso2.system.user','2017-12-11 08:08:17',0,NULL,-1234),(8,'/_system/config/repository/components/org.wso2.carbon.governance/media-types/index','wso2.system.user','2017-12-11 08:08:17',0,NULL,-1234),(9,'/_system/config/repository/components/org.wso2.carbon.governance/media-types/index/custom.ui','wso2.system.user','2017-12-11 08:08:17',0,NULL,-1234),(10,'/_system/config/repository/components/org.wso2.carbon.governance/media-types/index/collection','wso2.system.user','2017-12-11 08:08:17',0,NULL,-1234),(11,'/_system/config/users','wso2.system.user','2017-12-11 08:08:17',0,NULL,-1234),(12,'/_system/config/repository/components/org.wso2.carbon.governance/configuration','wso2.system.user','2017-12-11 08:08:18',0,NULL,-1234),(13,'/_system/config/repository/components/org.wso2.carbon.governance/configuration/services','wso2.system.user','2017-12-11 08:08:18',0,NULL,-1234),(14,'/_system/config/repository/components/org.wso2.carbon.governance/configuration/services/service','wso2.system.user','2017-12-11 08:08:18',0,NULL,-1234),(15,'/_system/config/repository/components/org.wso2.carbon.governance/configuration/services/service-schema','wso2.system.user','2017-12-11 08:08:18',0,NULL,-1234),(16,'/_system/config/repository/components/org.wso2.carbon.security.mgt','wso2.system.user','2017-12-11 08:08:21',0,NULL,-1234),(17,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy','wso2.system.user','2017-12-11 08:08:21',0,NULL,-1234),(18,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario1','wso2.system.user','2017-12-11 08:08:21',0,NULL,-1234),(19,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario2','wso2.system.user','2017-12-11 08:08:21',0,NULL,-1234),(20,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario3','wso2.system.user','2017-12-11 08:08:21',0,NULL,-1234),(21,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario4','wso2.system.user','2017-12-11 08:08:21',0,NULL,-1234),(22,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario5','wso2.system.user','2017-12-11 08:08:21',0,NULL,-1234),(23,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario6','wso2.system.user','2017-12-11 08:08:21',0,NULL,-1234),(24,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario7','wso2.system.user','2017-12-11 08:08:21',0,NULL,-1234),(25,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario8','wso2.system.user','2017-12-11 08:08:22',0,NULL,-1234),(26,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario9','wso2.system.user','2017-12-11 08:08:22',0,NULL,-1234),(27,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario10','wso2.system.user','2017-12-11 08:08:22',0,NULL,-1234),(28,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario11','wso2.system.user','2017-12-11 08:08:22',0,NULL,-1234),(29,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario12','wso2.system.user','2017-12-11 08:08:22',0,NULL,-1234),(30,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario13','wso2.system.user','2017-12-11 08:08:22',0,NULL,-1234),(31,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario14','wso2.system.user','2017-12-11 08:08:22',0,NULL,-1234),(32,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario15','wso2.system.user','2017-12-11 08:08:22',0,NULL,-1234),(33,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario20','wso2.system.user','2017-12-11 08:08:22',0,NULL,-1234),(34,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario31','wso2.system.user','2017-12-11 08:08:22',0,NULL,-1234),(35,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario32','wso2.system.user','2017-12-11 08:08:22',0,NULL,-1234),(36,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario33','wso2.system.user','2017-12-11 08:08:22',0,NULL,-1234),(37,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy/scenario34','wso2.system.user','2017-12-11 08:08:22',0,NULL,-1234),(38,'/_system/governance','wso2.system.user','2017-12-11 08:08:16',7,NULL,-1234),(39,'/_system/governance','wso2.system.user','2017-12-11 08:08:16',12,'gov;/_system/governance',-1234),(40,'/_system/governance','wso2.system.user','2017-12-11 08:08:17',0,NULL,-1234),(41,'/_system/governance/trunk','wso2.system.user','2017-12-11 08:08:17',0,NULL,-1234),(42,'/_system/governance/trunk/services','wso2.system.user','2017-12-11 08:08:17',0,NULL,-1234),(43,'/_system/governance/repository','wso2.system.user','2017-12-11 08:08:22',0,NULL,-1234),(44,'/_system/governance/repository/security','wso2.system.user','2017-12-11 08:08:22',0,NULL,-1234),(45,'/_system/governance/repository/security/key-stores','wso2.system.user','2017-12-11 08:08:22',0,NULL,-1234),(46,'/_system/governance/repository/security/key-stores/carbon-primary-ks','wso2.system.user','2017-12-11 08:08:22',0,NULL,-1234),(47,'/_system/config/repository/transports','wso2.system.user','2017-12-11 08:08:26',0,NULL,-1234),(48,'/_system/config/repository/transports/http','wso2.system.user','2017-12-11 08:08:26',0,NULL,-1234),(49,'/_system/config/repository/transports/http/listener','wso2.system.user','2017-12-11 08:08:26',0,NULL,-1234),(50,'/_system/config/repository/transports/https','wso2.system.user','2017-12-11 08:08:26',0,NULL,-1234),(51,'/_system/config/repository/transports/https/listener','wso2.system.user','2017-12-11 08:08:26',0,NULL,-1234),(52,'/_system/config/repository/transports/local','wso2.system.user','2017-12-11 08:08:26',0,NULL,-1234),(53,'/_system/config/repository/transports/local/listener','wso2.system.user','2017-12-11 08:08:26',0,NULL,-1234),(54,'/_system/config/repository/transports/http/sender','wso2.system.user','2017-12-11 08:08:26',0,NULL,-1234),(55,'/_system/config/repository/transports/https/sender','wso2.system.user','2017-12-11 08:08:26',0,NULL,-1234),(56,'/_system/config/repository/transports/local/sender','wso2.system.user','2017-12-11 08:08:26',0,NULL,-1234),(57,'/_system/config/repository/connection','wso2.system.user','2017-12-11 08:08:27',0,NULL,-1234),(58,'/_system/config/repository/connection/props','wso2.system.user','2017-12-11 08:08:27',0,NULL,-1234),(59,'/_system/config/apimgt','wso2.system.user','2017-12-11 08:08:30',0,NULL,-1234),(60,'/_system/config/apimgt/applicationdata','wso2.system.user','2017-12-11 08:08:30',0,NULL,-1234),(61,'/_system/config/apimgt/applicationdata/tenant-conf.json','wso2.system.user','2017-12-11 08:08:30',0,NULL,-1234),(62,'/_system/config/identity','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(63,'/_system/config/identity/email','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(64,'/_system/config/identity/email/passwordreset','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(65,'/_system/config/identity/email/passwordreset/en_us','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(66,'/_system/config/identity/email/emailconfirm','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(67,'/_system/config/identity/email/emailconfirm/en_us','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(68,'/_system/config/identity/email/accountidrecovery','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(69,'/_system/config/identity/email/accountidrecovery/en_us','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(70,'/_system/config/identity/email/accountconfirmation','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(71,'/_system/config/identity/email/accountconfirmation/en_us','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(72,'/_system/config/identity/email/resendaccountconfirmation','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(73,'/_system/config/identity/email/resendaccountconfirmation/en_us','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(74,'/_system/config/identity/email/temporarypassword','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(75,'/_system/config/identity/email/temporarypassword/en_us','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(76,'/_system/config/identity/email/onetimepassword','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(77,'/_system/config/identity/email/onetimepassword/en_us','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(78,'/_system/config/identity/email/askpassword','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(79,'/_system/config/identity/email/askpassword/en_us','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(80,'/_system/config/identity/email/adminforcedpasswordreset','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(81,'/_system/config/identity/email/adminforcedpasswordreset/en_us','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(82,'/_system/config/identity/email/adminforcedpasswordresetwithotp','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(83,'/_system/config/identity/email/adminforcedpasswordresetwithotp/en_us','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(84,'/_system/config/identity/email/accountunlock','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(85,'/_system/config/identity/email/accountunlock/en_us','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(86,'/_system/config/identity/email/accountlock','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(87,'/_system/config/identity/email/accountlock/en_us','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(88,'/_system/config/identity/email/accountenable','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(89,'/_system/config/identity/email/accountenable/en_us','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(90,'/_system/config/identity/email/accountdisable','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(91,'/_system/config/identity/email/accountdisable/en_us','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(92,'/_system/config/identity/email/passwordresetsucess','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(93,'/_system/config/identity/email/passwordresetsucess/en_us','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(94,'/_system/config/identity/email/initiaterecovery','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(95,'/_system/config/identity/email/initiaterecovery/en_us','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(96,'/_system/config/identity/email/idleaccountreminder','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(97,'/_system/config/identity/email/idleaccountreminder/en_us','wso2.system.user','2017-12-11 08:08:32',0,NULL,-1234),(98,'/_system/governance/permission','admin','2017-12-11 08:08:30',0,NULL,-1234),(99,'/_system/governance/permission/applications','admin','2017-12-11 08:08:30',0,NULL,-1234),(100,'/_system/governance/apimgt','wso2.system.user','2017-12-11 08:08:30',0,NULL,-1234),(101,'/_system/governance/apimgt/externalstores','wso2.system.user','2017-12-11 08:08:30',0,NULL,-1234),(102,'/_system/governance/apimgt/externalstores/external-api-stores.xml','wso2.system.user','2017-12-11 08:08:30',0,NULL,-1234),(103,'/_system/governance/apimgt/statistics','wso2.system.user','2017-12-11 08:08:30',0,NULL,-1234),(104,'/_system/governance/apimgt/statistics/ga-config.xml','wso2.system.user','2017-12-11 08:08:30',0,NULL,-1234),(105,'/_system/governance/apimgt/applicationdata','wso2.system.user','2017-12-11 08:08:30',0,NULL,-1234),(106,'/_system/governance/apimgt/applicationdata/workflow-extensions.xml','wso2.system.user','2017-12-11 08:08:30',0,NULL,-1234),(107,'/_system/governance/apimgt/applicationdata/sign-up-config.xml','wso2.system.user','2017-12-11 08:08:30',0,NULL,-1234),(108,'/_system/governance/repository/components','wso2.system.user','2017-12-11 08:08:31',0,NULL,-1234),(109,'/_system/governance/repository/components/org.wso2.carbon.user.mgt','wso2.system.user','2017-12-11 08:08:31',0,NULL,-1234),(110,'/_system/governance/repository/components/org.wso2.carbon.user.mgt/updatedTime','wso2.system.user','2017-12-11 08:08:31',0,NULL,-1234),(111,'/_system/governance/event','wso2.system.user','2017-12-11 08:08:31',0,NULL,-1234),(112,'/_system/governance/event/topics','wso2.system.user','2017-12-11 08:08:31',0,NULL,-1234),(113,'/_system/governance/event/topicIndex','wso2.system.user','2017-12-11 08:08:31',0,NULL,-1234),(114,'/_system/config/repository/components/org.wso2.carbon.identity.mgt','wso2.system.user','2017-12-11 08:08:39',0,NULL,-1234),(115,'/_system/config/repository/components/org.wso2.carbon.identity.mgt/questionCollection','wso2.system.user','2017-12-11 08:08:39',0,NULL,-1234),(116,'/_system/config/repository/components/org.wso2.carbon.identity.mgt/questionCollection/question0','wso2.system.user','2017-12-11 08:08:39',0,NULL,-1234),(117,'/_system/config/repository/components/org.wso2.carbon.identity.mgt/questionCollection/question1','wso2.system.user','2017-12-11 08:08:39',0,NULL,-1234),(118,'/_system/config/repository/components/org.wso2.carbon.identity.mgt/questionCollection/question2','wso2.system.user','2017-12-11 08:08:39',0,NULL,-1234),(119,'/_system/config/repository/components/org.wso2.carbon.identity.mgt/questionCollection/question3','wso2.system.user','2017-12-11 08:08:39',0,NULL,-1234),(120,'/_system/config/repository/components/org.wso2.carbon.identity.mgt/questionCollection/question4','wso2.system.user','2017-12-11 08:08:39',0,NULL,-1234),(121,'/_system/config/repository/components/org.wso2.carbon.identity.mgt/questionCollection/question5','wso2.system.user','2017-12-11 08:08:39',0,NULL,-1234),(122,'/_system/config/repository/components/org.wso2.carbon.identity.mgt/questionCollection/question6','wso2.system.user','2017-12-11 08:08:39',0,NULL,-1234),(123,'/_system/config/repository/components/org.wso2.carbon.identity.mgt/questionCollection/question7','wso2.system.user','2017-12-11 08:08:39',0,NULL,-1234),(124,'/_system/config/identity/config','wso2.system.user','2017-12-11 08:08:39',0,NULL,-1234),(125,'/_system/config/identity/config/emailTemplate','wso2.system.user','2017-12-11 08:08:39',0,NULL,-1234),(126,'/_system/config/oidc','wso2.system.user','2017-12-11 08:08:39',0,NULL,-1234),(127,'/_system/config/identity/questionCollection','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(128,'/_system/config/identity/questionCollection/challengeQuestion1','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(129,'/_system/config/identity/questionCollection/challengeQuestion1/question1','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(130,'/_system/config/identity/questionCollection/challengeQuestion1/question1/en_us','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(131,'/_system/config/identity/questionCollection/challengeQuestion1/question2','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(132,'/_system/config/identity/questionCollection/challengeQuestion1/question2/en_us','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(133,'/_system/config/identity/questionCollection/challengeQuestion1/question3','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(134,'/_system/config/identity/questionCollection/challengeQuestion1/question3/en_us','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(135,'/_system/config/identity/questionCollection/challengeQuestion1/question4','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(136,'/_system/config/identity/questionCollection/challengeQuestion1/question4/en_us','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(137,'/_system/config/identity/questionCollection/challengeQuestion2','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(138,'/_system/config/identity/questionCollection/challengeQuestion2/question1','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(139,'/_system/config/identity/questionCollection/challengeQuestion2/question1/en_us','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(140,'/_system/config/identity/questionCollection/challengeQuestion2/question2','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(141,'/_system/config/identity/questionCollection/challengeQuestion2/question2/en_us','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(142,'/_system/config/identity/questionCollection/challengeQuestion2/question3','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(143,'/_system/config/identity/questionCollection/challengeQuestion2/question3/en_us','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(144,'/_system/config/identity/questionCollection/challengeQuestion2/question4','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(145,'/_system/config/identity/questionCollection/challengeQuestion2/question4/en_us','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(146,'/_system/config/repository/components/org.wso2.carbon.logging','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(147,'/_system/config/repository/components/org.wso2.carbon.logging/log4j.file.not.found','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(148,'/_system/config/repository/components/org.wso2.carbon.logging/wso2carbon.system.log.last.modified','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(149,'/_system/governance/repository/identity','wso2.system.user','2017-12-11 08:08:36',0,NULL,-1234),(150,'/_system/governance/repository/identity/entitlement','wso2.system.user','2017-12-11 08:08:36',0,NULL,-1234),(151,'/_system/governance/repository/identity/entitlement/publisher','wso2.system.user','2017-12-11 08:08:36',0,NULL,-1234),(152,'/_system/governance/repository/identity/entitlement/publisher/PDP Subscriber','wso2.system.user','2017-12-11 08:08:36',0,NULL,-1234),(153,'/_system/governance/repository/identity/entitlement/policy','wso2.system.user','2017-12-11 08:08:36',0,NULL,-1234),(154,'/_system/governance/repository/identity/entitlement/policy/version','wso2.system.user','2017-12-11 08:08:36',0,NULL,-1234),(155,'/_system/governance/repository/identity/entitlement/policy/version/authn_time_and_scope_based_policy_template','wso2.system.user','2017-12-11 08:08:36',0,NULL,-1234),(156,'/_system/governance/repository/identity/entitlement/policy/version/authn_time_and_scope_based_policy_template','wso2.system.user','2017-12-11 08:08:36',1,NULL,-1234),(157,'/_system/governance/repository/identity/entitlement/policy/version/authn_time_and_scope_based_policy_template/1','wso2.system.user','2017-12-11 08:08:36',0,NULL,-1234),(158,'/_system/governance/repository/identity/entitlement/policy/version/authn_time_and_scope_based_policy_template','wso2.system.user','2017-12-11 08:08:36',1,NULL,-1234),(159,'/_system/governance/repository/identity/entitlement/policy/pap','wso2.system.user','2017-12-11 08:08:36',0,NULL,-1234),(160,'/_system/governance/repository/identity/entitlement/policy/pap/authn_time_and_scope_based_policy_template','wso2.system.user','2017-12-11 08:08:36',0,NULL,-1234),(161,'/_system/governance/repository/identity/entitlement/policy/pap/authn_time_and_scope_based_policy_template','wso2.system.user','2017-12-11 08:08:36',1,NULL,-1234),(162,'/_system/governance/repository/identity/entitlement/policy/version/authn_time_based_policy_template','wso2.system.user','2017-12-11 08:08:36',0,NULL,-1234),(163,'/_system/governance/repository/identity/entitlement/policy/version/authn_time_based_policy_template','wso2.system.user','2017-12-11 08:08:36',1,NULL,-1234),(164,'/_system/governance/repository/identity/entitlement/policy/version/authn_time_based_policy_template/1','wso2.system.user','2017-12-11 08:08:37',0,NULL,-1234),(165,'/_system/governance/repository/identity/entitlement/policy/version/authn_time_based_policy_template','wso2.system.user','2017-12-11 08:08:37',1,NULL,-1234),(166,'/_system/governance/repository/identity/entitlement/policy/pap','wso2.system.user','2017-12-11 08:08:37',1,NULL,-1234),(167,'/_system/governance/repository/identity/entitlement/policy/pap/authn_time_based_policy_template','wso2.system.user','2017-12-11 08:08:37',0,NULL,-1234),(168,'/_system/governance/repository/identity/entitlement/policy/pap/authn_time_based_policy_template','wso2.system.user','2017-12-11 08:08:37',1,NULL,-1234),(169,'/_system/governance/repository/identity/entitlement/policy/version/provisioning_user_claim_based_policy_template','wso2.system.user','2017-12-11 08:08:37',0,NULL,-1234),(170,'/_system/governance/repository/identity/entitlement/policy/version/provisioning_user_claim_based_policy_template','wso2.system.user','2017-12-11 08:08:37',1,NULL,-1234),(171,'/_system/governance/repository/identity/entitlement/policy/version/provisioning_user_claim_based_policy_template/1','wso2.system.user','2017-12-11 08:08:37',0,NULL,-1234),(172,'/_system/governance/repository/identity/entitlement/policy/version/provisioning_user_claim_based_policy_template','wso2.system.user','2017-12-11 08:08:37',1,NULL,-1234),(173,'/_system/governance/repository/identity/entitlement/policy/pap','wso2.system.user','2017-12-11 08:08:37',1,NULL,-1234),(174,'/_system/governance/repository/identity/entitlement/policy/pap/provisioning_user_claim_based_policy_template','wso2.system.user','2017-12-11 08:08:37',0,NULL,-1234),(175,'/_system/governance/repository/identity/entitlement/policy/pap/provisioning_user_claim_based_policy_template','wso2.system.user','2017-12-11 08:08:37',1,NULL,-1234),(176,'/_system/governance/repository/identity/entitlement/policy/version/authn_role_based_policy_template','wso2.system.user','2017-12-11 08:08:38',0,NULL,-1234),(177,'/_system/governance/repository/identity/entitlement/policy/version/authn_role_based_policy_template','wso2.system.user','2017-12-11 08:08:38',1,NULL,-1234),(178,'/_system/governance/repository/identity/entitlement/policy/version/authn_role_based_policy_template/1','wso2.system.user','2017-12-11 08:08:38',0,NULL,-1234),(179,'/_system/governance/repository/identity/entitlement/policy/version/authn_role_based_policy_template','wso2.system.user','2017-12-11 08:08:38',1,NULL,-1234),(180,'/_system/governance/repository/identity/entitlement/policy/pap','wso2.system.user','2017-12-11 08:08:38',1,NULL,-1234),(181,'/_system/governance/repository/identity/entitlement/policy/pap/authn_role_based_policy_template','wso2.system.user','2017-12-11 08:08:38',0,NULL,-1234),(182,'/_system/governance/repository/identity/entitlement/policy/pap/authn_role_based_policy_template','wso2.system.user','2017-12-11 08:08:38',1,NULL,-1234),(183,'/_system/governance/repository/identity/entitlement/policy/version/authn_user_claim_based_policy_template','wso2.system.user','2017-12-11 08:08:38',0,NULL,-1234),(184,'/_system/governance/repository/identity/entitlement/policy/version/authn_user_claim_based_policy_template','wso2.system.user','2017-12-11 08:08:38',1,NULL,-1234),(185,'/_system/governance/repository/identity/entitlement/policy/version/authn_user_claim_based_policy_template/1','wso2.system.user','2017-12-11 08:08:38',0,NULL,-1234),(186,'/_system/governance/repository/identity/entitlement/policy/version/authn_user_claim_based_policy_template','wso2.system.user','2017-12-11 08:08:38',1,NULL,-1234),(187,'/_system/governance/repository/identity/entitlement/policy/pap','wso2.system.user','2017-12-11 08:08:38',1,NULL,-1234),(188,'/_system/governance/repository/identity/entitlement/policy/pap/authn_user_claim_based_policy_template','wso2.system.user','2017-12-11 08:08:38',0,NULL,-1234),(189,'/_system/governance/repository/identity/entitlement/policy/pap/authn_user_claim_based_policy_template','wso2.system.user','2017-12-11 08:08:38',1,NULL,-1234),(190,'/_system/governance/repository/identity/entitlement/policy/version/provisioning_role_based_policy_template','wso2.system.user','2017-12-11 08:08:38',0,NULL,-1234),(191,'/_system/governance/repository/identity/entitlement/policy/version/provisioning_role_based_policy_template','wso2.system.user','2017-12-11 08:08:38',1,NULL,-1234),(192,'/_system/governance/repository/identity/entitlement/policy/version/provisioning_role_based_policy_template/1','wso2.system.user','2017-12-11 08:08:38',0,NULL,-1234),(193,'/_system/governance/repository/identity/entitlement/policy/version/provisioning_role_based_policy_template','wso2.system.user','2017-12-11 08:08:38',1,NULL,-1234),(194,'/_system/governance/repository/identity/entitlement/policy/pap','wso2.system.user','2017-12-11 08:08:38',1,NULL,-1234),(195,'/_system/governance/repository/identity/entitlement/policy/pap/provisioning_role_based_policy_template','wso2.system.user','2017-12-11 08:08:38',0,NULL,-1234),(196,'/_system/governance/repository/identity/entitlement/policy/pap/provisioning_role_based_policy_template','wso2.system.user','2017-12-11 08:08:38',1,NULL,-1234),(197,'/_system/governance/repository/identity/entitlement/policy/version/authn_scope_based_policy_template','wso2.system.user','2017-12-11 08:08:38',0,NULL,-1234),(198,'/_system/governance/repository/identity/entitlement/policy/version/authn_scope_based_policy_template','wso2.system.user','2017-12-11 08:08:38',1,NULL,-1234),(199,'/_system/governance/repository/identity/entitlement/policy/version/authn_scope_based_policy_template/1','wso2.system.user','2017-12-11 08:08:38',0,NULL,-1234),(200,'/_system/governance/repository/identity/entitlement/policy/version/authn_scope_based_policy_template','wso2.system.user','2017-12-11 08:08:38',1,NULL,-1234),(201,'/_system/governance/repository/identity/entitlement/policy/pap','wso2.system.user','2017-12-11 08:08:38',1,NULL,-1234),(202,'/_system/governance/repository/identity/entitlement/policy/pap/authn_scope_based_policy_template','wso2.system.user','2017-12-11 08:08:38',0,NULL,-1234),(203,'/_system/governance/repository/identity/entitlement/policy/pap/authn_scope_based_policy_template','wso2.system.user','2017-12-11 08:08:38',1,NULL,-1234),(204,'/_system/governance/repository/identity/entitlement/policy/version/provisioning_time_based_policy_template','wso2.system.user','2017-12-11 08:08:38',0,NULL,-1234),(205,'/_system/governance/repository/identity/entitlement/policy/version/provisioning_time_based_policy_template','wso2.system.user','2017-12-11 08:08:38',1,NULL,-1234),(206,'/_system/governance/repository/identity/entitlement/policy/version/provisioning_time_based_policy_template/1','wso2.system.user','2017-12-11 08:08:38',0,NULL,-1234),(207,'/_system/governance/repository/identity/entitlement/policy/version/provisioning_time_based_policy_template','wso2.system.user','2017-12-11 08:08:38',1,NULL,-1234),(208,'/_system/governance/repository/identity/entitlement/policy/pap','wso2.system.user','2017-12-11 08:08:38',1,NULL,-1234),(209,'/_system/governance/repository/identity/entitlement/policy/pap/provisioning_time_based_policy_template','wso2.system.user','2017-12-11 08:08:38',0,NULL,-1234),(210,'/_system/governance/repository/identity/entitlement/policy/pap/provisioning_time_based_policy_template','wso2.system.user','2017-12-11 08:08:38',1,NULL,-1234),(211,'/_system/governance/repository/identity/entitlement/policy/version/authn_time_and_role_based_policy_template','wso2.system.user','2017-12-11 08:08:38',0,NULL,-1234),(212,'/_system/governance/repository/identity/entitlement/policy/version/authn_time_and_role_based_policy_template','wso2.system.user','2017-12-11 08:08:38',1,NULL,-1234),(213,'/_system/governance/repository/identity/entitlement/policy/version/authn_time_and_role_based_policy_template/1','wso2.system.user','2017-12-11 08:08:38',0,NULL,-1234),(214,'/_system/governance/repository/identity/entitlement/policy/version/authn_time_and_role_based_policy_template','wso2.system.user','2017-12-11 08:08:38',1,NULL,-1234),(215,'/_system/governance/repository/identity/entitlement/policy/pap','wso2.system.user','2017-12-11 08:08:38',1,NULL,-1234),(216,'/_system/governance/repository/identity/entitlement/policy/pap/authn_time_and_role_based_policy_template','wso2.system.user','2017-12-11 08:08:38',0,NULL,-1234),(217,'/_system/governance/repository/identity/entitlement/policy/pap/authn_time_and_role_based_policy_template','wso2.system.user','2017-12-11 08:08:38',1,NULL,-1234),(218,'/_system/governance/repository/identity/entitlement/policy/version/authn_time_and_user_claim_based_policy_template','wso2.system.user','2017-12-11 08:08:38',0,NULL,-1234),(219,'/_system/governance/repository/identity/entitlement/policy/version/authn_time_and_user_claim_based_policy_template','wso2.system.user','2017-12-11 08:08:38',1,NULL,-1234),(220,'/_system/governance/repository/identity/entitlement/policy/version/authn_time_and_user_claim_based_policy_template/1','wso2.system.user','2017-12-11 08:08:39',0,NULL,-1234),(221,'/_system/governance/repository/identity/entitlement/policy/version/authn_time_and_user_claim_based_policy_template','wso2.system.user','2017-12-11 08:08:39',1,NULL,-1234),(222,'/_system/governance/repository/identity/entitlement/policy/pap','wso2.system.user','2017-12-11 08:08:39',1,NULL,-1234),(223,'/_system/governance/repository/identity/entitlement/policy/pap/authn_time_and_user_claim_based_policy_template','wso2.system.user','2017-12-11 08:08:39',0,NULL,-1234),(224,'/_system/governance/repository/identity/entitlement/policy/pap/authn_time_and_user_claim_based_policy_template','wso2.system.user','2017-12-11 08:08:39',1,NULL,-1234),(225,'/_system/governance/repository/identity/entitlement/policy/version/provisioning_time_and_role_based_policy_template','wso2.system.user','2017-12-11 08:08:39',0,NULL,-1234),(226,'/_system/governance/repository/identity/entitlement/policy/version/provisioning_time_and_role_based_policy_template','wso2.system.user','2017-12-11 08:08:39',1,NULL,-1234),(227,'/_system/governance/repository/identity/entitlement/policy/version/provisioning_time_and_role_based_policy_template/1','wso2.system.user','2017-12-11 08:08:39',0,NULL,-1234),(228,'/_system/governance/repository/identity/entitlement/policy/version/provisioning_time_and_role_based_policy_template','wso2.system.user','2017-12-11 08:08:39',1,NULL,-1234),(229,'/_system/governance/repository/identity/entitlement/policy/pap','wso2.system.user','2017-12-11 08:08:39',1,NULL,-1234),(230,'/_system/governance/repository/identity/entitlement/policy/pap/provisioning_time_and_role_based_policy_template','wso2.system.user','2017-12-11 08:08:39',0,NULL,-1234),(231,'/_system/governance/repository/identity/entitlement/policy/pap/provisioning_time_and_role_based_policy_template','wso2.system.user','2017-12-11 08:08:39',1,NULL,-1234),(232,'/_system/governance/repository/identity/entitlement/policy/version/provisioning_time_and_user_claim_based_policy_template','wso2.system.user','2017-12-11 08:08:39',0,NULL,-1234),(233,'/_system/governance/repository/identity/entitlement/policy/version/provisioning_time_and_user_claim_based_policy_template','wso2.system.user','2017-12-11 08:08:39',1,NULL,-1234),(234,'/_system/governance/repository/identity/entitlement/policy/version/provisioning_time_and_user_claim_based_policy_template/1','wso2.system.user','2017-12-11 08:08:39',0,NULL,-1234),(235,'/_system/governance/repository/identity/entitlement/policy/version/provisioning_time_and_user_claim_based_policy_template','wso2.system.user','2017-12-11 08:08:39',1,NULL,-1234),(236,'/_system/governance/repository/identity/entitlement/policy/pap','wso2.system.user','2017-12-11 08:08:39',1,NULL,-1234),(237,'/_system/governance/repository/identity/entitlement/policy/pap/provisioning_time_and_user_claim_based_policy_template','wso2.system.user','2017-12-11 08:08:39',0,NULL,-1234),(238,'/_system/governance/repository/identity/entitlement/policy/pap/provisioning_time_and_user_claim_based_policy_template','wso2.system.user','2017-12-11 08:08:39',1,NULL,-1234),(239,'/_system/governance/permission/admin','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(240,'/_system/governance/permission/admin/configure','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(241,'/_system/governance/permission/admin/configure/security','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(242,'/_system/governance/permission/admin/configure/security/usermgt','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(243,'/_system/governance/permission/admin/configure/security/usermgt/passwords','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(244,'/_system/governance/permission/admin/manage','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(245,'/_system/governance/permission/admin/monitor','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(246,'/_system/governance/permission/protected','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(247,'/_system/governance/permission/admin','wso2.system.user','2017-12-11 08:08:40',1,NULL,-1234),(248,'/_system/governance/permission/admin/configure','wso2.system.user','2017-12-11 08:08:40',1,NULL,-1234),(249,'/_system/governance/permission/admin/configure/security/usermgt','wso2.system.user','2017-12-11 08:08:40',1,NULL,-1234),(250,'/_system/governance/permission/admin/manage/modify','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(251,'/_system/governance/permission/admin/login','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(252,'/_system/governance/permission/admin/configure/security/usermgt/users','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(253,'/_system/governance/permission/admin/configure/security/usermgt/profiles','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(254,'/_system/governance/permission','wso2.system.user','2017-12-11 08:08:40',1,NULL,-1234),(255,'/_system/governance/permission/admin/manage/add','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(256,'/_system/governance/permission/admin/manage/add/webapp','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(257,'/_system/governance/permission/admin/manage/modify/webapp','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(258,'/_system/governance/permission/admin/manage/api','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(259,'/_system/governance/permission/admin/manage/api/create','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(260,'/_system/governance/permission/admin/manage/api/publish','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(261,'/_system/governance/permission/admin/manage/api/subscribe','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(262,'/_system/governance/permission/admin/manage/manage_tiers','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(263,'/_system/governance/permission/admin/manage/workflowadmin','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(264,'/_system/governance/permission/admin/manage/apim_admin','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(265,'/_system/governance/permission/admin/manage/attachment','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(266,'/_system/governance/permission/admin/monitor/attachment','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(267,'/_system/governance/permission/admin/manage/bpel','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(268,'/_system/governance/permission/admin/manage/bpel/processes','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(269,'/_system/governance/permission/admin/manage/bpel/instances','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(270,'/_system/governance/permission/admin/manage/bpel/packages','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(271,'/_system/governance/permission/admin/monitor/bpel','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(272,'/_system/governance/permission/admin/manage/bpel/add','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(273,'/_system/governance/permission/admin/manage/identity','wso2.system.user','2017-12-11 08:08:40',0,NULL,-1234),(274,'/_system/governance/permission/admin/manage/identity/claimmgt','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(275,'/_system/governance/permission/admin/manage/identity/claimmgt/claim','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(276,'/_system/governance/permission/admin/manage/identity/claimmgt/claim/create','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(277,'/_system/governance/permission/admin/manage/identity/claimmgt/claim/view','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(278,'/_system/governance/permission/admin/manage/identity/claimmgt/claim/update','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(279,'/_system/governance/permission/admin/manage/identity/claimmgt/claim/delete','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(280,'/_system/governance/permission/admin/manage/topic','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(281,'/_system/governance/permission/admin/manage/topic/addTopic','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(282,'/_system/governance/permission/admin/manage/topic/browseTopic','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(283,'/_system/governance/permission/admin/manage/topic/deleteTopic','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(284,'/_system/governance/permission/admin/manage/topic/purgeTopic','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(285,'/_system/governance/permission/admin/manage/event-publish','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(286,'/_system/governance/permission/admin/manage/event-streams','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(287,'/_system/governance/permission/protected/configure','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(288,'/_system/governance/permission/protected/configure/components','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(289,'/_system/governance/permission/admin/manage/humantask','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(290,'/_system/governance/permission/admin/manage/humantask/task','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(291,'/_system/governance/permission/admin/manage/humantask/packages','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(292,'/_system/governance/permission/admin/manage/humantask/viewtasks','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(293,'/_system/governance/permission/admin/manage/humantask/add','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(294,'/_system/governance/permission/admin/manage/identity/authentication','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(295,'/_system/governance/permission/admin/manage/identity/authentication/session','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(296,'/_system/governance/permission/admin/manage/identity/authentication/session/view','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(297,'/_system/governance/permission/admin/manage/identity/authentication/session/delete','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(298,'/_system/governance/permission/admin/manage/identity/applicationmgt','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(299,'/_system/governance/permission/admin/manage/identity/applicationmgt/view','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(300,'/_system/governance/permission/admin/manage/identity/applicationmgt/delete','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(301,'/_system/governance/permission/admin/manage/identity/applicationmgt/update','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(302,'/_system/governance/permission/admin/manage/identity/applicationmgt/create','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(303,'/_system/governance/permission/admin/manage/identity/claimmgt/metadata','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(304,'/_system/governance/permission/admin/manage/identity/claimmgt/metadata/create','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(305,'/_system/governance/permission/admin/manage/identity/claimmgt/metadata/view','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(306,'/_system/governance/permission/admin/manage/identity/claimmgt/metadata/update','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(307,'/_system/governance/permission/admin/manage/identity/claimmgt/metadata/delete','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(308,'/_system/governance/permission/admin/manage/identity/entitlement','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(309,'/_system/governance/permission/admin/manage/identity/entitlement/pap','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(310,'/_system/governance/permission/admin/manage/identity/entitlement/pap/policy','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(311,'/_system/governance/permission/admin/manage/identity/entitlement/pap/policy/create','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(312,'/_system/governance/permission/admin/manage/identity/entitlement/pap/policy/view','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(313,'/_system/governance/permission/admin/manage/identity/entitlement/pap/policy/update','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(314,'/_system/governance/permission/admin/manage/identity/entitlement/pap/policy/delete','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(315,'/_system/governance/permission/admin/manage/identity/entitlement/pap/policy/publish','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(316,'/_system/governance/permission/admin/manage/identity/entitlement/pap/policy/demote','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(317,'/_system/governance/permission/admin/manage/identity/entitlement/pap/policy/enable','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(318,'/_system/governance/permission/admin/manage/identity/entitlement/pap/policy/rollback','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(319,'/_system/governance/permission/admin/manage/identity/entitlement/pap/policy/order','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(320,'/_system/governance/permission/admin/manage/identity/entitlement/pap/policy/list','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(321,'/_system/governance/permission/admin/manage/identity/entitlement/pap/subscriber','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(322,'/_system/governance/permission/admin/manage/identity/entitlement/pap/subscriber/create','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(323,'/_system/governance/permission/admin/manage/identity/entitlement/pap/subscriber/view','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(324,'/_system/governance/permission/admin/manage/identity/entitlement/pap/subscriber/update','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(325,'/_system/governance/permission/admin/manage/identity/entitlement/pap/subscriber/delete','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(326,'/_system/governance/permission/admin/manage/identity/entitlement/pap/subscriber/list','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(327,'/_system/governance/permission/admin/manage/identity/entitlement/pdp','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(328,'/_system/governance/permission/admin/manage/identity/entitlement/pdp/manage','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(329,'/_system/governance/permission/admin/manage/identity/entitlement/pdp/view','wso2.system.user','2017-12-11 08:08:41',0,NULL,-1234),(330,'/_system/governance/permission/admin/manage/identity/entitlement/pdp/test','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(331,'/_system/governance/permission/admin/manage/identity/entitlement/pep','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(332,'/_system/governance/permission/admin/manage/identity/identitymgt','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(333,'/_system/governance/permission/admin/manage/identity/identitymgt/create','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(334,'/_system/governance/permission/admin/manage/identity/identitymgt/view','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(335,'/_system/governance/permission/admin/manage/identity/identitymgt/update','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(336,'/_system/governance/permission/admin/manage/identity/identitymgt/delete','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(337,'/_system/governance/permission/admin/manage/identity/pep','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(338,'/_system/governance/permission/admin/manage/identity/provisioning','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(339,'/_system/governance/permission/admin/manage/identity/user','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(340,'/_system/governance/permission/admin/manage/identity/user/association','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(341,'/_system/governance/permission/admin/manage/identity/user/association/create','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(342,'/_system/governance/permission/admin/manage/identity/user/association/view','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(343,'/_system/governance/permission/admin/manage/identity/user/association/update','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(344,'/_system/governance/permission/admin/manage/identity/user/association/delete','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(345,'/_system/governance/permission/admin/manage/identity/userprofile','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(346,'/_system/governance/permission/admin/manage/identity/userprofile/create','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(347,'/_system/governance/permission/admin/manage/identity/userprofile/view','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(348,'/_system/governance/permission/admin/manage/identity/userprofile/update','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(349,'/_system/governance/permission/admin/manage/identity/userprofile/delete','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(350,'/_system/governance/permission/admin/manage/identity/userstore','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(351,'/_system/governance/permission/admin/manage/identity/userstore/config','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(352,'/_system/governance/permission/admin/manage/identity/userstore/config/create','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(353,'/_system/governance/permission/admin/manage/identity/userstore/config/view','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(354,'/_system/governance/permission/admin/manage/identity/userstore/config/update','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(355,'/_system/governance/permission/admin/manage/identity/userstore/config/delete','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(356,'/_system/governance/permission/admin/manage/identity/userstore/count','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(357,'/_system/governance/permission/admin/manage/identity/userstore/count/create','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(358,'/_system/governance/permission/admin/manage/identity/userstore/count/view','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(359,'/_system/governance/permission/admin/manage/identity/userstore/count/update','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(360,'/_system/governance/permission/admin/manage/identity/userstore/count/delete','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(361,'/_system/governance/permission/admin/manage/identity/workflow','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(362,'/_system/governance/permission/admin/manage/identity/workflow/profile','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(363,'/_system/governance/permission/admin/manage/identity/workflow/profile/create','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(364,'/_system/governance/permission/admin/manage/identity/workflow/profile/view','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(365,'/_system/governance/permission/admin/manage/identity/workflow/profile/update','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(366,'/_system/governance/permission/admin/manage/identity/workflow/profile/delete','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(367,'/_system/governance/permission/admin/manage/identity/workflow/definition','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(368,'/_system/governance/permission/admin/manage/identity/workflow/definition/create','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(369,'/_system/governance/permission/admin/manage/identity/workflow/definition/view','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(370,'/_system/governance/permission/admin/manage/identity/workflow/definition/update','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(371,'/_system/governance/permission/admin/manage/identity/workflow/definition/delete','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(372,'/_system/governance/permission/admin/manage/identity/workflow/association','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(373,'/_system/governance/permission/admin/manage/identity/workflow/association/create','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(374,'/_system/governance/permission/admin/manage/identity/workflow/association/view','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(375,'/_system/governance/permission/admin/manage/identity/workflow/association/update','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(376,'/_system/governance/permission/admin/manage/identity/workflow/association/delete','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(377,'/_system/governance/permission/admin/manage/identity/workflow/monitor','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(378,'/_system/governance/permission/admin/manage/identity/workflow/monitor/view','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(379,'/_system/governance/permission/admin/manage/identity/workflow/monitor/delete','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(380,'/_system/governance/permission/admin/manage/identity/idpmgt','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(381,'/_system/governance/permission/admin/manage/identity/idpmgt/view','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(382,'/_system/governance/permission/admin/manage/identity/idpmgt/delete','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(383,'/_system/governance/permission/admin/manage/identity/idpmgt/update','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(384,'/_system/governance/permission/admin/manage/identity/idpmgt/create','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(385,'/_system/governance/permission/protected/configure/logging','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(386,'/_system/governance/permission/admin/monitor/logging','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(387,'/_system/governance/permission/admin/monitor/metrics','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(388,'/_system/governance/permission/admin/manage/modify/module','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(389,'/_system/governance/permission/admin/manage/add/module','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(390,'/_system/governance/permission/admin/configure/datasources','wso2.system.user','2017-12-11 08:08:42',0,NULL,-1234),(391,'/_system/governance/permission/admin/manage/modify/user-profile','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(392,'/_system/governance/permission/admin/manage/resources','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(393,'/_system/governance/permission/admin/manage/resources/browse','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(394,'/_system/governance/permission/admin/manage/resources/notifications','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(395,'/_system/governance/permission/admin/manage/extensions','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(396,'/_system/governance/permission/admin/manage/extensions/add','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(397,'/_system/governance/permission/admin/manage/extensions/list','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(398,'/_system/governance/permission/admin/manage/search','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(399,'/_system/governance/permission/admin/manage/search/resources','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(400,'/_system/governance/permission/admin/manage/search/advanced-search','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(401,'/_system/governance/permission/admin/manage/identity/keystoremgt','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(402,'/_system/governance/permission/admin/manage/identity/keystoremgt/create','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(403,'/_system/governance/permission/admin/manage/identity/keystoremgt/view','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(404,'/_system/governance/permission/admin/manage/identity/keystoremgt/update','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(405,'/_system/governance/permission/admin/manage/identity/keystoremgt/delete','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(406,'/_system/governance/permission/admin/manage/identity/securitymgt','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(407,'/_system/governance/permission/admin/manage/identity/securitymgt/create','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(408,'/_system/governance/permission/admin/manage/identity/securitymgt/view','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(409,'/_system/governance/permission/admin/manage/identity/securitymgt/update','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(410,'/_system/governance/permission/admin/manage/identity/securitymgt/delete','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(411,'/_system/governance/permission/admin/manage/identity/stsmgt','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(412,'/_system/governance/permission/admin/manage/identity/stsmgt/create','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(413,'/_system/governance/permission/admin/manage/identity/stsmgt/view','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(414,'/_system/governance/permission/admin/manage/identity/stsmgt/update','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(415,'/_system/governance/permission/admin/manage/identity/stsmgt/delete','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(416,'/_system/governance/permission/protected/server-admin','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(417,'/_system/governance/permission/protected/server-admin/homepage','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(418,'/_system/governance/permission/admin/manage/add/service','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(419,'/_system/governance/permission/admin/manage/modify/service','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(420,'/_system/governance/permission/protected/manage','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(421,'/_system/governance/permission/protected/manage/monitor','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(422,'/_system/governance/permission/protected/manage/monitor/tenants','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(423,'/_system/governance/permission/protected/manage/modify','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(424,'/_system/governance/permission/protected/manage/modify/tenants','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(425,'/_system/governance/permission/protected/manage/monitor/tenants/list','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(426,'/_system/governance/permission/admin/configure/theme','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(427,'/_system/governance/permission/admin/manage/identity/usermgt','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(428,'/_system/governance/permission/admin/manage/identity/usermgt/create','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(429,'/_system/governance/permission/admin/manage/identity/usermgt/view','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(430,'/_system/governance/permission/admin/manage/identity/usermgt/list','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(431,'/_system/governance/permission/admin/manage/identity/usermgt/update','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(432,'/_system/governance/permission/admin/manage/identity/usermgt/delete','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(433,'/_system/governance/permission/admin/manage/identity/rolemgt','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(434,'/_system/governance/permission/admin/manage/identity/rolemgt/create','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(435,'/_system/governance/permission/admin/manage/identity/rolemgt/view','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(436,'/_system/governance/permission/admin/manage/identity/rolemgt/update','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(437,'/_system/governance/permission/admin/manage/identity/rolemgt/delete','wso2.system.user','2017-12-11 08:08:43',0,NULL,-1234),(438,'/_system/governance/repository/components/org.wso2.carbon.all-themes','wso2.system.user','2017-12-11 08:09:10',0,NULL,-1234),(439,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default','wso2.system.user','2017-12-11 08:09:10',0,NULL,-1234),(440,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images','wso2.system.user','2017-12-11 08:09:10',0,NULL,-1234),(441,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/1px.gif','wso2.system.user','2017-12-11 08:09:10',0,NULL,-1234),(442,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-header-bg.png','wso2.system.user','2017-12-11 08:09:10',0,NULL,-1234),(443,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/menu_header.png','wso2.system.user','2017-12-11 08:09:10',0,NULL,-1234),(444,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-logo.png','wso2.system.user','2017-12-11 08:09:10',0,NULL,-1234),(445,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/is-server-menu-header.png','wso2.system.user','2017-12-11 08:09:10',0,NULL,-1234),(446,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/back-repeat.png','wso2.system.user','2017-12-11 08:09:10',0,NULL,-1234),(447,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/menu_header.gif','wso2.system.user','2017-12-11 08:09:10',0,NULL,-1234),(448,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/right-links-bg.gif','wso2.system.user','2017-12-11 08:09:10',0,NULL,-1234),(449,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/admin','wso2.system.user','2017-12-11 08:09:10',0,NULL,-1234),(450,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/admin/main.css','wso2.system.user','2017-12-11 08:09:10',0,NULL,-1234),(451,'/_system/config','wso2.system.user','2017-12-11 08:09:24',0,NULL,-1234),(452,'/_system/config/repository','wso2.system.user','2017-12-11 08:09:24',0,NULL,-1234),(453,'/_system/config','wso2.system.user','2017-12-11 08:09:24',7,NULL,-1234),(454,'/_system/config','wso2.system.user','2017-12-11 08:09:24',12,'gov;/_system/config',-1234),(455,'/_system/config/repository/esb','wso2.system.user','2017-12-11 08:09:28',0,NULL,-1234),(456,'/_system/config/repository/esb/registry','wso2.system.user','2017-12-11 08:09:28',0,NULL,-1234),(457,'/_system/config/repository/components/secure-vault','wso2.system.user','2017-12-11 08:09:28',0,NULL,-1234),(458,'/_system/config/repository/components/org.wso2.carbon.governance/lifecycles','wso2.system.user','2017-12-11 08:09:28',0,NULL,-1234),(459,'/_system/config/repository/components/org.wso2.carbon.governance/lifecycles/ServiceLifeCycle','wso2.system.user','2017-12-11 08:09:28',0,NULL,-1234),(460,'/_system/config/repository/components/org.wso2.carbon.governance/lifecycles/APILifeCycle','wso2.system.user','2017-12-11 08:09:28',0,NULL,-1234),(461,'/_system/governance','wso2.system.user','2017-12-11 08:09:24',0,NULL,-1234),(462,'/_system/governance/repository','wso2.system.user','2017-12-11 08:09:24',0,NULL,-1234),(463,'/_system/governance','wso2.system.user','2017-12-11 08:09:24',7,NULL,-1234),(464,'/_system/governance','wso2.system.user','2017-12-11 08:09:24',12,'gov;/_system/governance',-1234),(465,'/_system/governance/forumtopics','wso2.system.user','2017-12-11 08:09:27',0,NULL,-1234),(466,'/_system/governance/repository/components/org.wso2.carbon.governance','wso2.system.user','2017-12-11 08:09:27',0,NULL,-1234),(467,'/_system/governance/repository/components/org.wso2.carbon.governance/types','wso2.system.user','2017-12-11 08:09:27',0,NULL,-1234),(468,'/_system/governance/repository/components/org.wso2.carbon.governance/types/reply.rxt','wso2.system.user','2017-12-11 08:09:27',0,NULL,-1234),(469,'/_system/governance/repository/components/org.wso2.carbon.governance/types/topic.rxt','wso2.system.user','2017-12-11 08:09:28',0,NULL,-1234),(470,'/_system/config/repository/transports/ws','wso2.system.user','2017-12-11 08:09:40',0,NULL,-1234),(471,'/_system/config/repository/transports/ws/sender','wso2.system.user','2017-12-11 08:09:41',0,NULL,-1234),(472,'/_system/config/repository/connection/props','wso2.system.user','2017-12-11 08:09:42',1,NULL,-1234),(473,'/_system/config/repository/components/org.wso2.carbon.analytics.message.tracer.handler','wso2.system.user','2017-12-11 08:09:46',0,NULL,-1234),(474,'/_system/config/repository/components/org.wso2.carbon.analytics.message.tracer.handler/tracing','wso2.system.user','2017-12-11 08:09:46',0,NULL,-1234),(475,'/_system/config/repository/components/org.wso2.carbon.analytics.message.tracer.handler/tracing/EnableMessageTrace','wso2.system.user','2017-12-11 08:09:46',0,NULL,-1234),(476,'/_system/config/repository/components/org.wso2.carbon.analytics.message.tracer.handler/tracing/EnableDumpMessageBody','wso2.system.user','2017-12-11 08:09:46',0,NULL,-1234),(477,'/_system/config/repository/components/org.wso2.carbon.analytics.message.tracer.handler/tracing/EnableLogging','wso2.system.user','2017-12-11 08:09:46',0,NULL,-1234),(478,'/_system/config/repository/components/org.wso2.carbon.analytics.message.tracer.handler/tracing/EnablePublishToBAM','wso2.system.user','2017-12-11 08:09:46',0,NULL,-1234),(479,'/_system/config/repository/esb/esb-configurations','wso2.system.user','2017-12-11 08:09:52',0,NULL,-1234),(480,'/_system/config/repository/esb/esb-configurations/default','wso2.system.user','2017-12-11 08:09:53',0,NULL,-1234),(481,'/_system/governance/repository/components/org.wso2.carbon.governance/types/api.rxt','wso2.system.user','2017-12-11 08:09:46',0,NULL,-1234),(482,'/_system/governance/repository/components/org.wso2.carbon.governance/types/provider.rxt','wso2.system.user','2017-12-11 08:09:46',0,NULL,-1234),(483,'/_system/governance/repository/components/org.wso2.carbon.governance/types/documentation.rxt','wso2.system.user','2017-12-11 08:09:46',0,NULL,-1234),(484,'/_system/governance/apimgt/applicationdata/tiers.xml','wso2.system.user','2017-12-11 08:09:46',0,NULL,-1234),(485,'/_system/governance/apimgt/applicationdata/app-tiers.xml','wso2.system.user','2017-12-11 08:09:46',0,NULL,-1234),(486,'/_system/governance/apimgt/applicationdata/res-tiers.xml','wso2.system.user','2017-12-11 08:09:46',0,NULL,-1234),(487,'/_system/governance/apimgt/customsequences','wso2.system.user','2017-12-11 08:09:48',0,NULL,-1234),(488,'/_system/governance/apimgt/customsequences/in','wso2.system.user','2017-12-11 08:09:48',0,NULL,-1234),(489,'/_system/governance/apimgt/customsequences/in/preserve_accept_header.xml','wso2.system.user','2017-12-11 08:09:48',0,NULL,-1234),(490,'/_system/governance/apimgt/customsequences/in/debug_in_flow.xml','wso2.system.user','2017-12-11 08:09:48',0,NULL,-1234),(491,'/_system/governance/apimgt/customsequences/in/json_to_xml_in_message.xml','wso2.system.user','2017-12-11 08:09:48',0,NULL,-1234),(492,'/_system/governance/apimgt/customsequences/in/log_in_message.xml','wso2.system.user','2017-12-11 08:09:48',0,NULL,-1234),(493,'/_system/governance/apimgt/customsequences/in/xml_to_json_in_message.xml','wso2.system.user','2017-12-11 08:09:48',0,NULL,-1234),(494,'/_system/governance/apimgt/customsequences/out','wso2.system.user','2017-12-11 08:09:48',0,NULL,-1234),(495,'/_system/governance/apimgt/customsequences/out/apply_accept_header.xml','wso2.system.user','2017-12-11 08:09:48',0,NULL,-1234),(496,'/_system/governance/apimgt/customsequences/out/xml_to_json_out_message.xml','wso2.system.user','2017-12-11 08:09:48',0,NULL,-1234),(497,'/_system/governance/apimgt/customsequences/out/json_to_xml_out_message.xml','wso2.system.user','2017-12-11 08:09:48',0,NULL,-1234),(498,'/_system/governance/apimgt/customsequences/out/debug_out_flow.xml','wso2.system.user','2017-12-11 08:09:48',0,NULL,-1234),(499,'/_system/governance/apimgt/customsequences/out/log_out_message.xml','wso2.system.user','2017-12-11 08:09:48',0,NULL,-1234),(500,'/_system/governance/apimgt/customsequences/fault','wso2.system.user','2017-12-11 08:09:48',0,NULL,-1234),(501,'/_system/governance/apimgt/customsequences/fault/json_fault.xml','wso2.system.user','2017-12-11 08:09:48',0,NULL,-1234),(502,'/_system/governance/apimgt/customsequences/fault/debug_json_fault.xml','wso2.system.user','2017-12-11 08:09:48',0,NULL,-1234),(503,'/_system/governance/permission/admin/manage/resources/govern','wso2.system.user','2017-12-11 08:09:49',0,NULL,-1234),(504,'/_system/governance/permission/admin/manage/resources/govern/api','wso2.system.user','2017-12-11 08:09:49',0,NULL,-1234),(505,'/_system/governance/permission/admin/manage/resources/govern/api/add','wso2.system.user','2017-12-11 08:09:49',0,NULL,-1234),(506,'/_system/governance/permission/admin/manage/resources/govern/api/list','wso2.system.user','2017-12-11 08:09:49',0,NULL,-1234),(507,'/_system/governance/permission/admin/configure/governance','wso2.system.user','2017-12-11 08:09:49',0,NULL,-1234),(508,'/_system/governance/permission/admin/configure/governance/api-ui','wso2.system.user','2017-12-11 08:09:49',0,NULL,-1234),(509,'/_system/governance/permission/admin/manage/resources/govern/document','wso2.system.user','2017-12-11 08:09:49',0,NULL,-1234),(510,'/_system/governance/permission/admin/manage/resources/govern/document/add','wso2.system.user','2017-12-11 08:09:49',0,NULL,-1234),(511,'/_system/governance/permission/admin/manage/resources/govern/document/list','wso2.system.user','2017-12-11 08:09:49',0,NULL,-1234),(512,'/_system/governance/permission/admin/configure/governance/document-ui','wso2.system.user','2017-12-11 08:09:49',0,NULL,-1234),(513,'/_system/governance/permission/admin/manage/resources/govern/provider','wso2.system.user','2017-12-11 08:09:49',0,NULL,-1234),(514,'/_system/governance/permission/admin/manage/resources/govern/provider/add','wso2.system.user','2017-12-11 08:09:49',0,NULL,-1234),(515,'/_system/governance/permission/admin/manage/resources/govern/provider/list','wso2.system.user','2017-12-11 08:09:49',0,NULL,-1234),(516,'/_system/governance/permission/admin/configure/governance/provider-ui','wso2.system.user','2017-12-11 08:09:49',0,NULL,-1234),(517,'/_system/governance/permission/admin/manage/resources/govern/reply','wso2.system.user','2017-12-11 08:09:49',0,NULL,-1234),(518,'/_system/governance/permission/admin/manage/resources/govern/reply/add','wso2.system.user','2017-12-11 08:09:49',0,NULL,-1234),(519,'/_system/governance/permission/admin/manage/resources/govern/reply/list','wso2.system.user','2017-12-11 08:09:49',0,NULL,-1234),(520,'/_system/governance/permission/admin/configure/governance/reply-ui','wso2.system.user','2017-12-11 08:09:49',0,NULL,-1234),(521,'/_system/governance/permission/admin/manage/resources/govern/topic','wso2.system.user','2017-12-11 08:09:49',0,NULL,-1234),(522,'/_system/governance/permission/admin/manage/resources/govern/topic/add','wso2.system.user','2017-12-11 08:09:49',0,NULL,-1234),(523,'/_system/governance/permission/admin/manage/resources/govern/topic/list','wso2.system.user','2017-12-11 08:09:49',0,NULL,-1234),(524,'/_system/governance/permission/admin/configure/governance/topic-ui','wso2.system.user','2017-12-11 08:09:49',0,NULL,-1234),(525,'/_system/governance/permission/admin/manage/queue','wso2.system.user','2017-12-11 08:09:50',0,NULL,-1234),(526,'/_system/governance/permission/admin/manage/queue/add','wso2.system.user','2017-12-11 08:09:50',0,NULL,-1234),(527,'/_system/governance/permission/admin/manage/queue/browse','wso2.system.user','2017-12-11 08:09:50',0,NULL,-1234),(528,'/_system/governance/permission/admin/manage/queue/delete','wso2.system.user','2017-12-11 08:09:50',0,NULL,-1234),(529,'/_system/governance/permission/admin/manage/queue/purge','wso2.system.user','2017-12-11 08:09:50',0,NULL,-1234),(530,'/_system/governance/permission/admin/manage/dlc','wso2.system.user','2017-12-11 08:09:50',0,NULL,-1234),(531,'/_system/governance/permission/admin/manage/dlc/browse','wso2.system.user','2017-12-11 08:09:50',0,NULL,-1234),(532,'/_system/governance/permission/admin/manage/dlc/delete','wso2.system.user','2017-12-11 08:09:50',0,NULL,-1234),(533,'/_system/governance/permission/admin/manage/dlc/restore','wso2.system.user','2017-12-11 08:09:50',0,NULL,-1234),(534,'/_system/governance/permission/admin/manage/dlc/reroute','wso2.system.user','2017-12-11 08:09:50',0,NULL,-1234),(535,'/_system/governance/permission/admin/manage/subscriptions','wso2.system.user','2017-12-11 08:09:50',0,NULL,-1234),(536,'/_system/governance/permission/admin/manage/subscriptions/queue-browse','wso2.system.user','2017-12-11 08:09:50',0,NULL,-1234),(537,'/_system/governance/permission/admin/manage/subscriptions/topic-browse','wso2.system.user','2017-12-11 08:09:50',0,NULL,-1234),(538,'/_system/governance/permission/admin/manage/subscriptions/queue-close','wso2.system.user','2017-12-11 08:09:50',0,NULL,-1234),(539,'/_system/governance/permission/admin/manage/subscriptions/topic-close','wso2.system.user','2017-12-11 08:09:50',0,NULL,-1234),(540,'/_system/governance/permission/admin/manage/cluster','wso2.system.user','2017-12-11 08:09:50',0,NULL,-1234),(541,'/_system/governance/permission/admin/manage/cluster/list','wso2.system.user','2017-12-11 08:09:50',0,NULL,-1234),(542,'/_system/governance/permission/admin/manage/topic/add','wso2.system.user','2017-12-11 08:09:50',0,NULL,-1234),(543,'/_system/governance/permission/admin/manage/topic/details','wso2.system.user','2017-12-11 08:09:50',0,NULL,-1234),(544,'/_system/governance/permission/admin/manage/topic/delete','wso2.system.user','2017-12-11 08:09:50',0,NULL,-1234),(545,'/_system/governance/permission/admin/publish','wso2.system.user','2017-12-11 08:09:50',0,NULL,-1234),(546,'/_system/governance/permission/admin/publish/wso2event','wso2.system.user','2017-12-11 08:09:50',0,NULL,-1234),(547,'/_system/governance/permission/admin/manage/event-processor','wso2.system.user','2017-12-11 08:09:51',0,NULL,-1234),(548,'/_system/governance/permission/admin/manage/template-manager','wso2.system.user','2017-12-11 08:09:51',0,NULL,-1234),(549,'/_system/governance/permission/admin/manage/event-simulator','wso2.system.user','2017-12-11 08:09:51',0,NULL,-1234),(550,'/_system/governance/permission/admin/monitor/event-streams','wso2.system.user','2017-12-11 08:09:51',0,NULL,-1234),(551,'/_system/governance/permission/admin/manage/resources/govern','wso2.system.user','2017-12-11 08:09:51',1,NULL,-1234),(552,'/_system/governance/permission/admin/manage/resources/govern/lifecycles','wso2.system.user','2017-12-11 08:09:51',0,NULL,-1234),(553,'/_system/governance/permission/admin/manage/resources/govern/generic','wso2.system.user','2017-12-11 08:09:51',0,NULL,-1234),(554,'/_system/governance/permission/admin/manage/resources/govern/generic/add','wso2.system.user','2017-12-11 08:09:51',0,NULL,-1234),(555,'/_system/governance/permission/admin/manage/resources/govern/generic/list','wso2.system.user','2017-12-11 08:09:51',0,NULL,-1234),(556,'/_system/governance/permission/admin/configure/governance','wso2.system.user','2017-12-11 08:09:51',1,NULL,-1234),(557,'/_system/governance/permission/admin/configure/governance/generic','wso2.system.user','2017-12-11 08:09:51',0,NULL,-1234),(558,'/_system/governance/permission/admin/configure/governance/manage-rxt','wso2.system.user','2017-12-11 08:09:51',0,NULL,-1234),(559,'/_system/governance/permission/admin/configure/governance/lifecycles','wso2.system.user','2017-12-11 08:09:51',0,NULL,-1234),(560,'/_system/governance/permission/admin/manage/resources/govern/metadata','wso2.system.user','2017-12-11 08:09:51',0,NULL,-1234),(561,'/_system/governance/permission/admin/configure/inbound','wso2.system.user','2017-12-11 08:09:51',0,NULL,-1234),(562,'/_system/governance/permission/admin/manage/artifacts','wso2.system.user','2017-12-11 08:09:51',0,NULL,-1234),(563,'/_system/governance/permission/admin/manage/mediation','wso2.system.user','2017-12-11 08:09:51',0,NULL,-1234),(564,'/_system/governance/permission/admin/monitor/mediation','wso2.system.user','2017-12-11 08:09:51',0,NULL,-1234),(565,'/_system/governance/permission/admin/configure/medntask','wso2.system.user','2017-12-11 08:09:52',0,NULL,-1234),(566,'/_system/governance/permission/admin/configure/ntaskadmin','wso2.system.user','2017-12-11 08:09:52',0,NULL,-1234),(567,'/_system/governance/permission/admin/configure/priorityexecutors','wso2.system.user','2017-12-11 08:09:52',0,NULL,-1234),(568,'/_system/governance/permission/admin/manage/resources/community-features','wso2.system.user','2017-12-11 08:09:52',0,NULL,-1234),(569,'/_system/governance/permission/admin/manage/resources/associations','wso2.system.user','2017-12-11 08:09:52',0,NULL,-1234),(570,'/_system/governance/permission/admin/manage/resources/ws-api','wso2.system.user','2017-12-11 08:09:52',0,NULL,-1234),(571,'/_system/governance/permission/admin/manage/siddhi-tryit','wso2.system.user','2017-12-11 08:09:52',0,NULL,-1234),(572,'/_system/governance/permission/admin/configure/tasks','wso2.system.user','2017-12-11 08:09:52',0,NULL,-1234),(573,'/_system/governance/permission/admin/monitor/tenantUsage','wso2.system.user','2017-12-11 08:09:52',0,NULL,-1234),(574,'/_system/governance/permission/admin/monitor/tenantUsage/customUsage','wso2.system.user','2017-12-11 08:09:52',0,NULL,-1234),(575,'/_system/config/ues','wso2.system.user','2017-12-11 08:10:22',0,NULL,-1234),(576,'/_system/config/ues/dashboards','wso2.system.user','2017-12-11 08:10:22',0,NULL,-1234),(577,'/_system/config/ues/dashboards/log-analyzer','wso2.system.user','2017-12-11 08:10:22',0,NULL,-1234),(578,'/_system/config/repository/esb/inbound','wso2.system.user','2017-12-11 08:10:22',0,NULL,-1234),(579,'/_system/config/repository/esb/inbound/inbound-endpoints','wso2.system.user','2017-12-11 08:10:22',0,NULL,-1234),(580,'/_system/config/repository/esb/inbound/inbound-endpoints','wso2.system.user','2017-12-11 08:10:22',1,NULL,-1234),(581,'/_system/config/repository/components/org.wso2.carbon.logging/wso2carbon.system.log.last.modified','wso2.system.user','2017-12-11 08:10:23',1,NULL,-1234),(582,'/_system/config/repository/transports/ws/listener','wso2.system.user','2017-12-11 08:10:27',0,NULL,-1234),(583,'/_system/config/repository/transports/wss','wso2.system.user','2017-12-11 08:10:27',0,NULL,-1234),(584,'/_system/config/repository/transports/wss/listener','wso2.system.user','2017-12-11 08:10:27',0,NULL,-1234),(585,'/_system/config/repository/transports/wss/sender','wso2.system.user','2017-12-11 08:10:27',0,NULL,-1234),(586,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default','wso2.system.user','2017-12-11 08:10:25',1,NULL,-1234),(587,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images','wso2.system.user','2017-12-11 08:10:25',1,NULL,-1234),(588,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/api-logo.png','wso2.system.user','2017-12-11 08:10:25',0,NULL,-1234),(589,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/api-header-region-bg.png','wso2.system.user','2017-12-11 08:10:25',0,NULL,-1234),(590,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/menu_header.gif','wso2.system.user','2017-12-11 08:10:25',1,NULL,-1234),(591,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/api-server-menu-header.gif','wso2.system.user','2017-12-11 08:10:25',0,NULL,-1234),(592,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/api-server-menu-panel-bg.png','wso2.system.user','2017-12-11 08:10:25',0,NULL,-1234),(593,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/api-header-back.png','wso2.system.user','2017-12-11 08:10:25',0,NULL,-1234),(594,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/right-links-bg.gif','wso2.system.user','2017-12-11 08:10:25',1,NULL,-1234),(595,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/admin','wso2.system.user','2017-12-11 08:10:25',1,NULL,-1234),(596,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/admin/main.css','wso2.system.user','2017-12-11 08:10:25',1,NULL,-1234),(597,'/_system/governance/event/queues','wso2.system.user','2017-12-11 08:10:25',0,NULL,-1234),(598,'/_system/governance/event/queues/jms','wso2.system.user','2017-12-11 08:10:25',0,NULL,-1234),(599,'/_system/governance/event/queues/jms/tmp_172_18_0_1_44008_1','wso2.system.user','2017-12-11 08:10:25',0,NULL,-1234),(600,'/_system/governance/event/topics/throttleData','wso2.system.user','2017-12-11 08:10:25',0,NULL,-1234),(601,'/_system/governance/event/topics/throttleData/jms.subscriptions','wso2.system.user','2017-12-11 08:10:25',0,NULL,-1234),(602,'/_system/governance/event/topics/throttleData/jms.subscriptions/tmp_172_18_0_1_44008_1','wso2.system.user','2017-12-11 08:10:25',0,NULL,-1234),(603,'/_system/config/repository/identity','wso2.system.user','2017-12-11 08:20:23',0,NULL,-1234),(604,'/_system/config/repository/identity/SAMLSSO','wso2.system.user','2017-12-11 08:20:23',0,NULL,-1234),(605,'/_system/config/repository/identity/SAMLSSO/QVBJX1BVQkxJU0hFUg','wso2.system.user','2017-12-11 08:20:23',0,NULL,-1234),(606,'/_system/config/repository/identity/SAMLSSO/QVBJX1NUT1JF','wso2.system.user','2017-12-11 08:22:35',0,NULL,-1234),(607,'/_system/governance/repository','wso2.system.user','2017-12-11 08:33:22',0,NULL,-1234),(608,'/_system/config/repository','wso2.system.user','2017-12-11 08:33:22',0,NULL,-1234),(609,'/_system/config/repository/connection/props','wso2.system.user','2017-12-11 08:33:36',1,NULL,-1234),(610,'/_system/config/repository/components/org.wso2.carbon.logging/wso2carbon.system.log.pattern','wso2.system.user','2017-12-11 08:34:06',0,NULL,-1234),(611,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default','wso2.system.user','2017-12-11 08:34:07',1,NULL,-1234),(612,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images','wso2.system.user','2017-12-11 08:34:07',1,NULL,-1234),(613,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/api-logo.png','wso2.system.user','2017-12-11 08:34:07',1,NULL,-1234),(614,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/api-header-region-bg.png','wso2.system.user','2017-12-11 08:34:07',1,NULL,-1234),(615,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/menu_header.gif','wso2.system.user','2017-12-11 08:34:07',1,NULL,-1234),(616,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/api-server-menu-header.gif','wso2.system.user','2017-12-11 08:34:07',1,NULL,-1234),(617,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/api-server-menu-panel-bg.png','wso2.system.user','2017-12-11 08:34:07',1,NULL,-1234),(618,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/api-header-back.png','wso2.system.user','2017-12-11 08:34:07',1,NULL,-1234),(619,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images/right-links-bg.gif','wso2.system.user','2017-12-11 08:34:07',1,NULL,-1234),(620,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/admin','wso2.system.user','2017-12-11 08:34:07',1,NULL,-1234),(621,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/admin/main.css','wso2.system.user','2017-12-11 08:34:07',1,NULL,-1234),(622,'/_system/governance/event/queues/jms/tmp_172_18_0_1_44720_1','wso2.system.user','2017-12-11 08:34:07',0,NULL,-1234),(623,'/_system/governance/event/topics/throttleData/jms.subscriptions/tmp_172_18_0_1_44720_1','wso2.system.user','2017-12-11 08:34:08',0,NULL,-1234),(624,'/_system/config/repository/components/org.wso2.carbon.registry','wso2.system.user','2017-12-11 08:34:44',0,NULL,-1234),(625,'/_system/config/repository/components/org.wso2.carbon.registry/queries','wso2.system.user','2017-12-11 08:34:44',0,NULL,-1234),(626,'/_system/config/repository/components/org.wso2.carbon.registry/queries/tag-summary','wso2.system.user','2017-12-11 08:34:44',0,NULL,-1234),(627,'/_system/config/repository/components/org.wso2.carbon.registry/queries/latest-apis','wso2.system.user','2017-12-11 08:34:44',0,NULL,-1234),(628,'/_system/config/repository/components/org.wso2.carbon.registry/queries/resource-by-tag','wso2.system.user','2017-12-11 08:34:44',0,NULL,-1234),(629,'/_system/governance/apimgt/applicationdata/provider','admin','2017-12-11 08:47:19',0,NULL,-1234),(630,'/_system/governance/apimgt/applicationdata/provider/admin','admin','2017-12-11 08:47:19',0,NULL,-1234),(631,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe','admin','2017-12-11 08:47:19',0,NULL,-1234),(632,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0','admin','2017-12-11 08:47:19',0,NULL,-1234),(633,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/api','admin','2017-12-11 08:47:19',0,NULL,-1234),(634,'/_system/governance/repository/components/org.wso2.carbon.governance/lifecycles','wso2.system.user','2017-12-11 08:47:20',0,NULL,-1234),(635,'/_system/governance/repository/components/org.wso2.carbon.governance/lifecycles/history','wso2.system.user','2017-12-11 08:47:20',0,NULL,-1234),(636,'/_system/governance/repository/components/org.wso2.carbon.governance/lifecycles/history/__system_governance_apimgt_applicationdata_provider_admin_TestMe_1.0.0_api','wso2.system.user','2017-12-11 08:47:20',0,NULL,-1234),(637,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/api','admin','2017-12-11 08:47:20',1,NULL,-1234),(638,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/api','admin','2017-12-11 08:47:20',17,'APILifeCycle',-1234),(639,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/api','admin','2017-12-11 08:47:20',1,NULL,-1234),(640,'/_system/governance/apimgt/applicationdata/provider/admin','admin','2017-12-11 08:47:20',15,'provides;/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/api',-1234),(641,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/api','admin','2017-12-11 08:47:20',1,NULL,-1234),(642,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/swagger.json','admin','2017-12-11 08:47:20',0,NULL,-1234),(643,'/_system/governance/apimgt/applicationdata/icons','admin','2017-12-11 08:47:20',0,NULL,-1234),(644,'/_system/governance/apimgt/applicationdata/icons/admin','admin','2017-12-11 08:47:20',0,NULL,-1234),(645,'/_system/governance/apimgt/applicationdata/icons/admin/TestMe','admin','2017-12-11 08:47:20',0,NULL,-1234),(646,'/_system/governance/apimgt/applicationdata/icons/admin/TestMe/1.0.0','admin','2017-12-11 08:47:20',0,NULL,-1234),(647,'/_system/governance/apimgt/applicationdata/icons/admin/TestMe/1.0.0/icon','admin','2017-12-11 08:47:20',0,NULL,-1234),(648,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/api','admin','2017-12-11 08:47:21',4,'test',-1234),(649,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/api','admin','2017-12-11 08:47:21',1,NULL,-1234),(650,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/api','admin','2017-12-11 08:47:21',1,NULL,-1234),(651,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/swagger.json','admin','2017-12-11 08:47:37',1,NULL,-1234),(652,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/api','admin','2017-12-11 08:47:37',5,'test',-1234),(653,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/api','admin','2017-12-11 08:47:37',4,'test',-1234),(654,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/api','admin','2017-12-11 08:47:37',1,NULL,-1234),(655,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/api','admin','2017-12-11 08:47:38',1,NULL,-1234),(656,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/swagger.json','admin','2017-12-11 08:49:11',1,NULL,-1234),(657,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/api','admin','2017-12-11 08:49:12',5,'test',-1234),(658,'/_system/config/governance','wso2.system.user','2017-12-11 08:49:16',0,NULL,-1234),(659,'/_system/config/governance/lcm','wso2.system.user','2017-12-11 08:49:16',0,NULL,-1234),(660,'/_system/config/governance/lcm/fba36a42-2f8d-4c3c-8700-a1fd461fd6c8','wso2.system.user','2017-12-11 08:49:16',0,NULL,-1234),(661,'/_system/config/governance/lcm/fba36a42-2f8d-4c3c-8700-a1fd461fd6c8','wso2.system.user','2017-12-11 08:49:16',1,NULL,-1234),(662,'/_system/config/governance/lcm/fba36a42-2f8d-4c3c-8700-a1fd461fd6c8','wso2.system.user','2017-12-11 08:49:16',17,'ServiceLifeCycle',-1234),(663,'/_system/config/governance/lcm/fba36a42-2f8d-4c3c-8700-a1fd461fd6c8','wso2.system.user','2017-12-11 08:49:16',1,NULL,-1234),(664,'/_system/config/governance/lcm/fba36a42-2f8d-4c3c-8700-a1fd461fd6c8','wso2.system.user','2017-12-11 08:49:17',1,NULL,-1234),(665,'/_system/config/governance/lcm/fba36a42-2f8d-4c3c-8700-a1fd461fd6c8','wso2.system.user','2017-12-11 08:49:17',17,'APILifeCycle',-1234),(666,'/_system/config/governance/lcm/fba36a42-2f8d-4c3c-8700-a1fd461fd6c8','wso2.system.user','2017-12-11 08:49:17',7,NULL,-1234),(667,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/api','admin','2017-12-11 08:49:12',4,'test',-1234),(668,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/api','admin','2017-12-11 08:49:12',1,NULL,-1234),(669,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/api','admin','2017-12-11 08:49:12',1,NULL,-1234),(670,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/api','admin','2017-12-11 08:49:13',5,'test',-1234),(671,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/api','admin','2017-12-11 08:49:13',4,'test',-1234),(672,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/api','admin','2017-12-11 08:49:13',1,NULL,-1234),(673,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/api','admin','2017-12-11 08:49:13',1,NULL,-1234),(674,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/api','admin','2017-12-11 08:49:13',1,NULL,-1234),(675,'/_system/governance/repository/components/org.wso2.carbon.governance/lifecycles/history/__system_governance_apimgt_applicationdata_provider_admin_TestMe_1.0.0_api','wso2.system.user','2017-12-11 08:49:13',1,NULL,-1234),(676,'/_system/governance/repository/components/org.wso2.carbon.governance/lifecycles/history/__system_config_governance_lcm_fba36a42-2f8d-4c3c-8700-a1fd461fd6c8','wso2.system.user','2017-12-11 08:49:16',0,NULL,-1234),(677,'/_system/governance/repository/components/org.wso2.carbon.governance/lifecycles/history/__system_config_governance_lcm_fba36a42-2f8d-4c3c-8700-a1fd461fd6c8','wso2.system.user','2017-12-11 08:49:17',1,NULL,-1234),(678,'/_system/governance/event/queues/jms/tmp_172_18_0_1_44720_1','wso2.system.user','2017-12-11 08:51:33',7,NULL,-1234),(679,'/_system/governance/event/topics/throttleData/jms.subscriptions/tmp_172_18_0_1_44720_1','wso2.system.user','2017-12-11 08:51:34',7,NULL,-1234);
/*!40000 ALTER TABLE `REG_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_PATH`
--

DROP TABLE IF EXISTS `REG_PATH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_PATH` (
  `REG_PATH_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_PATH_VALUE` varchar(750) NOT NULL,
  `REG_PATH_PARENT_ID` int(11) DEFAULT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_PATH_ID`,`REG_TENANT_ID`),
  KEY `REG_PATH_IND_BY_PATH_VALUE` (`REG_PATH_VALUE`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_PATH_IND_BY_PATH_PARENT_ID` (`REG_PATH_PARENT_ID`,`REG_TENANT_ID`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=406 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_PATH`
--

LOCK TABLES `REG_PATH` WRITE;
/*!40000 ALTER TABLE `REG_PATH` DISABLE KEYS */;
INSERT INTO `REG_PATH` VALUES (1,'/',-1,-1234),(2,'/_system',1,-1234),(3,'/_system/config',2,-1234),(4,'/_system/config/repository',3,-1234),(5,'/_system/config/repository/components',4,-1234),(6,'/_system/config/repository/components/org.wso2.carbon.governance',5,-1234),(7,'/_system/config/repository/components/org.wso2.carbon.governance/media-types',6,-1234),(8,'/_system/config/repository/components/org.wso2.carbon.governance/media-types/index',7,-1234),(9,'/_system/config/users',3,-1234),(10,'/_system/governance',2,-1234),(11,'/_system/governance/trunk',10,-1234),(12,'/_system/governance/trunk/services',11,-1234),(13,'/_system/config/repository/components/org.wso2.carbon.governance/configuration',6,-1234),(14,'/_system/config/repository/components/org.wso2.carbon.governance/configuration/services',13,-1234),(15,'/_system/config/repository/components/org.wso2.carbon.security.mgt',5,-1234),(16,'/_system/config/repository/components/org.wso2.carbon.security.mgt/policy',15,-1234),(17,'/_system/governance/repository',10,-1234),(18,'/_system/governance/repository/security',17,-1234),(19,'/_system/governance/repository/security/key-stores',18,-1234),(20,'/_system/config/repository/transports',4,-1234),(21,'/_system/config/repository/transports/http',20,-1234),(22,'/_system/config/repository/transports/https',20,-1234),(23,'/_system/config/repository/transports/local',20,-1234),(24,'/_system/config/repository/connection',4,-1234),(25,'/_system/governance/permission',10,-1234),(26,'/_system/governance/permission/applications',25,-1234),(27,'/_system/governance/apimgt',10,-1234),(28,'/_system/governance/apimgt/externalstores',27,-1234),(29,'/_system/governance/apimgt/statistics',27,-1234),(30,'/_system/config/apimgt',3,-1234),(31,'/_system/config/apimgt/applicationdata',30,-1234),(32,'/_system/governance/apimgt/applicationdata',27,-1234),(33,'/_system/governance/repository/components',17,-1234),(34,'/_system/governance/repository/components/org.wso2.carbon.user.mgt',33,-1234),(35,'/_system/governance/event',10,-1234),(36,'/_system/governance/event/topics',35,-1234),(37,'/_system/config/identity',3,-1234),(38,'/_system/config/identity/email',37,-1234),(39,'/_system/config/identity/email/passwordreset',38,-1234),(40,'/_system/config/identity/email/emailconfirm',38,-1234),(41,'/_system/config/identity/email/accountidrecovery',38,-1234),(42,'/_system/config/identity/email/accountconfirmation',38,-1234),(43,'/_system/config/identity/email/resendaccountconfirmation',38,-1234),(44,'/_system/config/identity/email/temporarypassword',38,-1234),(45,'/_system/config/identity/email/onetimepassword',38,-1234),(46,'/_system/config/identity/email/askpassword',38,-1234),(47,'/_system/config/identity/email/adminforcedpasswordreset',38,-1234),(48,'/_system/config/identity/email/adminforcedpasswordresetwithotp',38,-1234),(49,'/_system/config/identity/email/accountunlock',38,-1234),(50,'/_system/config/identity/email/accountlock',38,-1234),(51,'/_system/config/identity/email/accountenable',38,-1234),(52,'/_system/config/identity/email/accountdisable',38,-1234),(53,'/_system/config/identity/email/passwordresetsucess',38,-1234),(54,'/_system/config/identity/email/initiaterecovery',38,-1234),(55,'/_system/config/identity/email/idleaccountreminder',38,-1234),(56,'/_system/governance/repository/identity',17,-1234),(57,'/_system/governance/repository/identity/entitlement',56,-1234),(58,'/_system/governance/repository/identity/entitlement/publisher',57,-1234),(59,'/_system/governance/repository/identity/entitlement/policy',57,-1234),(60,'/_system/governance/repository/identity/entitlement/policy/version',59,-1234),(61,'/_system/governance/repository/identity/entitlement/policy/version/authn_time_and_scope_based_policy_template',60,-1234),(62,'/_system/governance/repository/identity/entitlement/policy/pap',59,-1234),(63,'/_system/governance/repository/identity/entitlement/policy/version/authn_time_based_policy_template',60,-1234),(64,'/_system/governance/repository/identity/entitlement/policy/version/provisioning_user_claim_based_policy_template',60,-1234),(65,'/_system/governance/repository/identity/entitlement/policy/version/authn_role_based_policy_template',60,-1234),(66,'/_system/governance/repository/identity/entitlement/policy/version/authn_user_claim_based_policy_template',60,-1234),(67,'/_system/governance/repository/identity/entitlement/policy/version/provisioning_role_based_policy_template',60,-1234),(68,'/_system/governance/repository/identity/entitlement/policy/version/authn_scope_based_policy_template',60,-1234),(69,'/_system/governance/repository/identity/entitlement/policy/version/provisioning_time_based_policy_template',60,-1234),(70,'/_system/governance/repository/identity/entitlement/policy/version/authn_time_and_role_based_policy_template',60,-1234),(71,'/_system/governance/repository/identity/entitlement/policy/version/authn_time_and_user_claim_based_policy_template',60,-1234),(72,'/_system/governance/repository/identity/entitlement/policy/version/provisioning_time_and_role_based_policy_template',60,-1234),(73,'/_system/governance/repository/identity/entitlement/policy/version/provisioning_time_and_user_claim_based_policy_template',60,-1234),(74,'/_system/config/repository/components/org.wso2.carbon.identity.mgt',5,-1234),(75,'/_system/config/repository/components/org.wso2.carbon.identity.mgt/questionCollection',74,-1234),(76,'/_system/config/identity/config',37,-1234),(77,'/_system/config/identity/questionCollection',37,-1234),(78,'/_system/config/identity/questionCollection/challengeQuestion1',77,-1234),(79,'/_system/config/identity/questionCollection/challengeQuestion1/question1',78,-1234),(80,'/_system/config/identity/questionCollection/challengeQuestion1/question2',78,-1234),(81,'/_system/config/identity/questionCollection/challengeQuestion1/question3',78,-1234),(82,'/_system/config/identity/questionCollection/challengeQuestion1/question4',78,-1234),(83,'/_system/config/identity/questionCollection/challengeQuestion2',77,-1234),(84,'/_system/config/identity/questionCollection/challengeQuestion2/question1',83,-1234),(85,'/_system/config/identity/questionCollection/challengeQuestion2/question2',83,-1234),(86,'/_system/config/identity/questionCollection/challengeQuestion2/question3',83,-1234),(87,'/_system/config/identity/questionCollection/challengeQuestion2/question4',83,-1234),(88,'/_system/governance/permission/admin',25,-1234),(89,'/_system/governance/permission/admin/configure',88,-1234),(90,'/_system/governance/permission/admin/configure/security',89,-1234),(91,'/_system/governance/permission/admin/configure/security/usermgt',90,-1234),(92,'/_system/governance/permission/admin/configure/security/usermgt/passwords',91,-1234),(93,'/_system/governance/permission/admin/manage',88,-1234),(94,'/_system/governance/permission/admin/monitor',88,-1234),(95,'/_system/governance/permission/protected',25,-1234),(96,'/_system/governance/permission/admin/manage/modify',93,-1234),(97,'/_system/governance/permission/admin/login',88,-1234),(98,'/_system/governance/permission/admin/configure/security/usermgt/users',91,-1234),(99,'/_system/governance/permission/admin/configure/security/usermgt/profiles',91,-1234),(100,'/_system/governance/permission/admin/manage/add',93,-1234),(101,'/_system/governance/permission/admin/manage/add/webapp',100,-1234),(102,'/_system/governance/permission/admin/manage/modify/webapp',96,-1234),(103,'/_system/governance/permission/admin/manage/api',93,-1234),(104,'/_system/governance/permission/admin/manage/api/create',103,-1234),(105,'/_system/governance/permission/admin/manage/api/publish',103,-1234),(106,'/_system/governance/permission/admin/manage/api/subscribe',103,-1234),(107,'/_system/governance/permission/admin/manage/manage_tiers',93,-1234),(108,'/_system/governance/permission/admin/manage/workflowadmin',93,-1234),(109,'/_system/governance/permission/admin/manage/apim_admin',93,-1234),(110,'/_system/governance/permission/admin/manage/attachment',93,-1234),(111,'/_system/governance/permission/admin/monitor/attachment',94,-1234),(112,'/_system/governance/permission/admin/manage/bpel',93,-1234),(113,'/_system/governance/permission/admin/manage/bpel/processes',112,-1234),(114,'/_system/governance/permission/admin/manage/bpel/instances',112,-1234),(115,'/_system/governance/permission/admin/manage/bpel/packages',112,-1234),(116,'/_system/governance/permission/admin/monitor/bpel',94,-1234),(117,'/_system/governance/permission/admin/manage/bpel/add',112,-1234),(118,'/_system/governance/permission/admin/manage/identity',93,-1234),(119,'/_system/governance/permission/admin/manage/identity/claimmgt',118,-1234),(120,'/_system/governance/permission/admin/manage/identity/claimmgt/claim',119,-1234),(121,'/_system/governance/permission/admin/manage/identity/claimmgt/claim/create',120,-1234),(122,'/_system/governance/permission/admin/manage/identity/claimmgt/claim/view',120,-1234),(123,'/_system/governance/permission/admin/manage/identity/claimmgt/claim/update',120,-1234),(124,'/_system/governance/permission/admin/manage/identity/claimmgt/claim/delete',120,-1234),(125,'/_system/governance/permission/admin/manage/topic',93,-1234),(126,'/_system/governance/permission/admin/manage/topic/addTopic',125,-1234),(127,'/_system/governance/permission/admin/manage/topic/browseTopic',125,-1234),(128,'/_system/governance/permission/admin/manage/topic/deleteTopic',125,-1234),(129,'/_system/governance/permission/admin/manage/topic/purgeTopic',125,-1234),(130,'/_system/governance/permission/admin/manage/event-publish',93,-1234),(131,'/_system/governance/permission/admin/manage/event-streams',93,-1234),(132,'/_system/governance/permission/protected/configure',95,-1234),(133,'/_system/governance/permission/protected/configure/components',132,-1234),(134,'/_system/governance/permission/admin/manage/humantask',93,-1234),(135,'/_system/governance/permission/admin/manage/humantask/task',134,-1234),(136,'/_system/governance/permission/admin/manage/humantask/packages',134,-1234),(137,'/_system/governance/permission/admin/manage/humantask/viewtasks',134,-1234),(138,'/_system/governance/permission/admin/manage/humantask/add',134,-1234),(139,'/_system/governance/permission/admin/manage/identity/authentication',118,-1234),(140,'/_system/governance/permission/admin/manage/identity/authentication/session',139,-1234),(141,'/_system/governance/permission/admin/manage/identity/authentication/session/view',140,-1234),(142,'/_system/governance/permission/admin/manage/identity/authentication/session/delete',140,-1234),(143,'/_system/governance/permission/admin/manage/identity/applicationmgt',118,-1234),(144,'/_system/governance/permission/admin/manage/identity/applicationmgt/view',143,-1234),(145,'/_system/governance/permission/admin/manage/identity/applicationmgt/delete',143,-1234),(146,'/_system/governance/permission/admin/manage/identity/applicationmgt/update',143,-1234),(147,'/_system/governance/permission/admin/manage/identity/applicationmgt/create',143,-1234),(148,'/_system/governance/permission/admin/manage/identity/claimmgt/metadata',119,-1234),(149,'/_system/governance/permission/admin/manage/identity/claimmgt/metadata/create',148,-1234),(150,'/_system/governance/permission/admin/manage/identity/claimmgt/metadata/view',148,-1234),(151,'/_system/governance/permission/admin/manage/identity/claimmgt/metadata/update',148,-1234),(152,'/_system/governance/permission/admin/manage/identity/claimmgt/metadata/delete',148,-1234),(153,'/_system/governance/permission/admin/manage/identity/entitlement',118,-1234),(154,'/_system/governance/permission/admin/manage/identity/entitlement/pap',153,-1234),(155,'/_system/governance/permission/admin/manage/identity/entitlement/pap/policy',154,-1234),(156,'/_system/governance/permission/admin/manage/identity/entitlement/pap/policy/create',155,-1234),(157,'/_system/governance/permission/admin/manage/identity/entitlement/pap/policy/view',155,-1234),(158,'/_system/governance/permission/admin/manage/identity/entitlement/pap/policy/update',155,-1234),(159,'/_system/governance/permission/admin/manage/identity/entitlement/pap/policy/delete',155,-1234),(160,'/_system/governance/permission/admin/manage/identity/entitlement/pap/policy/publish',155,-1234),(161,'/_system/governance/permission/admin/manage/identity/entitlement/pap/policy/demote',155,-1234),(162,'/_system/governance/permission/admin/manage/identity/entitlement/pap/policy/enable',155,-1234),(163,'/_system/governance/permission/admin/manage/identity/entitlement/pap/policy/rollback',155,-1234),(164,'/_system/governance/permission/admin/manage/identity/entitlement/pap/policy/order',155,-1234),(165,'/_system/governance/permission/admin/manage/identity/entitlement/pap/policy/list',155,-1234),(166,'/_system/governance/permission/admin/manage/identity/entitlement/pap/subscriber',154,-1234),(167,'/_system/governance/permission/admin/manage/identity/entitlement/pap/subscriber/create',166,-1234),(168,'/_system/governance/permission/admin/manage/identity/entitlement/pap/subscriber/view',166,-1234),(169,'/_system/governance/permission/admin/manage/identity/entitlement/pap/subscriber/update',166,-1234),(170,'/_system/governance/permission/admin/manage/identity/entitlement/pap/subscriber/delete',166,-1234),(171,'/_system/governance/permission/admin/manage/identity/entitlement/pap/subscriber/list',166,-1234),(172,'/_system/governance/permission/admin/manage/identity/entitlement/pdp',153,-1234),(173,'/_system/governance/permission/admin/manage/identity/entitlement/pdp/manage',172,-1234),(174,'/_system/governance/permission/admin/manage/identity/entitlement/pdp/view',172,-1234),(175,'/_system/governance/permission/admin/manage/identity/entitlement/pdp/test',172,-1234),(176,'/_system/governance/permission/admin/manage/identity/entitlement/pep',153,-1234),(177,'/_system/governance/permission/admin/manage/identity/identitymgt',118,-1234),(178,'/_system/governance/permission/admin/manage/identity/identitymgt/create',177,-1234),(179,'/_system/governance/permission/admin/manage/identity/identitymgt/view',177,-1234),(180,'/_system/governance/permission/admin/manage/identity/identitymgt/update',177,-1234),(181,'/_system/governance/permission/admin/manage/identity/identitymgt/delete',177,-1234),(182,'/_system/governance/permission/admin/manage/identity/pep',118,-1234),(183,'/_system/governance/permission/admin/manage/identity/provisioning',118,-1234),(184,'/_system/governance/permission/admin/manage/identity/user',118,-1234),(185,'/_system/governance/permission/admin/manage/identity/user/association',184,-1234),(186,'/_system/governance/permission/admin/manage/identity/user/association/create',185,-1234),(187,'/_system/governance/permission/admin/manage/identity/user/association/view',185,-1234),(188,'/_system/governance/permission/admin/manage/identity/user/association/update',185,-1234),(189,'/_system/governance/permission/admin/manage/identity/user/association/delete',185,-1234),(190,'/_system/governance/permission/admin/manage/identity/userprofile',118,-1234),(191,'/_system/governance/permission/admin/manage/identity/userprofile/create',190,-1234),(192,'/_system/governance/permission/admin/manage/identity/userprofile/view',190,-1234),(193,'/_system/governance/permission/admin/manage/identity/userprofile/update',190,-1234),(194,'/_system/governance/permission/admin/manage/identity/userprofile/delete',190,-1234),(195,'/_system/governance/permission/admin/manage/identity/userstore',118,-1234),(196,'/_system/governance/permission/admin/manage/identity/userstore/config',195,-1234),(197,'/_system/governance/permission/admin/manage/identity/userstore/config/create',196,-1234),(198,'/_system/governance/permission/admin/manage/identity/userstore/config/view',196,-1234),(199,'/_system/governance/permission/admin/manage/identity/userstore/config/update',196,-1234),(200,'/_system/governance/permission/admin/manage/identity/userstore/config/delete',196,-1234),(201,'/_system/governance/permission/admin/manage/identity/userstore/count',195,-1234),(202,'/_system/governance/permission/admin/manage/identity/userstore/count/create',201,-1234),(203,'/_system/governance/permission/admin/manage/identity/userstore/count/view',201,-1234),(204,'/_system/governance/permission/admin/manage/identity/userstore/count/update',201,-1234),(205,'/_system/governance/permission/admin/manage/identity/userstore/count/delete',201,-1234),(206,'/_system/governance/permission/admin/manage/identity/workflow',118,-1234),(207,'/_system/governance/permission/admin/manage/identity/workflow/profile',206,-1234),(208,'/_system/governance/permission/admin/manage/identity/workflow/profile/create',207,-1234),(209,'/_system/governance/permission/admin/manage/identity/workflow/profile/view',207,-1234),(210,'/_system/governance/permission/admin/manage/identity/workflow/profile/update',207,-1234),(211,'/_system/governance/permission/admin/manage/identity/workflow/profile/delete',207,-1234),(212,'/_system/governance/permission/admin/manage/identity/workflow/definition',206,-1234),(213,'/_system/governance/permission/admin/manage/identity/workflow/definition/create',212,-1234),(214,'/_system/governance/permission/admin/manage/identity/workflow/definition/view',212,-1234),(215,'/_system/governance/permission/admin/manage/identity/workflow/definition/update',212,-1234),(216,'/_system/governance/permission/admin/manage/identity/workflow/definition/delete',212,-1234),(217,'/_system/governance/permission/admin/manage/identity/workflow/association',206,-1234),(218,'/_system/governance/permission/admin/manage/identity/workflow/association/create',217,-1234),(219,'/_system/governance/permission/admin/manage/identity/workflow/association/view',217,-1234),(220,'/_system/governance/permission/admin/manage/identity/workflow/association/update',217,-1234),(221,'/_system/governance/permission/admin/manage/identity/workflow/association/delete',217,-1234),(222,'/_system/governance/permission/admin/manage/identity/workflow/monitor',206,-1234),(223,'/_system/governance/permission/admin/manage/identity/workflow/monitor/view',222,-1234),(224,'/_system/governance/permission/admin/manage/identity/workflow/monitor/delete',222,-1234),(225,'/_system/governance/permission/admin/manage/identity/idpmgt',118,-1234),(226,'/_system/governance/permission/admin/manage/identity/idpmgt/view',225,-1234),(227,'/_system/governance/permission/admin/manage/identity/idpmgt/delete',225,-1234),(228,'/_system/governance/permission/admin/manage/identity/idpmgt/update',225,-1234),(229,'/_system/governance/permission/admin/manage/identity/idpmgt/create',225,-1234),(230,'/_system/governance/permission/protected/configure/logging',132,-1234),(231,'/_system/governance/permission/admin/monitor/logging',94,-1234),(232,'/_system/governance/permission/admin/monitor/metrics',94,-1234),(233,'/_system/governance/permission/admin/manage/modify/module',96,-1234),(234,'/_system/governance/permission/admin/manage/add/module',100,-1234),(235,'/_system/governance/permission/admin/configure/datasources',89,-1234),(236,'/_system/governance/permission/admin/manage/modify/user-profile',96,-1234),(237,'/_system/governance/permission/admin/manage/resources',93,-1234),(238,'/_system/governance/permission/admin/manage/resources/browse',237,-1234),(239,'/_system/governance/permission/admin/manage/resources/notifications',237,-1234),(240,'/_system/governance/permission/admin/manage/extensions',93,-1234),(241,'/_system/governance/permission/admin/manage/extensions/add',240,-1234),(242,'/_system/governance/permission/admin/manage/extensions/list',240,-1234),(243,'/_system/governance/permission/admin/manage/search',93,-1234),(244,'/_system/governance/permission/admin/manage/search/resources',243,-1234),(245,'/_system/governance/permission/admin/manage/search/advanced-search',243,-1234),(246,'/_system/governance/permission/admin/manage/identity/keystoremgt',118,-1234),(247,'/_system/governance/permission/admin/manage/identity/keystoremgt/create',246,-1234),(248,'/_system/governance/permission/admin/manage/identity/keystoremgt/view',246,-1234),(249,'/_system/governance/permission/admin/manage/identity/keystoremgt/update',246,-1234),(250,'/_system/governance/permission/admin/manage/identity/keystoremgt/delete',246,-1234),(251,'/_system/governance/permission/admin/manage/identity/securitymgt',118,-1234),(252,'/_system/governance/permission/admin/manage/identity/securitymgt/create',251,-1234),(253,'/_system/governance/permission/admin/manage/identity/securitymgt/view',251,-1234),(254,'/_system/governance/permission/admin/manage/identity/securitymgt/update',251,-1234),(255,'/_system/governance/permission/admin/manage/identity/securitymgt/delete',251,-1234),(256,'/_system/governance/permission/admin/manage/identity/stsmgt',118,-1234),(257,'/_system/governance/permission/admin/manage/identity/stsmgt/create',256,-1234),(258,'/_system/governance/permission/admin/manage/identity/stsmgt/view',256,-1234),(259,'/_system/governance/permission/admin/manage/identity/stsmgt/update',256,-1234),(260,'/_system/governance/permission/admin/manage/identity/stsmgt/delete',256,-1234),(261,'/_system/governance/permission/protected/server-admin',95,-1234),(262,'/_system/governance/permission/protected/server-admin/homepage',261,-1234),(263,'/_system/governance/permission/admin/manage/add/service',100,-1234),(264,'/_system/governance/permission/admin/manage/modify/service',96,-1234),(265,'/_system/governance/permission/protected/manage',95,-1234),(266,'/_system/governance/permission/protected/manage/monitor',265,-1234),(267,'/_system/governance/permission/protected/manage/monitor/tenants',266,-1234),(268,'/_system/governance/permission/protected/manage/modify',265,-1234),(269,'/_system/governance/permission/protected/manage/modify/tenants',268,-1234),(270,'/_system/governance/permission/protected/manage/monitor/tenants/list',267,-1234),(271,'/_system/governance/permission/admin/configure/theme',89,-1234),(272,'/_system/governance/permission/admin/manage/identity/usermgt',118,-1234),(273,'/_system/governance/permission/admin/manage/identity/usermgt/create',272,-1234),(274,'/_system/governance/permission/admin/manage/identity/usermgt/view',272,-1234),(275,'/_system/governance/permission/admin/manage/identity/usermgt/list',272,-1234),(276,'/_system/governance/permission/admin/manage/identity/usermgt/update',272,-1234),(277,'/_system/governance/permission/admin/manage/identity/usermgt/delete',272,-1234),(278,'/_system/governance/permission/admin/manage/identity/rolemgt',118,-1234),(279,'/_system/governance/permission/admin/manage/identity/rolemgt/create',278,-1234),(280,'/_system/governance/permission/admin/manage/identity/rolemgt/view',278,-1234),(281,'/_system/governance/permission/admin/manage/identity/rolemgt/update',278,-1234),(282,'/_system/governance/permission/admin/manage/identity/rolemgt/delete',278,-1234),(283,'/_system/config/repository/components/org.wso2.carbon.logging',5,-1234),(284,'/_system/governance/repository/components/org.wso2.carbon.all-themes',33,-1234),(285,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default',284,-1234),(286,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/images',285,-1234),(287,'/_system/governance/repository/components/org.wso2.carbon.all-themes/Default/admin',285,-1234),(288,'/_system/local',2,-1234),(289,'/_system/local/repository',288,-1234),(290,'/_system/local/repository/components',289,-1234),(291,'/_system/local/repository/components/org.wso2.carbon.registry',290,-1234),(292,'/_system/local/repository/components/org.wso2.carbon.registry/mount',291,-1234),(293,'/_system/governance/forumtopics',10,-1234),(294,'/_system/governance/repository/components/org.wso2.carbon.governance',33,-1234),(295,'/_system/governance/repository/components/org.wso2.carbon.governance/types',294,-1234),(296,'/_system/config/repository/esb',4,-1234),(297,'/_system/config/repository/esb/registry',296,-1234),(298,'/_system/config/repository/components/secure-vault',5,-1234),(299,'/_system/config/repository/components/org.wso2.carbon.governance/lifecycles',6,-1234),(300,'/_system/config/repository/transports/ws',20,-1234),(301,'/_system/config/repository/components/org.wso2.carbon.analytics.message.tracer.handler',5,-1234),(302,'/_system/config/repository/components/org.wso2.carbon.analytics.message.tracer.handler/tracing',301,-1234),(303,'/_system/governance/apimgt/customsequences',27,-1234),(304,'/_system/governance/apimgt/customsequences/in',303,-1234),(305,'/_system/governance/apimgt/customsequences/out',303,-1234),(306,'/_system/governance/apimgt/customsequences/fault',303,-1234),(307,'/_system/governance/permission/admin/manage/resources/govern',237,-1234),(308,'/_system/governance/permission/admin/manage/resources/govern/api',307,-1234),(309,'/_system/governance/permission/admin/manage/resources/govern/api/add',308,-1234),(310,'/_system/governance/permission/admin/manage/resources/govern/api/list',308,-1234),(311,'/_system/governance/permission/admin/configure/governance',89,-1234),(312,'/_system/governance/permission/admin/configure/governance/api-ui',311,-1234),(313,'/_system/governance/permission/admin/manage/resources/govern/document',307,-1234),(314,'/_system/governance/permission/admin/manage/resources/govern/document/add',313,-1234),(315,'/_system/governance/permission/admin/manage/resources/govern/document/list',313,-1234),(316,'/_system/governance/permission/admin/configure/governance/document-ui',311,-1234),(317,'/_system/governance/permission/admin/manage/resources/govern/provider',307,-1234),(318,'/_system/governance/permission/admin/manage/resources/govern/provider/add',317,-1234),(319,'/_system/governance/permission/admin/manage/resources/govern/provider/list',317,-1234),(320,'/_system/governance/permission/admin/configure/governance/provider-ui',311,-1234),(321,'/_system/governance/permission/admin/manage/resources/govern/reply',307,-1234),(322,'/_system/governance/permission/admin/manage/resources/govern/reply/add',321,-1234),(323,'/_system/governance/permission/admin/manage/resources/govern/reply/list',321,-1234),(324,'/_system/governance/permission/admin/configure/governance/reply-ui',311,-1234),(325,'/_system/governance/permission/admin/manage/resources/govern/topic',307,-1234),(326,'/_system/governance/permission/admin/manage/resources/govern/topic/add',325,-1234),(327,'/_system/governance/permission/admin/manage/resources/govern/topic/list',325,-1234),(328,'/_system/governance/permission/admin/configure/governance/topic-ui',311,-1234),(329,'/_system/governance/permission/admin/manage/queue',93,-1234),(330,'/_system/governance/permission/admin/manage/queue/add',329,-1234),(331,'/_system/governance/permission/admin/manage/queue/browse',329,-1234),(332,'/_system/governance/permission/admin/manage/queue/delete',329,-1234),(333,'/_system/governance/permission/admin/manage/queue/purge',329,-1234),(334,'/_system/governance/permission/admin/manage/dlc',93,-1234),(335,'/_system/governance/permission/admin/manage/dlc/browse',334,-1234),(336,'/_system/governance/permission/admin/manage/dlc/delete',334,-1234),(337,'/_system/governance/permission/admin/manage/dlc/restore',334,-1234),(338,'/_system/governance/permission/admin/manage/dlc/reroute',334,-1234),(339,'/_system/governance/permission/admin/manage/subscriptions',93,-1234),(340,'/_system/governance/permission/admin/manage/subscriptions/queue-browse',339,-1234),(341,'/_system/governance/permission/admin/manage/subscriptions/topic-browse',339,-1234),(342,'/_system/governance/permission/admin/manage/subscriptions/queue-close',339,-1234),(343,'/_system/governance/permission/admin/manage/subscriptions/topic-close',339,-1234),(344,'/_system/governance/permission/admin/manage/cluster',93,-1234),(345,'/_system/governance/permission/admin/manage/cluster/list',344,-1234),(346,'/_system/governance/permission/admin/manage/topic/add',125,-1234),(347,'/_system/governance/permission/admin/manage/topic/details',125,-1234),(348,'/_system/governance/permission/admin/manage/topic/delete',125,-1234),(349,'/_system/governance/permission/admin/publish',88,-1234),(350,'/_system/governance/permission/admin/publish/wso2event',349,-1234),(351,'/_system/governance/permission/admin/manage/event-processor',93,-1234),(352,'/_system/governance/permission/admin/manage/template-manager',93,-1234),(353,'/_system/governance/permission/admin/manage/event-simulator',93,-1234),(354,'/_system/governance/permission/admin/monitor/event-streams',94,-1234),(355,'/_system/governance/permission/admin/manage/resources/govern/lifecycles',307,-1234),(356,'/_system/governance/permission/admin/manage/resources/govern/generic',307,-1234),(357,'/_system/governance/permission/admin/manage/resources/govern/generic/add',356,-1234),(358,'/_system/governance/permission/admin/manage/resources/govern/generic/list',356,-1234),(359,'/_system/governance/permission/admin/configure/governance/generic',311,-1234),(360,'/_system/governance/permission/admin/configure/governance/manage-rxt',311,-1234),(361,'/_system/governance/permission/admin/configure/governance/lifecycles',311,-1234),(362,'/_system/governance/permission/admin/manage/resources/govern/metadata',307,-1234),(363,'/_system/governance/permission/admin/configure/inbound',89,-1234),(364,'/_system/governance/permission/admin/manage/artifacts',93,-1234),(365,'/_system/governance/permission/admin/manage/mediation',93,-1234),(366,'/_system/governance/permission/admin/monitor/mediation',94,-1234),(367,'/_system/governance/permission/admin/configure/medntask',89,-1234),(368,'/_system/governance/permission/admin/configure/ntaskadmin',89,-1234),(369,'/_system/governance/permission/admin/configure/priorityexecutors',89,-1234),(370,'/_system/governance/permission/admin/manage/resources/community-features',237,-1234),(371,'/_system/governance/permission/admin/manage/resources/associations',237,-1234),(372,'/_system/governance/permission/admin/manage/resources/ws-api',237,-1234),(373,'/_system/governance/permission/admin/manage/siddhi-tryit',93,-1234),(374,'/_system/governance/permission/admin/configure/tasks',89,-1234),(375,'/_system/governance/permission/admin/monitor/tenantUsage',94,-1234),(376,'/_system/governance/permission/admin/monitor/tenantUsage/customUsage',375,-1234),(377,'/_system/config/repository/esb/esb-configurations',296,-1234),(378,'/_system/config/ues',3,-1234),(379,'/_system/config/ues/dashboards',378,-1234),(380,'/_system/config/repository/esb/inbound',296,-1234),(381,'/_system/governance/event/queues',35,-1234),(382,'/_system/governance/event/queues/jms',381,-1234),(383,'/_system/governance/event/queues/jms/tmp_172_18_0_1_44008_1',382,-1234),(384,'/_system/governance/event/topics/throttleData',36,-1234),(385,'/_system/governance/event/topics/throttleData/jms.subscriptions',384,-1234),(386,'/_system/governance/event/topics/throttleData/jms.subscriptions/tmp_172_18_0_1_44008_1',385,-1234),(387,'/_system/config/repository/transports/wss',20,-1234),(388,'/_system/config/repository/identity',4,-1234),(389,'/_system/config/repository/identity/SAMLSSO',388,-1234),(390,'/_system/governance/event/queues/jms/tmp_172_18_0_1_44720_1',382,-1234),(391,'/_system/governance/event/topics/throttleData/jms.subscriptions/tmp_172_18_0_1_44720_1',385,-1234),(392,'/_system/config/repository/components/org.wso2.carbon.registry',5,-1234),(393,'/_system/config/repository/components/org.wso2.carbon.registry/queries',392,-1234),(394,'/_system/governance/apimgt/applicationdata/provider',32,-1234),(395,'/_system/governance/apimgt/applicationdata/provider/admin',394,-1234),(396,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe',395,-1234),(397,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0',396,-1234),(398,'/_system/governance/repository/components/org.wso2.carbon.governance/lifecycles',294,-1234),(399,'/_system/governance/repository/components/org.wso2.carbon.governance/lifecycles/history',398,-1234),(400,'/_system/governance/apimgt/applicationdata/icons',32,-1234),(401,'/_system/governance/apimgt/applicationdata/icons/admin',400,-1234),(402,'/_system/governance/apimgt/applicationdata/icons/admin/TestMe',401,-1234),(403,'/_system/governance/apimgt/applicationdata/icons/admin/TestMe/1.0.0',402,-1234),(404,'/_system/config/governance',3,-1234),(405,'/_system/config/governance/lcm',404,-1234);
/*!40000 ALTER TABLE `REG_PATH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_PROPERTY`
--

DROP TABLE IF EXISTS `REG_PROPERTY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_PROPERTY` (
  `REG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_NAME` varchar(100) NOT NULL,
  `REG_VALUE` varchar(1000) DEFAULT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1796 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_PROPERTY`
--

LOCK TABLES `REG_PROPERTY` WRITE;
/*!40000 ALTER TABLE `REG_PROPERTY` DISABLE KEYS */;
INSERT INTO `REG_PROPERTY` VALUES (1,'vcs','text/x-vcalendar',-1234),(2,'ppm','image/x-portable-pixmap',-1234),(3,'cmdf','chemical/x-cmdf',-1234),(4,'class','application/java-vm',-1234),(5,'mesh','model/mesh',-1234),(6,'svg','image/svg+xml',-1234),(7,'323','text/h323',-1234),(8,'frame','application/x-maker',-1234),(9,'vcf','text/x-vcard',-1234),(10,'wmlsc','application/vnd.wap.wmlscriptc',-1234),(11,'hpp','text/x-c++hdr',-1234),(12,'vcd','application/x-cdlink',-1234),(13,'cpio','application/x-cpio',-1234),(14,'wz','application/x-wingz',-1234),(15,'pot','text/plain',-1234),(16,'bpel','application/vnd.wso2.bpel+xml',-1234),(17,'wm','video/x-ms-wm',-1234),(18,'wk','application/x-123',-1234),(19,'mif','application/x-mif',-1234),(20,'mid','audio/midi',-1234),(21,'iii','application/x-iphone',-1234),(22,'fch','chemical/x-gaussian-checkpoint',-1234),(23,'sty','text/x-tex',-1234),(24,'dot','application/msword',-1234),(25,'stw','application/vnd.sun.xml.writer.template',-1234),(26,'pnm','image/x-portable-anymap',-1234),(27,'stl','application/vnd.ms-pki.stl',-1234),(28,'ott','application/vnd.oasis.opendocument.text-template',-1234),(29,'ots','application/vnd.oasis.opendocument.spreadsheet-template',-1234),(30,'sti','application/vnd.sun.xml.impress.template',-1234),(31,'aif','audio/x-aiff',-1234),(32,'otp','application/vnd.oasis.opendocument.presentation-template',-1234),(33,'png','image/png',-1234),(34,'doc','application/msword',-1234),(35,'diff','text/plain',-1234),(36,'val','chemical/x-ncbi-asn1-binary',-1234),(37,'std','application/vnd.sun.xml.draw.template',-1234),(38,'ras','image/x-cmu-raster',-1234),(39,'stc','application/vnd.sun.xml.calc.template',-1234),(40,'rar','application/rar',-1234),(41,'oth','application/vnd.oasis.opendocument.text-web',-1234),(42,'otg','application/vnd.oasis.opendocument.graphics-template',-1234),(43,'xml','application/xml',-1234),(44,'cub','chemical/x-gaussian-cube',-1234),(45,'ram','audio/x-pn-realaudio',-1234),(46,'udeb','application/x-debian-package',-1234),(47,'csml','chemical/x-csml',-1234),(48,'ctx','chemical/x-ctx',-1234),(49,'jar','application/java-archive',-1234),(50,'wsc','text/scriptlet',-1234),(51,'svgz','image/svg+xml',-1234),(52,'torrent','application/x-bittorrent',-1234),(53,'igs','model/iges',-1234),(54,'xlt','application/vnd.ms-excel',-1234),(55,'xls','application/vnd.ms-excel',-1234),(56,'jad','text/vnd.sun.j2me.app-descriptor',-1234),(57,'bat','application/x-msdos-program',-1234),(58,'ksp','application/x-kspread',-1234),(59,'dms','application/x-dms',-1234),(60,'mmod','chemical/x-macromodel-input',-1234),(61,'wrl','x-world/x-vrml',-1234),(62,'bak','application/x-trash',-1234),(63,'xlb','application/vnd.ms-excel',-1234),(64,'pls','audio/x-scpls',-1234),(65,'csv','text/comma-separated-values',-1234),(66,'mopcrt','chemical/x-mopac-input',-1234),(67,'gsm','audio/x-gsm',-1234),(68,'ts','text/texmacs',-1234),(69,'css','text/css',-1234),(70,'tr','application/x-troff',-1234),(71,'rxt','application/vnd.wso2.registry-ext-type+xml',-1234),(72,'c++','text/x-c++src',-1234),(73,'dmg','application/x-apple-diskimage',-1234),(74,'gsf','application/x-font',-1234),(75,'tm','text/texmacs',-1234),(76,'csm','chemical/x-csml',-1234),(77,'tk','text/x-tcl',-1234),(78,'rxn','chemical/x-mdl-rxnfile',-1234),(79,'djvu','image/vnd.djvu',-1234),(80,'src','application/x-wais-source',-1234),(81,'csh','text/x-csh',-1234),(82,'csf','chemical/x-cache-csf',-1234),(83,'sw','chemical/x-swissprot',-1234),(84,'crt','application/x-x509-ca-cert',-1234),(85,'dll','application/x-msdos-program',-1234),(86,'m4a','audio/mpeg',-1234),(87,'sql','text/plain',-1234),(88,'crl','application/x-pkcs7-crl',-1234),(89,'wadl','application/vnd.sun.wadl+xml',-1234),(90,'cache','chemical/x-cache',-1234),(91,'sh','text/x-sh',-1234),(92,'m3u','audio/x-mpegurl',-1234),(93,'sd','chemical/x-mdl-sdfile',-1234),(94,'silo','model/mesh',-1234),(95,'ief','image/ief',-1234),(96,'pcf.Z','application/x-font',-1234),(97,'nwc','application/x-nwc',-1234),(98,'wpd','application/wordperfect',-1234),(99,'spl','application/x-futuresplash',-1234),(100,'rm','audio/x-pn-realaudio',-1234),(101,'spc','chemical/x-galactic-spc',-1234),(102,'kpt','application/x-kpresenter',-1234),(103,'bcpio','application/x-bcpio',-1234),(104,'kpr','application/x-kpresenter',-1234),(105,'mdb','application/msaccess',-1234),(106,'rd','chemical/x-mdl-rdfile',-1234),(107,'ra','audio/x-realaudio',-1234),(108,'php3p','application/x-httpd-php3-preprocessed',-1234),(109,'djv','image/vnd.djvu',-1234),(110,'gpt','chemical/x-mopac-graph',-1234),(111,'qt','video/quicktime',-1234),(112,'icz','text/calendar',-1234),(113,'cpt','image/x-corelphotopaint',-1234),(114,'tif','image/tiff',-1234),(115,'cpp','text/x-c++src',-1234),(116,'mcm','chemical/x-macmolecule',-1234),(117,'ics','text/calendar',-1234),(118,'xht','application/xhtml+xml',-1234),(119,'ico','image/x-icon',-1234),(120,'sv4crc','application/x-sv4crc',-1234),(121,'p7r','application/x-pkcs7-certreqresp',-1234),(122,'wp5','application/wordperfect5.1',-1234),(123,'cpa','chemical/x-compass',-1234),(124,'hin','chemical/x-hin',-1234),(125,'ice','x-conference/x-cooltalk',-1234),(126,'dir','application/x-director',-1234),(127,'ica','application/x-ica',-1234),(128,'py','text/x-python',-1234),(129,'jpeg','image/jpeg',-1234),(130,'pht','application/x-httpd-php',-1234),(131,'rtx','text/richtext',-1234),(132,'php','application/x-httpd-php',-1234),(133,'ps','application/postscript',-1234),(134,'dif','video/dv',-1234),(135,'lhs','text/x-literate-haskell',-1234),(136,'pm','text/x-perl',-1234),(137,'com','application/x-msdos-program',-1234),(138,'pl','text/x-perl',-1234),(139,'pk','application/x-tex-pk',-1234),(140,'snd','audio/basic',-1234),(141,'wmz','application/x-ms-wmz',-1234),(142,'smil','application/smil',-1234),(143,'tgz','application/x-gtar',-1234),(144,'wmx','video/x-ms-wmx',-1234),(145,'wmv','video/x-ms-wmv',-1234),(146,'cod','application/vnd.rim.cod',-1234),(147,'rtf','text/rtf',-1234),(148,'abw','application/x-abiword',-1234),(149,'lha','application/x-lha',-1234),(150,'wml','text/vnd.wap.wml',-1234),(151,'gamin','chemical/x-gamess-input',-1234),(152,'ctab','chemical/x-cactvs-binary',-1234),(153,'pgp','application/pgp-signature',-1234),(154,'tgf','chemical/x-mdl-tgf',-1234),(155,'xhtml','application/xhtml+xml',-1234),(156,'pgn','application/x-chess-pgn',-1234),(157,'wmd','application/x-ms-wmd',-1234),(158,'pgm','image/x-portable-graymap',-1234),(159,'man','application/x-troff-man',-1234),(160,'rss','application/rss+xml',-1234),(161,'wma','audio/x-ms-wma',-1234),(162,'smi','application/smil',-1234),(163,'smf','application/vnd.stardivision.math',-1234),(164,'vsd','application/vnd.visio',-1234),(165,'latex','application/x-latex',-1234),(166,'vrml','x-world/x-vrml',-1234),(167,'embl','chemical/x-embl-dl-nucleotide',-1234),(168,'cascii','chemical/x-cactvs-binary',-1234),(169,'vrm','x-world/x-vrml',-1234),(170,'cml','chemical/x-cml',-1234),(171,'iges','model/iges',-1234),(172,'tex','text/x-tex',-1234),(173,'pfb','application/x-font',-1234),(174,'pfa','application/x-font',-1234),(175,'nc','application/x-netcdf',-1234),(176,'nb','application/mathematica',-1234),(177,'mxu','video/vnd.mpegurl',-1234),(178,'old','application/x-trash',-1234),(179,'java','text/x-java',-1234),(180,'bsd','chemical/x-crossfire',-1234),(181,'skt','application/x-koan',-1234),(182,'skp','application/x-koan',-1234),(183,'cls','text/x-tex',-1234),(184,'ms','application/x-troff-ms',-1234),(185,'skm','application/x-koan',-1234),(186,'mpega','audio/mpeg',-1234),(187,'frm','application/x-maker',-1234),(188,'mm','application/x-freemind',-1234),(189,'skd','application/x-koan',-1234),(190,'me','application/x-troff-me',-1234),(191,'wbxml','application/vnd.wap.wbxml',-1234),(192,'exe','application/x-msdos-program',-1234),(193,'xslt','application/xml',-1234),(194,'deb','application/x-debian-package',-1234),(195,'pdf','application/pdf',-1234),(196,'rpm','application/x-redhat-package-manager',-1234),(197,'pdb','chemical/x-pdb',-1234),(198,'pcx','image/pcx',-1234),(199,'xcf','application/x-xcf',-1234),(200,'sit','application/x-stuffit',-1234),(201,'tcl','text/x-tcl',-1234),(202,'sis','application/vnd.symbian.install',-1234),(203,'vor','application/vnd.stardivision.writer',-1234),(204,'hdf','application/x-hdf',-1234),(205,'xtel','chemical/x-xtel',-1234),(206,'jnlp','application/x-java-jnlp-file',-1234),(207,'jpg','image/jpeg',-1234),(208,'ros','chemical/x-rosdal',-1234),(209,'sik','application/x-trash',-1234),(210,'jpe','image/jpeg',-1234),(211,'gjf','chemical/x-gaussian-input',-1234),(212,'mvb','chemical/x-mopac-vib',-1234),(213,'gjc','chemical/x-gaussian-input',-1234),(214,'pcf','application/x-font',-1234),(215,'sid','audio/prs.sid',-1234),(216,'xbm','image/x-xbitmap',-1234),(217,'kin','chemical/x-kinemage',-1234),(218,'kil','application/x-killustrator',-1234),(219,'dcr','application/x-director',-1234),(220,'avi','video/x-msvideo',-1234),(221,'js','application/x-javascript',-1234),(222,'pbm','image/x-portable-bitmap',-1234),(223,'gif','image/gif',-1234),(224,'cbin','chemical/x-cactvs-binary',-1234),(225,'xpdl','application/vnd.wso2.xpdl+xml',-1234),(226,'taz','application/x-gtar',-1234),(227,'boo','text/x-boo',-1234),(228,'cif','chemical/x-cif',-1234),(229,'zmt','chemical/x-mopac-input',-1234),(230,'wbmp','image/vnd.wap.wbmp',-1234),(231,'qtl','application/x-quicktimeplayer',-1234),(232,'tar','application/x-tar',-1234),(233,'lzx','application/x-lzx',-1234),(234,'gnumeric','application/x-gnumeric',-1234),(235,'xyz','chemical/x-xyz',-1234),(236,'vms','chemical/x-vamas-iso14976',-1234),(237,'pat','image/x-coreldrawpattern',-1234),(238,'pas','text/x-pascal',-1234),(239,'midi','audio/midi',-1234),(240,'maker','application/x-maker',-1234),(241,'etx','text/x-setext',-1234),(242,'jng','image/x-jng',-1234),(243,'sgl','application/vnd.stardivision.writer-global',-1234),(244,'chm','chemical/x-chemdraw',-1234),(245,'aiff','audio/x-aiff',-1234),(246,'lzh','application/x-lzh',-1234),(247,'sgf','application/x-go-sgf',-1234),(248,'vmd','chemical/x-vmd',-1234),(249,'aifc','audio/x-aiff',-1234),(250,'pac','application/x-ns-proxy-autoconfig',-1234),(251,'jmz','application/x-jmol',-1234),(252,'ogg','application/ogg',-1234),(253,'fbdoc','application/x-maker',-1234),(254,'dat','chemical/x-mopac-input',-1234),(255,'pyo','application/x-python-code',-1234),(256,'tiff','image/tiff',-1234),(257,'ist','chemical/x-isostar',-1234),(258,'msi','application/x-msi',-1234),(259,'hs','text/x-haskell',-1234),(260,'msh','model/mesh',-1234),(261,'isp','application/x-internet-signup',-1234),(262,'iso','application/x-iso9660-image',-1234),(263,'pyc','application/x-python-code',-1234),(264,'html','text/html',-1234),(265,'txt','text/plain',-1234),(266,'wsdl','application/wsdl+xml',-1234),(267,'asx','video/x-ms-asf',-1234),(268,'hh','text/x-c++hdr',-1234),(269,'bmp','image/x-ms-bmp',-1234),(270,'aso','chemical/x-ncbi-asn1-binary',-1234),(271,'asn','chemical/x-ncbi-asn1-spec',-1234),(272,'ser','application/java-serialized-object',-1234),(273,'chrt','application/x-kchart',-1234),(274,'asf','video/x-ms-asf',-1234),(275,'hxx','text/x-c++hdr',-1234),(276,'asc','text/plain',-1234),(277,'gl','video/gl',-1234),(278,'key','application/pgp-keys',-1234),(279,'fli','video/fli',-1234),(280,'gf','application/x-tex-gf',-1234),(281,'art','image/x-jg',-1234),(282,'xwd','image/x-xwindowdump',-1234),(283,'dxr','application/x-director',-1234),(284,'shtml','text/html',-1234),(285,'bpmn','application/vnd.wso2.bpmn+xml',-1234),(286,'sdw','application/vnd.stardivision.writer',-1234),(287,'mpga','audio/mpeg',-1234),(288,'gen','chemical/x-genbank',-1234),(289,'sdp','application/vnd.stardivision.impress',-1234),(290,'cer','chemical/x-cerius',-1234),(291,'odt','application/vnd.oasis.opendocument.text',-1234),(292,'ods','application/vnd.oasis.opendocument.spreadsheet',-1234),(293,'fm','application/x-maker',-1234),(294,'odp','application/vnd.oasis.opendocument.presentation',-1234),(295,'sdf','chemical/x-mdl-sdfile',-1234),(296,'odm','application/vnd.oasis.opendocument.text-master',-1234),(297,'sdd','application/vnd.stardivision.impress',-1234),(298,'sdc','application/vnd.stardivision.calc',-1234),(299,'cef','chemical/x-cxf',-1234),(300,'sda','application/vnd.stardivision.draw',-1234),(301,'odi','application/vnd.oasis.opendocument.image',-1234),(302,'odg','application/vnd.oasis.opendocument.graphics',-1234),(303,'fb','application/x-maker',-1234),(304,'odf','application/vnd.oasis.opendocument.formula',-1234),(305,'texinfo','application/x-texinfo',-1234),(306,'zip','application/zip',-1234),(307,'odc','application/vnd.oasis.opendocument.chart',-1234),(308,'odb','application/vnd.oasis.opendocument.database',-1234),(309,'oda','application/oda',-1234),(310,'ez','application/andrew-inset',-1234),(311,'sct','text/scriptlet',-1234),(312,'cdy','application/vnd.cinderella',-1234),(313,'cdx','chemical/x-cdx',-1234),(314,'cdt','image/x-coreldrawtemplate',-1234),(315,'c3d','chemical/x-chem3d',-1234),(316,'mpg','video/mpeg',-1234),(317,'cdr','image/x-coreldraw',-1234),(318,'mpe','video/mpeg',-1234),(319,'mpc','chemical/x-mopac-input',-1234),(320,'istr','chemical/x-isostar',-1234),(321,'eps','application/postscript',-1234),(322,'rhtml','application/x-httpd-eruby',-1234),(323,'xul','application/vnd.mozilla.xul+xml',-1234),(324,'cdf','application/x-cdf',-1234),(325,'mov','video/quicktime',-1234),(326,'mpeg','video/mpeg',-1234),(327,'mop','chemical/x-mopac-input',-1234),(328,'ustar','application/x-ustar',-1234),(329,'moo','chemical/x-mopac-out',-1234),(330,'dvi','application/x-dvi',-1234),(331,'roff','application/x-troff',-1234),(332,'dx','chemical/x-jcamp-dx',-1234),(333,'mol','chemical/x-mdl-molfile',-1234),(334,'dv','video/dv',-1234),(335,'sd2','audio/x-sd2',-1234),(336,'gcg','chemical/x-gcg8-sequence',-1234),(337,'gcf','application/x-graphing-calculator',-1234),(338,'moc','text/x-moc',-1234),(339,'gcd','text/x-pcs-gcd',-1234),(340,'dl','video/dl',-1234),(341,'fig','application/x-xfig',-1234),(342,'wax','audio/x-ms-wax',-1234),(343,'bin','application/octet-stream',-1234),(344,'wav','audio/x-wav',-1234),(345,'mol2','chemical/x-mol2',-1234),(346,'phps','application/x-httpd-php-source',-1234),(347,'mp4','video/mp4',-1234),(348,'~','application/x-trash',-1234),(349,'mp3','audio/mpeg',-1234),(350,'ltx','text/x-tex',-1234),(351,'mp2','audio/mpeg',-1234),(352,'bib','text/x-bibtex',-1234),(353,'fchk','chemical/x-gaussian-checkpoint',-1234),(354,'wmls','text/vnd.wap.wmlscript',-1234),(355,'cu','application/cu-seeme',-1234),(356,'ins','application/x-internet-signup',-1234),(357,'t','application/x-troff',-1234),(358,'mng','video/x-mng',-1234),(359,'inp','chemical/x-gamess-input',-1234),(360,'wad','application/x-doom',-1234),(361,'p','text/x-pascal',-1234),(362,'o','application/x-object',-1234),(363,'ent','chemical/x-pdb',-1234),(364,'tsv','text/tab-separated-values',-1234),(365,'flac','application/x-flac',-1234),(366,'sv4cpio','application/x-sv4cpio',-1234),(367,'xsl','application/xml',-1234),(368,'h','text/x-chdr',-1234),(369,'htm','text/html',-1234),(370,'wmlc','application/vnd.wap.wmlc',-1234),(371,'tsp','application/dsptype',-1234),(372,'kar','audio/midi',-1234),(373,'oza','application/x-oz-application',-1234),(374,'d','text/x-dsrc',-1234),(375,'cc','text/x-c++src',-1234),(376,'xsd','application/x-xsd+xml',-1234),(377,'c','text/x-csrc',-1234),(378,'b','chemical/x-molconn-Z',-1234),(379,'rgb','image/x-rgb',-1234),(380,'gau','chemical/x-gaussian-input',-1234),(381,'htc','text/x-component',-1234),(382,'lsx','video/x-la-asf',-1234),(383,'gar','application/vnd.wso2.governance-archive',-1234),(384,'hta','application/hta',-1234),(385,'mml','text/mathml',-1234),(386,'gam','chemical/x-gamess-input',-1234),(387,'book','application/x-maker',-1234),(388,'gal','chemical/x-gaussian-log',-1234),(389,'cat','application/vnd.ms-pki.seccat',-1234),(390,'uls','text/iuls',-1234),(391,'mmf','application/vnd.smaf',-1234),(392,'psd','image/x-photoshop',-1234),(393,'mmd','chemical/x-macromodel-input',-1234),(394,'h++','text/x-c++hdr',-1234),(395,'movie','video/x-sgi-movie',-1234),(396,'lsf','video/x-la-asf',-1234),(397,'text','text/plain',-1234),(398,'sxw','application/vnd.sun.xml.writer',-1234),(399,'jrxml','application/xml',-1234),(400,'cac','chemical/x-cache',-1234),(401,'prt','chemical/x-ncbi-asn1-ascii',-1234),(402,'php4','application/x-httpd-php4',-1234),(403,'phtml','application/x-httpd-php',-1234),(404,'php3','application/x-httpd-php3',-1234),(405,'shar','application/x-shar',-1234),(406,'texi','application/x-texinfo',-1234),(407,'mcif','chemical/x-mmcif',-1234),(408,'emb','chemical/x-embl-dl-nucleotide',-1234),(409,'sxm','application/vnd.sun.xml.math',-1234),(410,'sxi','application/vnd.sun.xml.impress',-1234),(411,'au','audio/basic',-1234),(412,'sxg','application/vnd.sun.xml.writer.global',-1234),(413,'swfl','application/x-shockwave-flash',-1234),(414,'prf','application/pics-rules',-1234),(415,'sxd','application/vnd.sun.xml.draw',-1234),(416,'sxc','application/vnd.sun.xml.calc',-1234),(417,'ai','application/postscript',-1234),(418,'%','application/x-trash',-1234),(419,'cxx','text/x-c++src',-1234),(420,'swf','application/x-shockwave-flash',-1234),(421,'alc','chemical/x-alchemy',-1234),(422,'hqx','application/mac-binhex40',-1234),(423,'gtar','application/x-gtar',-1234),(424,'wvx','video/x-ms-wvx',-1234),(425,'kwt','application/x-kword',-1234),(426,'cxf','chemical/x-cxf',-1234),(427,'xpm','image/x-xpixmap',-1234),(428,'xpi','application/x-xpinstall',-1234),(429,'jdx','chemical/x-jcamp-dx',-1234),(430,'rdf','application/rdf+xml',-1234),(431,'ppt','application/vnd.ms-powerpoint',-1234),(432,'pps','application/vnd.ms-powerpoint',-1234),(433,'kwd','application/x-kword',-1234),(434,'profiles','application/vnd.wso2-profiles+xml',-1234),(435,'Protocol.Name','http',-1234),(436,'Transport.Enabled','false',-1234),(437,'Protocol.Name','https',-1234),(438,'Transport.Enabled','false',-1234),(439,'Protocol.Name','local',-1234),(440,'Transport.Enabled','false',-1234),(441,'Protocol.Name','http',-1234),(442,'Transport.Enabled','false',-1234),(443,'Protocol.Name','https',-1234),(444,'Transport.Enabled','false',-1234),(445,'Protocol.Name','local',-1234),(446,'Transport.Enabled','false',-1234),(447,'bundleContext-root','/',-1234),(448,'host-name','localhost',-1234),(449,'service-path','services',-1234),(450,'name','Applications',-1234),(451,'timestamp','1512979711253',-1234),(452,'templateName','passwordreset',-1234),(453,'templateDisplayName','PasswordReset',-1234),(454,'locale','en_US',-1234),(455,'type','passwordreset',-1234),(456,'emailContentType','text/plain',-1234),(457,'display','PasswordReset',-1234),(458,'templateName','emailconfirm',-1234),(459,'templateDisplayName','EmailConfirm',-1234),(460,'locale','en_US',-1234),(461,'type','emailconfirm',-1234),(462,'emailContentType','text/plain',-1234),(463,'display','EmailConfirm',-1234),(464,'templateName','accountidrecovery',-1234),(465,'templateDisplayName','AccountIdRecovery',-1234),(466,'locale','en_US',-1234),(467,'type','accountidrecovery',-1234),(468,'emailContentType','text/plain',-1234),(469,'display','AccountIdRecovery',-1234),(470,'templateName','accountconfirmation',-1234),(471,'templateDisplayName','AccountConfirmation',-1234),(472,'locale','en_US',-1234),(473,'type','accountconfirmation',-1234),(474,'emailContentType','text/plain',-1234),(475,'display','AccountConfirmation',-1234),(476,'templateName','resendaccountconfirmation',-1234),(477,'templateDisplayName','ResendAccountConfirmation',-1234),(478,'locale','en_US',-1234),(479,'type','resendaccountconfirmation',-1234),(480,'emailContentType','text/plain',-1234),(481,'display','ResendAccountConfirmation',-1234),(482,'templateName','temporarypassword',-1234),(483,'templateDisplayName','TemporaryPassword',-1234),(484,'locale','en_US',-1234),(485,'type','temporarypassword',-1234),(486,'emailContentType','text/plain',-1234),(487,'display','TemporaryPassword',-1234),(488,'templateName','onetimepassword',-1234),(489,'templateDisplayName','OneTimePassword',-1234),(490,'locale','en_US',-1234),(491,'type','onetimepassword',-1234),(492,'emailContentType','text/plain',-1234),(493,'display','OneTimePassword',-1234),(494,'templateName','askpassword',-1234),(495,'templateDisplayName','AskPassword',-1234),(496,'locale','en_US',-1234),(497,'type','askpassword',-1234),(498,'emailContentType','text/plain',-1234),(499,'display','AskPassword',-1234),(500,'templateName','adminforcedpasswordreset',-1234),(501,'templateDisplayName','AdminForcedPasswordReset',-1234),(502,'locale','en_US',-1234),(503,'type','adminforcedpasswordreset',-1234),(504,'emailContentType','text/plain',-1234),(505,'display','AdminForcedPasswordReset',-1234),(506,'templateName','adminforcedpasswordresetwithotp',-1234),(507,'templateDisplayName','AdminForcedPasswordResetWithOTP',-1234),(508,'locale','en_US',-1234),(509,'type','adminforcedpasswordresetwithotp',-1234),(510,'emailContentType','text/plain',-1234),(511,'display','AdminForcedPasswordResetWithOTP',-1234),(512,'templateName','accountunlock',-1234),(513,'templateDisplayName','AccountUnLock',-1234),(514,'locale','en_US',-1234),(515,'type','accountunlock',-1234),(516,'emailContentType','text/plain',-1234),(517,'display','AccountUnLock',-1234),(518,'templateName','accountlock',-1234),(519,'templateDisplayName','AccountLock',-1234),(520,'locale','en_US',-1234),(521,'type','accountlock',-1234),(522,'emailContentType','text/plain',-1234),(523,'display','AccountLock',-1234),(524,'templateName','accountenable',-1234),(525,'templateDisplayName','AccountEnable',-1234),(526,'locale','en_US',-1234),(527,'type','accountenable',-1234),(528,'emailContentType','text/plain',-1234),(529,'display','AccountEnable',-1234),(530,'templateName','accountdisable',-1234),(531,'templateDisplayName','AccountDisable',-1234),(532,'locale','en_US',-1234),(533,'type','accountdisable',-1234),(534,'emailContentType','text/plain',-1234),(535,'display','AccountDisable',-1234),(536,'templateName','passwordresetsucess',-1234),(537,'templateDisplayName','passwordResetSucess',-1234),(538,'locale','en_US',-1234),(539,'type','passwordresetsucess',-1234),(540,'emailContentType','text/plain',-1234),(541,'display','passwordResetSucess',-1234),(542,'templateName','initiaterecovery',-1234),(543,'templateDisplayName','initiateRecovery',-1234),(544,'locale','en_US',-1234),(545,'type','initiaterecovery',-1234),(546,'emailContentType','text/plain',-1234),(547,'display','initiateRecovery',-1234),(548,'templateName','idleaccountreminder',-1234),(549,'templateDisplayName','idleAccountReminder',-1234),(550,'locale','en_US',-1234),(551,'type','idleaccountreminder',-1234),(552,'emailContentType','text/plain',-1234),(553,'display','idleAccountReminder',-1234),(554,'EntitlementModuleName','PDP Publisher',-1234),(555,'subscriberId','PDP Subscriber',-1234),(556,'subscriberId','Subscriber Id',-1234),(557,'subscriberId','0',-1234),(558,'subscriberId','false',-1234),(559,'subscriberId','false',-1234),(560,'version','1',-1234),(561,'maxPolicyOrder','1',-1234),(562,'version','1',-1234),(563,'promoted','false',-1234),(564,'policyOrder','1',-1234),(565,'policySetIdReferences','',-1234),(566,'policyIdReferences','',-1234),(567,'policyMetaData5','http://wso2.org/identity/auth-context-request-param,SCOPE2,http://wso2.org/identity/auth-context-request-param/scope:20,http://www.w3.org/2001/XMLSchema#string',-1234),(568,'policyType','Policy',-1234),(569,'policyMetaData4','http://wso2.org/identity/auth-context-request-param,SCOPE1,http://wso2.org/identity/auth-context-request-param/scope:20,http://www.w3.org/2001/XMLSchema#string',-1234),(570,'policyMetaData3','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,17:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(571,'lastModifiedTime','1512979715867',-1234),(572,'policyMetaData2','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,09:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(573,'policyMetaData1','http://wso2.org/identity/identity-action,authenticate,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(574,'version','1',-1234),(575,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(576,'lastModifiedUser',NULL,-1234),(577,'isActive','true',-1234),(578,'version','1',-1234),(579,'maxPolicyOrder','1',-1234),(580,'promoted','false',-1234),(581,'policyOrder','1',-1234),(582,'policySetIdReferences','',-1234),(583,'policyIdReferences','',-1234),(584,'policyMetaData5','http://wso2.org/identity/auth-context-request-param,SCOPE2,http://wso2.org/identity/auth-context-request-param/scope:20,http://www.w3.org/2001/XMLSchema#string',-1234),(585,'policyType','Policy',-1234),(586,'policyMetaData4','http://wso2.org/identity/auth-context-request-param,SCOPE1,http://wso2.org/identity/auth-context-request-param/scope:20,http://www.w3.org/2001/XMLSchema#string',-1234),(587,'policyMetaData3','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,17:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(588,'lastModifiedTime','1512979715925',-1234),(589,'policyMetaData2','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,09:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(590,'policyMetaData1','http://wso2.org/identity/identity-action,authenticate,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(591,'version','1',-1234),(592,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(593,'lastModifiedUser',NULL,-1234),(594,'isActive','true',-1234),(595,'version','1',-1234),(596,'policyOrder','1',-1234),(597,'lastModifiedTime','1512979715956',-1234),(598,'promoted','false',-1234),(599,'policySetIdReferences','',-1234),(600,'policyType','Policy',-1234),(601,'isActive','true',-1234),(602,'policyMetaData5','http://wso2.org/identity/auth-context-request-param,SCOPE2,http://wso2.org/identity/auth-context-request-param/scope:20,http://www.w3.org/2001/XMLSchema#string',-1234),(603,'policyMetaData4','http://wso2.org/identity/auth-context-request-param,SCOPE1,http://wso2.org/identity/auth-context-request-param/scope:20,http://www.w3.org/2001/XMLSchema#string',-1234),(604,'policyMetaData3','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,17:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(605,'policyIdReferences','',-1234),(606,'policyMetaData2','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,09:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(607,'policyMetaData1','http://wso2.org/identity/identity-action,authenticate,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(608,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(609,'lastModifiedUser',NULL,-1234),(610,'version','1',-1234),(611,'maxPolicyOrder','1',-1234),(612,'version','1',-1234),(613,'promoted','false',-1234),(614,'policyOrder','1',-1234),(615,'policySetIdReferences','',-1234),(616,'policyIdReferences','',-1234),(617,'policyType','Policy',-1234),(618,'policyMetaData3','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,17:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(619,'lastModifiedTime','1512979717016',-1234),(620,'policyMetaData2','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,09:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(621,'policyMetaData1','http://wso2.org/identity/identity-action,authenticate,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(622,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(623,'version','1',-1234),(624,'lastModifiedUser',NULL,-1234),(625,'isActive','true',-1234),(626,'version','1',-1234),(627,'maxPolicyOrder','2',-1234),(628,'promoted','false',-1234),(629,'policyOrder','2',-1234),(630,'policySetIdReferences','',-1234),(631,'policyIdReferences','',-1234),(632,'policyType','Policy',-1234),(633,'policyMetaData3','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,17:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(634,'lastModifiedTime','1512979717077',-1234),(635,'policyMetaData2','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,09:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(636,'policyMetaData1','http://wso2.org/identity/identity-action,authenticate,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(637,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(638,'version','1',-1234),(639,'lastModifiedUser',NULL,-1234),(640,'isActive','true',-1234),(641,'version','1',-1234),(642,'policyOrder','2',-1234),(643,'lastModifiedTime','1512979717106',-1234),(644,'promoted','false',-1234),(645,'policySetIdReferences','',-1234),(646,'policyType','Policy',-1234),(647,'isActive','true',-1234),(648,'policyMetaData3','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,17:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(649,'policyIdReferences','',-1234),(650,'policyMetaData2','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,09:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(651,'policyMetaData1','http://wso2.org/identity/identity-action,authenticate,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(652,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(653,'lastModifiedUser',NULL,-1234),(654,'version','1',-1234),(655,'maxPolicyOrder','1',-1234),(656,'version','1',-1234),(657,'promoted','false',-1234),(658,'policyOrder','1',-1234),(659,'policySetIdReferences','',-1234),(660,'policyIdReferences','',-1234),(661,'policyMetaData6','urn:oasis:names:tc:xacml:3.0:attribute-category:resource,CLAIM_VALUE_2,CLAIM_URI_2,http://www.w3.org/2001/XMLSchema#string',-1234),(662,'policyMetaData5','http://wso2.org/identity/user,CLAIM_VALUE_2,CLAIM_URI_2,http://www.w3.org/2001/XMLSchema#string',-1234),(663,'policyType','Policy',-1234),(664,'policyMetaData4','urn:oasis:names:tc:xacml:3.0:attribute-category:resource,CLAIM_VALUE_1,CLAIM_URI_1,http://www.w3.org/2001/XMLSchema#string',-1234),(665,'policyMetaData3','http://wso2.org/identity/user,CLAIM_VALUE_1,CLAIM_URI_1,http://www.w3.org/2001/XMLSchema#string',-1234),(666,'lastModifiedTime','1512979717247',-1234),(667,'policyMetaData2','http://wso2.org/identity/identity-action,provisioning,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(668,'policyMetaData1','http://wso2.org/identity/idp,IDP_NAME,http://wso2.org/identity/idp/idp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(669,'version','1',-1234),(670,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(671,'lastModifiedUser',NULL,-1234),(672,'isActive','true',-1234),(673,'version','1',-1234),(674,'maxPolicyOrder','3',-1234),(675,'promoted','false',-1234),(676,'policyOrder','3',-1234),(677,'policySetIdReferences','',-1234),(678,'policyIdReferences','',-1234),(679,'policyMetaData6','urn:oasis:names:tc:xacml:3.0:attribute-category:resource,CLAIM_VALUE_2,CLAIM_URI_2,http://www.w3.org/2001/XMLSchema#string',-1234),(680,'policyMetaData5','http://wso2.org/identity/user,CLAIM_VALUE_2,CLAIM_URI_2,http://www.w3.org/2001/XMLSchema#string',-1234),(681,'policyType','Policy',-1234),(682,'policyMetaData4','urn:oasis:names:tc:xacml:3.0:attribute-category:resource,CLAIM_VALUE_1,CLAIM_URI_1,http://www.w3.org/2001/XMLSchema#string',-1234),(683,'policyMetaData3','http://wso2.org/identity/user,CLAIM_VALUE_1,CLAIM_URI_1,http://www.w3.org/2001/XMLSchema#string',-1234),(684,'lastModifiedTime','1512979717397',-1234),(685,'policyMetaData2','http://wso2.org/identity/identity-action,provisioning,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(686,'policyMetaData1','http://wso2.org/identity/idp,IDP_NAME,http://wso2.org/identity/idp/idp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(687,'version','1',-1234),(688,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(689,'lastModifiedUser',NULL,-1234),(690,'isActive','true',-1234),(691,'version','1',-1234),(692,'policyOrder','3',-1234),(693,'lastModifiedTime','1512979717440',-1234),(694,'promoted','false',-1234),(695,'policySetIdReferences','',-1234),(696,'policyType','Policy',-1234),(697,'isActive','true',-1234),(698,'policyMetaData6','urn:oasis:names:tc:xacml:3.0:attribute-category:resource,CLAIM_VALUE_2,CLAIM_URI_2,http://www.w3.org/2001/XMLSchema#string',-1234),(699,'policyMetaData5','http://wso2.org/identity/user,CLAIM_VALUE_2,CLAIM_URI_2,http://www.w3.org/2001/XMLSchema#string',-1234),(700,'policyMetaData4','urn:oasis:names:tc:xacml:3.0:attribute-category:resource,CLAIM_VALUE_1,CLAIM_URI_1,http://www.w3.org/2001/XMLSchema#string',-1234),(701,'policyMetaData3','http://wso2.org/identity/user,CLAIM_VALUE_1,CLAIM_URI_1,http://www.w3.org/2001/XMLSchema#string',-1234),(702,'policyIdReferences','',-1234),(703,'policyMetaData2','http://wso2.org/identity/identity-action,provisioning,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(704,'policyMetaData1','http://wso2.org/identity/idp,IDP_NAME,http://wso2.org/identity/idp/idp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(705,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(706,'lastModifiedUser',NULL,-1234),(707,'version','1',-1234),(708,'maxPolicyOrder','1',-1234),(709,'version','1',-1234),(710,'promoted','false',-1234),(711,'policyOrder','1',-1234),(712,'policySetIdReferences','',-1234),(713,'policyIdReferences','',-1234),(714,'policyType','Policy',-1234),(715,'policyMetaData3','urn:oasis:names:tc:xacml:1.0:subject-category:access-subject,ROLE_2,http://wso2.org/claims/role,http://www.w3.org/2001/XMLSchema#string',-1234),(716,'lastModifiedTime','1512979717667',-1234),(717,'policyMetaData2','urn:oasis:names:tc:xacml:1.0:subject-category:access-subject,ROLE_1,http://wso2.org/claims/role,http://www.w3.org/2001/XMLSchema#string',-1234),(718,'policyMetaData1','http://wso2.org/identity/identity-action,authenticate,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(719,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(720,'version','1',-1234),(721,'lastModifiedUser',NULL,-1234),(722,'isActive','true',-1234),(723,'version','1',-1234),(724,'maxPolicyOrder','4',-1234),(725,'promoted','false',-1234),(726,'policyOrder','4',-1234),(727,'policySetIdReferences','',-1234),(728,'policyIdReferences','',-1234),(729,'policyType','Policy',-1234),(730,'policyMetaData3','urn:oasis:names:tc:xacml:1.0:subject-category:access-subject,ROLE_2,http://wso2.org/claims/role,http://www.w3.org/2001/XMLSchema#string',-1234),(731,'lastModifiedTime','1512979717716',-1234),(732,'policyMetaData2','urn:oasis:names:tc:xacml:1.0:subject-category:access-subject,ROLE_1,http://wso2.org/claims/role,http://www.w3.org/2001/XMLSchema#string',-1234),(733,'policyMetaData1','http://wso2.org/identity/identity-action,authenticate,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(734,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(735,'version','1',-1234),(736,'lastModifiedUser',NULL,-1234),(737,'isActive','true',-1234),(738,'version','1',-1234),(739,'policyOrder','4',-1234),(740,'lastModifiedTime','1512979717741',-1234),(741,'promoted','false',-1234),(742,'policySetIdReferences','',-1234),(743,'policyType','Policy',-1234),(744,'isActive','true',-1234),(745,'policyMetaData3','urn:oasis:names:tc:xacml:1.0:subject-category:access-subject,ROLE_2,http://wso2.org/claims/role,http://www.w3.org/2001/XMLSchema#string',-1234),(746,'policyIdReferences','',-1234),(747,'policyMetaData2','urn:oasis:names:tc:xacml:1.0:subject-category:access-subject,ROLE_1,http://wso2.org/claims/role,http://www.w3.org/2001/XMLSchema#string',-1234),(748,'policyMetaData1','http://wso2.org/identity/identity-action,authenticate,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(749,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(750,'lastModifiedUser',NULL,-1234),(751,'version','1',-1234),(752,'maxPolicyOrder','1',-1234),(753,'version','1',-1234),(754,'promoted','false',-1234),(755,'policyOrder','1',-1234),(756,'policySetIdReferences','',-1234),(757,'policyIdReferences','',-1234),(758,'policyType','Policy',-1234),(759,'policyMetaData3','urn:oasis:names:tc:xacml:3.0:attribute-category:resource,CLAIM_VALUE_2,CLAIM_URI_2,http://www.w3.org/2001/XMLSchema#string',-1234),(760,'lastModifiedTime','1512979717789',-1234),(761,'policyMetaData2','urn:oasis:names:tc:xacml:3.0:attribute-category:resource,CLAIM_VALUE_1,CLAIM_URI_1,http://www.w3.org/2001/XMLSchema#string',-1234),(762,'policyMetaData1','http://wso2.org/identity/identity-action,authenticate,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(763,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(764,'version','1',-1234),(765,'lastModifiedUser',NULL,-1234),(766,'isActive','true',-1234),(767,'version','1',-1234),(768,'maxPolicyOrder','5',-1234),(769,'promoted','false',-1234),(770,'policyOrder','5',-1234),(771,'policySetIdReferences','',-1234),(772,'policyIdReferences','',-1234),(773,'policyType','Policy',-1234),(774,'policyMetaData3','urn:oasis:names:tc:xacml:3.0:attribute-category:resource,CLAIM_VALUE_2,CLAIM_URI_2,http://www.w3.org/2001/XMLSchema#string',-1234),(775,'lastModifiedTime','1512979717842',-1234),(776,'policyMetaData2','urn:oasis:names:tc:xacml:3.0:attribute-category:resource,CLAIM_VALUE_1,CLAIM_URI_1,http://www.w3.org/2001/XMLSchema#string',-1234),(777,'policyMetaData1','http://wso2.org/identity/identity-action,authenticate,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(778,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(779,'version','1',-1234),(780,'lastModifiedUser',NULL,-1234),(781,'isActive','true',-1234),(782,'version','1',-1234),(783,'policyOrder','5',-1234),(784,'lastModifiedTime','1512979717867',-1234),(785,'promoted','false',-1234),(786,'policySetIdReferences','',-1234),(787,'policyType','Policy',-1234),(788,'isActive','true',-1234),(789,'policyMetaData3','urn:oasis:names:tc:xacml:3.0:attribute-category:resource,CLAIM_VALUE_2,CLAIM_URI_2,http://www.w3.org/2001/XMLSchema#string',-1234),(790,'policyIdReferences','',-1234),(791,'policyMetaData2','urn:oasis:names:tc:xacml:3.0:attribute-category:resource,CLAIM_VALUE_1,CLAIM_URI_1,http://www.w3.org/2001/XMLSchema#string',-1234),(792,'policyMetaData1','http://wso2.org/identity/identity-action,authenticate,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(793,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(794,'lastModifiedUser',NULL,-1234),(795,'version','1',-1234),(796,'maxPolicyOrder','1',-1234),(797,'version','1',-1234),(798,'version','1',-1234),(799,'policyOrder','1',-1234),(800,'lastModifiedTime','1512979717927',-1234),(801,'promoted','false',-1234),(802,'policySetIdReferences','',-1234),(803,'policyType','Policy',-1234),(804,'isActive','true',-1234),(805,'policyMetaData8','http://wso2.org/identity/user,ROLE_2,http://wso2.org/claims/role,http://www.w3.org/2001/XMLSchema#string',-1234),(806,'policyMetaData7','http://wso2.org/identity/user,ROLE_1,http://wso2.org/claims/role,http://www.w3.org/2001/XMLSchema#string',-1234),(807,'policyMetaData6','http://wso2.org/identity/provisioning,PUT,http://wso2.org/identity/provisioning/provision-operation,http://www.w3.org/2001/XMLSchema#string',-1234),(808,'policyMetaData5','http://wso2.org/identity/provisioning,ROLE_2,http://wso2.org/identity/provisioning/claim-group,http://www.w3.org/2001/XMLSchema#string',-1234),(809,'policyMetaData4','http://wso2.org/identity/provisioning,ROLE_1,http://wso2.org/identity/provisioning/claim-group,http://www.w3.org/2001/XMLSchema#string',-1234),(810,'policyMetaData3','http://wso2.org/identity/provisioning,POST,http://wso2.org/identity/provisioning/provision-operation,http://www.w3.org/2001/XMLSchema#string',-1234),(811,'policyIdReferences','',-1234),(812,'policyMetaData2','http://wso2.org/identity/identity-action,provisioning,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(813,'policyMetaData1','http://wso2.org/identity/idp,IDP_NAME,http://wso2.org/identity/idp/idp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(814,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(815,'lastModifiedUser',NULL,-1234),(816,'version','1',-1234),(817,'maxPolicyOrder','6',-1234),(818,'version','1',-1234),(819,'policyOrder','6',-1234),(820,'lastModifiedTime','1512979717973',-1234),(821,'promoted','false',-1234),(822,'policySetIdReferences','',-1234),(823,'policyType','Policy',-1234),(824,'isActive','true',-1234),(825,'policyMetaData8','http://wso2.org/identity/user,ROLE_2,http://wso2.org/claims/role,http://www.w3.org/2001/XMLSchema#string',-1234),(826,'policyMetaData7','http://wso2.org/identity/user,ROLE_1,http://wso2.org/claims/role,http://www.w3.org/2001/XMLSchema#string',-1234),(827,'policyMetaData6','http://wso2.org/identity/provisioning,PUT,http://wso2.org/identity/provisioning/provision-operation,http://www.w3.org/2001/XMLSchema#string',-1234),(828,'policyMetaData5','http://wso2.org/identity/provisioning,ROLE_2,http://wso2.org/identity/provisioning/claim-group,http://www.w3.org/2001/XMLSchema#string',-1234),(829,'policyMetaData4','http://wso2.org/identity/provisioning,ROLE_1,http://wso2.org/identity/provisioning/claim-group,http://www.w3.org/2001/XMLSchema#string',-1234),(830,'policyMetaData3','http://wso2.org/identity/provisioning,POST,http://wso2.org/identity/provisioning/provision-operation,http://www.w3.org/2001/XMLSchema#string',-1234),(831,'policyIdReferences','',-1234),(832,'policyMetaData2','http://wso2.org/identity/identity-action,provisioning,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(833,'policyMetaData1','http://wso2.org/identity/idp,IDP_NAME,http://wso2.org/identity/idp/idp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(834,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(835,'lastModifiedUser',NULL,-1234),(836,'version','1',-1234),(837,'policyOrder','6',-1234),(838,'lastModifiedTime','1512979718008',-1234),(839,'promoted','false',-1234),(840,'policySetIdReferences','',-1234),(841,'policyType','Policy',-1234),(842,'isActive','true',-1234),(843,'policyMetaData8','http://wso2.org/identity/user,ROLE_2,http://wso2.org/claims/role,http://www.w3.org/2001/XMLSchema#string',-1234),(844,'policyMetaData7','http://wso2.org/identity/user,ROLE_1,http://wso2.org/claims/role,http://www.w3.org/2001/XMLSchema#string',-1234),(845,'policyMetaData6','http://wso2.org/identity/provisioning,PUT,http://wso2.org/identity/provisioning/provision-operation,http://www.w3.org/2001/XMLSchema#string',-1234),(846,'policyMetaData5','http://wso2.org/identity/provisioning,ROLE_2,http://wso2.org/identity/provisioning/claim-group,http://www.w3.org/2001/XMLSchema#string',-1234),(847,'policyMetaData4','http://wso2.org/identity/provisioning,ROLE_1,http://wso2.org/identity/provisioning/claim-group,http://www.w3.org/2001/XMLSchema#string',-1234),(848,'policyIdReferences','',-1234),(849,'policyMetaData3','http://wso2.org/identity/provisioning,POST,http://wso2.org/identity/provisioning/provision-operation,http://www.w3.org/2001/XMLSchema#string',-1234),(850,'policyMetaData2','http://wso2.org/identity/identity-action,provisioning,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(851,'policyMetaData1','http://wso2.org/identity/idp,IDP_NAME,http://wso2.org/identity/idp/idp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(852,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(853,'lastModifiedUser',NULL,-1234),(854,'version','1',-1234),(855,'maxPolicyOrder','1',-1234),(856,'version','1',-1234),(857,'promoted','false',-1234),(858,'policyOrder','1',-1234),(859,'policySetIdReferences','',-1234),(860,'policyIdReferences','',-1234),(861,'policyType','Policy',-1234),(862,'policyMetaData3','http://wso2.org/identity/auth-context-request-param,SCOPE2,http://wso2.org/identity/auth-context-request-param/scope:20,http://www.w3.org/2001/XMLSchema#string',-1234),(863,'lastModifiedTime','1512979718085',-1234),(864,'policyMetaData2','http://wso2.org/identity/auth-context-request-param,SCOPE1,http://wso2.org/identity/auth-context-request-param/scope:20,http://www.w3.org/2001/XMLSchema#string',-1234),(865,'policyMetaData1','http://wso2.org/identity/identity-action,authenticate,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(866,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(867,'version','1',-1234),(868,'lastModifiedUser',NULL,-1234),(869,'isActive','true',-1234),(870,'version','1',-1234),(871,'maxPolicyOrder','7',-1234),(872,'promoted','false',-1234),(873,'policyOrder','7',-1234),(874,'policySetIdReferences','',-1234),(875,'policyIdReferences','',-1234),(876,'policyType','Policy',-1234),(877,'policyMetaData3','http://wso2.org/identity/auth-context-request-param,SCOPE2,http://wso2.org/identity/auth-context-request-param/scope:20,http://www.w3.org/2001/XMLSchema#string',-1234),(878,'lastModifiedTime','1512979718148',-1234),(879,'policyMetaData2','http://wso2.org/identity/auth-context-request-param,SCOPE1,http://wso2.org/identity/auth-context-request-param/scope:20,http://www.w3.org/2001/XMLSchema#string',-1234),(880,'policyMetaData1','http://wso2.org/identity/identity-action,authenticate,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(881,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(882,'version','1',-1234),(883,'lastModifiedUser',NULL,-1234),(884,'isActive','true',-1234),(885,'version','1',-1234),(886,'policyOrder','7',-1234),(887,'lastModifiedTime','1512979718177',-1234),(888,'promoted','false',-1234),(889,'policySetIdReferences','',-1234),(890,'policyType','Policy',-1234),(891,'isActive','true',-1234),(892,'policyMetaData3','http://wso2.org/identity/auth-context-request-param,SCOPE2,http://wso2.org/identity/auth-context-request-param/scope:20,http://www.w3.org/2001/XMLSchema#string',-1234),(893,'policyIdReferences','',-1234),(894,'policyMetaData2','http://wso2.org/identity/auth-context-request-param,SCOPE1,http://wso2.org/identity/auth-context-request-param/scope:20,http://www.w3.org/2001/XMLSchema#string',-1234),(895,'policyMetaData1','http://wso2.org/identity/identity-action,authenticate,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(896,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(897,'lastModifiedUser',NULL,-1234),(898,'version','1',-1234),(899,'maxPolicyOrder','1',-1234),(900,'version','1',-1234),(901,'promoted','false',-1234),(902,'policyOrder','1',-1234),(903,'policySetIdReferences','',-1234),(904,'policyIdReferences','',-1234),(905,'policyType','Policy',-1234),(906,'policyMetaData4','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,17:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(907,'policyMetaData3','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,09:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(908,'lastModifiedTime','1512979718235',-1234),(909,'policyMetaData2','http://wso2.org/identity/identity-action,provisioning,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(910,'policyMetaData1','http://wso2.org/identity/idp,IDP_NAME,http://wso2.org/identity/idp/idp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(911,'version','1',-1234),(912,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(913,'lastModifiedUser',NULL,-1234),(914,'isActive','true',-1234),(915,'version','1',-1234),(916,'maxPolicyOrder','8',-1234),(917,'promoted','false',-1234),(918,'policyOrder','8',-1234),(919,'policySetIdReferences','',-1234),(920,'policyIdReferences','',-1234),(921,'policyType','Policy',-1234),(922,'policyMetaData4','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,17:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(923,'policyMetaData3','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,09:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(924,'lastModifiedTime','1512979718285',-1234),(925,'policyMetaData2','http://wso2.org/identity/identity-action,provisioning,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(926,'policyMetaData1','http://wso2.org/identity/idp,IDP_NAME,http://wso2.org/identity/idp/idp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(927,'version','1',-1234),(928,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(929,'lastModifiedUser',NULL,-1234),(930,'isActive','true',-1234),(931,'version','1',-1234),(932,'policyOrder','8',-1234),(933,'lastModifiedTime','1512979718308',-1234),(934,'promoted','false',-1234),(935,'policySetIdReferences','',-1234),(936,'policyType','Policy',-1234),(937,'isActive','true',-1234),(938,'policyMetaData4','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,17:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(939,'policyMetaData3','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,09:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(940,'policyIdReferences','',-1234),(941,'policyMetaData2','http://wso2.org/identity/identity-action,provisioning,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(942,'policyMetaData1','http://wso2.org/identity/idp,IDP_NAME,http://wso2.org/identity/idp/idp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(943,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(944,'lastModifiedUser',NULL,-1234),(945,'version','1',-1234),(946,'maxPolicyOrder','1',-1234),(947,'version','1',-1234),(948,'promoted','false',-1234),(949,'policyOrder','1',-1234),(950,'policySetIdReferences','',-1234),(951,'policyIdReferences','',-1234),(952,'policyMetaData5','urn:oasis:names:tc:xacml:1.0:subject-category:access-subject,ROLE_2,http://wso2.org/claims/role,http://www.w3.org/2001/XMLSchema#string',-1234),(953,'policyType','Policy',-1234),(954,'policyMetaData4','urn:oasis:names:tc:xacml:1.0:subject-category:access-subject,ROLE_1,http://wso2.org/claims/role,http://www.w3.org/2001/XMLSchema#string',-1234),(955,'policyMetaData3','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,17:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(956,'lastModifiedTime','1512979718366',-1234),(957,'policyMetaData2','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,09:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(958,'policyMetaData1','http://wso2.org/identity/identity-action,authenticate,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(959,'version','1',-1234),(960,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(961,'lastModifiedUser',NULL,-1234),(962,'isActive','true',-1234),(963,'version','1',-1234),(964,'maxPolicyOrder','9',-1234),(965,'promoted','false',-1234),(966,'policyOrder','9',-1234),(967,'policySetIdReferences','',-1234),(968,'policyIdReferences','',-1234),(969,'policyMetaData5','urn:oasis:names:tc:xacml:1.0:subject-category:access-subject,ROLE_2,http://wso2.org/claims/role,http://www.w3.org/2001/XMLSchema#string',-1234),(970,'policyType','Policy',-1234),(971,'policyMetaData4','urn:oasis:names:tc:xacml:1.0:subject-category:access-subject,ROLE_1,http://wso2.org/claims/role,http://www.w3.org/2001/XMLSchema#string',-1234),(972,'policyMetaData3','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,17:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(973,'lastModifiedTime','1512979718426',-1234),(974,'policyMetaData2','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,09:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(975,'policyMetaData1','http://wso2.org/identity/identity-action,authenticate,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(976,'version','1',-1234),(977,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(978,'lastModifiedUser',NULL,-1234),(979,'isActive','true',-1234),(980,'version','1',-1234),(981,'policyOrder','9',-1234),(982,'lastModifiedTime','1512979718447',-1234),(983,'promoted','false',-1234),(984,'policySetIdReferences','',-1234),(985,'policyType','Policy',-1234),(986,'isActive','true',-1234),(987,'policyMetaData5','urn:oasis:names:tc:xacml:1.0:subject-category:access-subject,ROLE_2,http://wso2.org/claims/role,http://www.w3.org/2001/XMLSchema#string',-1234),(988,'policyMetaData4','urn:oasis:names:tc:xacml:1.0:subject-category:access-subject,ROLE_1,http://wso2.org/claims/role,http://www.w3.org/2001/XMLSchema#string',-1234),(989,'policyMetaData3','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,17:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(990,'policyIdReferences','',-1234),(991,'policyMetaData2','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,09:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(992,'policyMetaData1','http://wso2.org/identity/identity-action,authenticate,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(993,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(994,'lastModifiedUser',NULL,-1234),(995,'version','1',-1234),(996,'maxPolicyOrder','1',-1234),(997,'version','1',-1234),(998,'promoted','false',-1234),(999,'policyOrder','1',-1234),(1000,'policySetIdReferences','',-1234),(1001,'policyIdReferences','',-1234),(1002,'policyMetaData5','urn:oasis:names:tc:xacml:3.0:attribute-category:resource,CLAIM_VALUE_2,CLAIM_URI_2,http://www.w3.org/2001/XMLSchema#string',-1234),(1003,'policyType','Policy',-1234),(1004,'policyMetaData4','urn:oasis:names:tc:xacml:3.0:attribute-category:resource,CLAIM_VALUE_1,CLAIM_URI_1,http://www.w3.org/2001/XMLSchema#string',-1234),(1005,'policyMetaData3','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,17:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(1006,'lastModifiedTime','1512979718503',-1234),(1007,'policyMetaData2','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,09:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(1008,'policyMetaData1','http://wso2.org/identity/identity-action,authenticate,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(1009,'version','1',-1234),(1010,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(1011,'lastModifiedUser',NULL,-1234),(1012,'isActive','true',-1234),(1013,'version','1',-1234),(1014,'maxPolicyOrder','10',-1234),(1015,'promoted','false',-1234),(1016,'policyOrder','10',-1234),(1017,'policySetIdReferences','',-1234),(1018,'policyIdReferences','',-1234),(1019,'policyMetaData5','urn:oasis:names:tc:xacml:3.0:attribute-category:resource,CLAIM_VALUE_2,CLAIM_URI_2,http://www.w3.org/2001/XMLSchema#string',-1234),(1020,'policyType','Policy',-1234),(1021,'policyMetaData4','urn:oasis:names:tc:xacml:3.0:attribute-category:resource,CLAIM_VALUE_1,CLAIM_URI_1,http://www.w3.org/2001/XMLSchema#string',-1234),(1022,'policyMetaData3','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,17:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(1023,'lastModifiedTime','1512979718561',-1234),(1024,'policyMetaData2','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,09:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(1025,'policyMetaData1','http://wso2.org/identity/identity-action,authenticate,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(1026,'version','1',-1234),(1027,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(1028,'lastModifiedUser',NULL,-1234),(1029,'isActive','true',-1234),(1030,'version','1',-1234),(1031,'policyOrder','10',-1234),(1032,'lastModifiedTime','1512979718609',-1234),(1033,'promoted','false',-1234),(1034,'policySetIdReferences','',-1234),(1035,'policyType','Policy',-1234),(1036,'isActive','true',-1234),(1037,'policyMetaData5','urn:oasis:names:tc:xacml:3.0:attribute-category:resource,CLAIM_VALUE_2,CLAIM_URI_2,http://www.w3.org/2001/XMLSchema#string',-1234),(1038,'policyMetaData4','urn:oasis:names:tc:xacml:3.0:attribute-category:resource,CLAIM_VALUE_1,CLAIM_URI_1,http://www.w3.org/2001/XMLSchema#string',-1234),(1039,'policyMetaData3','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,17:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(1040,'policyIdReferences','',-1234),(1041,'policyMetaData2','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,09:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(1042,'policyMetaData1','http://wso2.org/identity/identity-action,authenticate,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(1043,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(1044,'lastModifiedUser',NULL,-1234),(1045,'version','1',-1234),(1046,'maxPolicyOrder','1',-1234),(1047,'version','1',-1234),(1048,'version','1',-1234),(1049,'policyOrder','1',-1234),(1050,'lastModifiedTime','1512979718676',-1234),(1051,'promoted','false',-1234),(1052,'policySetIdReferences','',-1234),(1053,'policyType','Policy',-1234),(1054,'policyMetaData12','http://wso2.org/identity/user,ROLE_2,http://wso2.org/claims/role,http://www.w3.org/2001/XMLSchema#string',-1234),(1055,'policyMetaData11','http://wso2.org/identity/user,ROLE_1,http://wso2.org/claims/role,http://www.w3.org/2001/XMLSchema#string',-1234),(1056,'policyMetaData10','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,17:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(1057,'isActive','true',-1234),(1058,'policyMetaData9','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,09:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(1059,'policyMetaData8','http://wso2.org/identity/provisioning,PUT,http://wso2.org/identity/provisioning/provision-operation,http://www.w3.org/2001/XMLSchema#string',-1234),(1060,'policyMetaData7','http://wso2.org/identity/provisioning,ROLE_2,http://wso2.org/identity/provisioning/claim-group,http://www.w3.org/2001/XMLSchema#string',-1234),(1061,'policyMetaData6','http://wso2.org/identity/provisioning,ROLE_1,http://wso2.org/identity/provisioning/claim-group,http://www.w3.org/2001/XMLSchema#string',-1234),(1062,'policyMetaData5','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,17:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(1063,'policyMetaData4','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,09:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(1064,'policyIdReferences','',-1234),(1065,'policyMetaData3','http://wso2.org/identity/provisioning,POST,http://wso2.org/identity/provisioning/provision-operation,http://www.w3.org/2001/XMLSchema#string',-1234),(1066,'policyMetaData2','http://wso2.org/identity/identity-action,provisioning,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(1067,'policyMetaData1','http://wso2.org/identity/idp,IDP_NAME,http://wso2.org/identity/idp/idp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(1068,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(1069,'lastModifiedUser',NULL,-1234),(1070,'version','1',-1234),(1071,'maxPolicyOrder','11',-1234),(1072,'version','1',-1234),(1073,'policyOrder','11',-1234),(1074,'lastModifiedTime','1512979718729',-1234),(1075,'promoted','false',-1234),(1076,'policySetIdReferences','',-1234),(1077,'policyType','Policy',-1234),(1078,'policyMetaData12','http://wso2.org/identity/user,ROLE_2,http://wso2.org/claims/role,http://www.w3.org/2001/XMLSchema#string',-1234),(1079,'policyMetaData11','http://wso2.org/identity/user,ROLE_1,http://wso2.org/claims/role,http://www.w3.org/2001/XMLSchema#string',-1234),(1080,'policyMetaData10','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,17:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(1081,'isActive','true',-1234),(1082,'policyMetaData9','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,09:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(1083,'policyMetaData8','http://wso2.org/identity/provisioning,PUT,http://wso2.org/identity/provisioning/provision-operation,http://www.w3.org/2001/XMLSchema#string',-1234),(1084,'policyMetaData7','http://wso2.org/identity/provisioning,ROLE_2,http://wso2.org/identity/provisioning/claim-group,http://www.w3.org/2001/XMLSchema#string',-1234),(1085,'policyMetaData6','http://wso2.org/identity/provisioning,ROLE_1,http://wso2.org/identity/provisioning/claim-group,http://www.w3.org/2001/XMLSchema#string',-1234),(1086,'policyMetaData5','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,17:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(1087,'policyMetaData4','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,09:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(1088,'policyIdReferences','',-1234),(1089,'policyMetaData3','http://wso2.org/identity/provisioning,POST,http://wso2.org/identity/provisioning/provision-operation,http://www.w3.org/2001/XMLSchema#string',-1234),(1090,'policyMetaData2','http://wso2.org/identity/identity-action,provisioning,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(1091,'policyMetaData1','http://wso2.org/identity/idp,IDP_NAME,http://wso2.org/identity/idp/idp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(1092,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(1093,'lastModifiedUser',NULL,-1234),(1094,'version','1',-1234),(1095,'policyOrder','11',-1234),(1096,'lastModifiedTime','1512979718764',-1234),(1097,'promoted','false',-1234),(1098,'policySetIdReferences','',-1234),(1099,'policyMetaData12','http://wso2.org/identity/user,ROLE_2,http://wso2.org/claims/role,http://www.w3.org/2001/XMLSchema#string',-1234),(1100,'policyType','Policy',-1234),(1101,'policyMetaData11','http://wso2.org/identity/user,ROLE_1,http://wso2.org/claims/role,http://www.w3.org/2001/XMLSchema#string',-1234),(1102,'policyMetaData10','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,17:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(1103,'isActive','true',-1234),(1104,'policyMetaData9','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,09:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(1105,'policyMetaData8','http://wso2.org/identity/provisioning,PUT,http://wso2.org/identity/provisioning/provision-operation,http://www.w3.org/2001/XMLSchema#string',-1234),(1106,'policyMetaData7','http://wso2.org/identity/provisioning,ROLE_2,http://wso2.org/identity/provisioning/claim-group,http://www.w3.org/2001/XMLSchema#string',-1234),(1107,'policyMetaData6','http://wso2.org/identity/provisioning,ROLE_1,http://wso2.org/identity/provisioning/claim-group,http://www.w3.org/2001/XMLSchema#string',-1234),(1108,'policyMetaData5','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,17:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(1109,'policyMetaData4','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,09:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(1110,'policyIdReferences','',-1234),(1111,'policyMetaData3','http://wso2.org/identity/provisioning,POST,http://wso2.org/identity/provisioning/provision-operation,http://www.w3.org/2001/XMLSchema#string',-1234),(1112,'policyMetaData2','http://wso2.org/identity/identity-action,provisioning,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(1113,'policyMetaData1','http://wso2.org/identity/idp,IDP_NAME,http://wso2.org/identity/idp/idp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(1114,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(1115,'lastModifiedUser',NULL,-1234),(1116,'version','1',-1234),(1117,'maxPolicyOrder','1',-1234),(1118,'version','1',-1234),(1119,'version','1',-1234),(1120,'policyOrder','1',-1234),(1121,'lastModifiedTime','1512979718829',-1234),(1122,'promoted','false',-1234),(1123,'policySetIdReferences','',-1234),(1124,'policyType','Policy',-1234),(1125,'isActive','true',-1234),(1126,'policyMetaData8','urn:oasis:names:tc:xacml:3.0:attribute-category:resource,CLAIM_VALUE_2,CLAIM_URI_2,http://www.w3.org/2001/XMLSchema#string',-1234),(1127,'policyMetaData7','http://wso2.org/identity/user,CLAIM_VALUE_2,CLAIM_URI_2,http://www.w3.org/2001/XMLSchema#string',-1234),(1128,'policyMetaData6','urn:oasis:names:tc:xacml:3.0:attribute-category:resource,CLAIM_VALUE_1,CLAIM_URI_1,http://www.w3.org/2001/XMLSchema#string',-1234),(1129,'policyMetaData5','http://wso2.org/identity/user,CLAIM_VALUE_1,CLAIM_URI_1,http://www.w3.org/2001/XMLSchema#string',-1234),(1130,'policyMetaData4','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,17:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(1131,'policyMetaData3','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,09:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(1132,'policyIdReferences','',-1234),(1133,'policyMetaData2','http://wso2.org/identity/identity-action,provisioning,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(1134,'policyMetaData1','http://wso2.org/identity/idp,IDP_NAME,http://wso2.org/identity/idp/idp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(1135,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(1136,'lastModifiedUser',NULL,-1234),(1137,'version','1',-1234),(1138,'maxPolicyOrder','12',-1234),(1139,'version','1',-1234),(1140,'policyOrder','12',-1234),(1141,'lastModifiedTime','1512979718877',-1234),(1142,'promoted','false',-1234),(1143,'policySetIdReferences','',-1234),(1144,'policyType','Policy',-1234),(1145,'isActive','true',-1234),(1146,'policyMetaData8','urn:oasis:names:tc:xacml:3.0:attribute-category:resource,CLAIM_VALUE_2,CLAIM_URI_2,http://www.w3.org/2001/XMLSchema#string',-1234),(1147,'policyMetaData7','http://wso2.org/identity/user,CLAIM_VALUE_2,CLAIM_URI_2,http://www.w3.org/2001/XMLSchema#string',-1234),(1148,'policyMetaData6','urn:oasis:names:tc:xacml:3.0:attribute-category:resource,CLAIM_VALUE_1,CLAIM_URI_1,http://www.w3.org/2001/XMLSchema#string',-1234),(1149,'policyMetaData5','http://wso2.org/identity/user,CLAIM_VALUE_1,CLAIM_URI_1,http://www.w3.org/2001/XMLSchema#string',-1234),(1150,'policyMetaData4','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,17:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(1151,'policyMetaData3','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,09:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(1152,'policyIdReferences','',-1234),(1153,'policyMetaData2','http://wso2.org/identity/identity-action,provisioning,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(1154,'policyMetaData1','http://wso2.org/identity/idp,IDP_NAME,http://wso2.org/identity/idp/idp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(1155,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(1156,'lastModifiedUser',NULL,-1234),(1157,'version','1',-1234),(1158,'policyOrder','12',-1234),(1159,'lastModifiedTime','1512979718905',-1234),(1160,'promoted','false',-1234),(1161,'policySetIdReferences','',-1234),(1162,'policyType','Policy',-1234),(1163,'isActive','true',-1234),(1164,'policyMetaData8','urn:oasis:names:tc:xacml:3.0:attribute-category:resource,CLAIM_VALUE_2,CLAIM_URI_2,http://www.w3.org/2001/XMLSchema#string',-1234),(1165,'policyMetaData7','http://wso2.org/identity/user,CLAIM_VALUE_2,CLAIM_URI_2,http://www.w3.org/2001/XMLSchema#string',-1234),(1166,'policyMetaData6','urn:oasis:names:tc:xacml:3.0:attribute-category:resource,CLAIM_VALUE_1,CLAIM_URI_1,http://www.w3.org/2001/XMLSchema#string',-1234),(1167,'policyMetaData5','http://wso2.org/identity/user,CLAIM_VALUE_1,CLAIM_URI_1,http://www.w3.org/2001/XMLSchema#string',-1234),(1168,'policyMetaData4','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,17:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(1169,'policyIdReferences','',-1234),(1170,'policyMetaData3','urn:oasis:names:tc:xacml:3.0:attribute-category:environment,09:00:00,urn:oasis:names:tc:xacml:1.0:environment:current-time,http://www.w3.org/2001/XMLSchema#time',-1234),(1171,'policyMetaData2','http://wso2.org/identity/identity-action,provisioning,http://wso2.org/identity/identity-action/action-name,http://www.w3.org/2001/XMLSchema#string',-1234),(1172,'policyMetaData1','http://wso2.org/identity/idp,IDP_NAME,http://wso2.org/identity/idp/idp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(1173,'policyMetaData0','http://wso2.org/identity/sp,SP_NAME,http://wso2.org/identity/sp/sp-name,http://www.w3.org/2001/XMLSchema#string',-1234),(1174,'lastModifiedUser',NULL,-1234),(1175,'question','City where you were born ?',-1234),(1176,'questionSetId','http://wso2.org/claims/challengeQuestion1',-1234),(1177,'isPromoteQuestion','true',-1234),(1178,'question','Father\'s middle name ?',-1234),(1179,'questionSetId','http://wso2.org/claims/challengeQuestion1',-1234),(1180,'isPromoteQuestion','true',-1234),(1181,'question','Favorite food ?',-1234),(1182,'questionSetId','http://wso2.org/claims/challengeQuestion1',-1234),(1183,'isPromoteQuestion','true',-1234),(1184,'question','Favorite vacation location ?',-1234),(1185,'questionSetId','http://wso2.org/claims/challengeQuestion1',-1234),(1186,'isPromoteQuestion','true',-1234),(1187,'question','Model of your first car ?',-1234),(1188,'questionSetId','http://wso2.org/claims/challengeQuestion2',-1234),(1189,'isPromoteQuestion','true',-1234),(1190,'question','Name of the hospital where you were born ?',-1234),(1191,'questionSetId','http://wso2.org/claims/challengeQuestion2',-1234),(1192,'isPromoteQuestion','true',-1234),(1193,'question','Name of your first pet ?',-1234),(1194,'questionSetId','http://wso2.org/claims/challengeQuestion2',-1234),(1195,'isPromoteQuestion','true',-1234),(1196,'question','Favorite sport ?',-1234),(1197,'questionSetId','http://wso2.org/claims/challengeQuestion2',-1234),(1198,'isPromoteQuestion','true',-1234),(1199,'accountIdRecovery','WSO2 Carbon - Account Recovery|\n            Hi {{user.claim.givenname}},\n\n            We received a request to recover your account user name. The account associated with us indicates that the\n            user name is : {{userstore-domain}}/{{user-name}}@{{tenant-domain}}\n        |\n            Best Regards,\n            WSO2 Carbon Team\n            http://www.wso2.com\n        ',-1234),(1200,'passwordReset','WSO2 Carbon - Password Reset|\n            Hi {{user.claim.givenname}},\n\n            We received a request to change the password on the {{user-name}} account associated with this e-mail address.\n            If you made this request, please click the link below to securely change your password:\n\n            https://localhost:9443/accountrecoveryendpoint/confirmrecovery.do?confirmation={{confirmation-code}}&userstoredomain={{userstore-domain}}&username={{url:user-name}}&tenantdomain={{tenant-domain}}&callback={{callback}}\n\n            If clicking the link doesn\'t seem to work, you can copy and paste the link into your browser\'s address\n            window.\n\n            If you did not request to have your {{user-name}} password reset, simply disregard this email and no changes\n            to your account will be made.\n        |\n            Best Regards,\n            WSO2 Carbon Team\n            http://www.wso2.com\n        ',-1234),(1201,'temporaryPassword','WSO2 Carbon - Temporary Password|\n            Hi {{user.claim.givenname}},\n\n            Please find your temporary password below.\n\n            User Name: {{user-name}}\n            Temporary Password: {{temporary-password}}\n        |\n            Best Regards,\n            WSO2 Identity Server Team\n            http://www.wso2.com\n        ',-1234),(1202,'adminforcedpasswordresetwithotp','WSO2 - Admin Forced Password Reset|\n            Hi {{user.claim.givenname}},\n\n            We received a request to change the password on the {{user-name}} account associated with this e-mail address.Please use below OTP as the password at next login and then reset your password.\n\n            OTP : {{confirmation-code}}\n\n        |\n            Best Regards,\n            WSO2 Carbon Team\n            http://www.wso2.com\n        ',-1234),(1203,'initiateRecovery','WSO2 Carbon - You started to reset password|\n            Hi {{user.claim.givenname}},\n\n            This is to notify that you have initiate to reset your password using security questions.\n        |\n            Best Regards,\n            WSO2 Identity Server Team\n            http://www.wso2.com\n        ',-1234),(1204,'emailConfirm','WSO2 Carbon - Email Confirmation|\n            Hi {{user.claim.givenname}},\n\n            You have created an account with following user name\n\n            User Name: {{user-name}}\n\n            Please click the following link to unlock. If clicking the link doesn\'t seem to work, you can copy and paste\n            the\n            link into your browser\'s address window.\n\n            https://localhost:9443/accountrecoveryendpoint/confirmregistration.do?confirmation={{confirmation-code}}&userstoredomain={{userstore-domain}}&username={{url:user-name}}&tenantdomain={{tenant-domain}}\n        |\n            Best Regards,\n            WSO2 Identity Server Team\n            http://www.wso2.com\n        ',-1234),(1205,'accountDisable','WSO2 Carbon - Your account disabled|\n            Hi {{user.claim.givenname}},\n\n            Please note that the account registered with us with the user name : {{user-name}} has been disabled.\n        |\n            Best Regards,\n            WSO2 Identity Server Team\n            http://www.wso2.com\n        ',-1234),(1206,'accountConfirmation','WSO2 Carbon - Account Confirmation|\n            Hi {{user.claim.givenname}},\n\n            You have created an account with following user name\n\n            User Name: {{user-name}}\n\n            Please click the following link to unlock. If clicking the link doesn\'t seem to work, you can copy and paste\n            the\n            link into your browser\'s address window.\n\n            https://localhost:9443/accountrecoveryendpoint/confirmregistration.do?confirmation={{confirmation-code}}&userstoredomain={{userstore-domain}}&username={{url:user-name}}&tenantdomain={{tenant-domain}}&callback={{callback}}\n        |\n            Best Regards,\n            WSO2 Identity Server Team\n            http://www.wso2.com\n        ',-1234),(1207,'passwordResetSucess','WSO2 Carbon - Your Password Reset successfully|\n            Hi {{user.claim.givenname}},\n\n            Please note that your password reset operation is successfully completed.\n        |\n            Best Regards,\n            WSO2 Identity Server Team\n            http://www.wso2.com\n        ',-1234),(1208,'accountLock','WSO2 Carbon - Your account Locked|\n            Hi {{user.claim.givenname}},\n\n            Please note that the account registered with us with the user name : {{user-name}} has been locked.\n        |\n            Best Regards,\n            WSO2 Identity Server Team\n            http://www.wso2.com\n        ',-1234),(1209,'idleAccountReminder','WSO2 Carbon - Your account is inactive|\n            Hi {{user.claim.givenname}},\n\n            It looks as though you haven\'t signed in to your account for quite a while. Please sign in to your account if you\'d like to keep your account active.\n        |\n            Best Regards,\n            WSO2 Identity Server Team\n            http://www.wso2.com\n        ',-1234),(1210,'accountEnable','WSO2 Carbon - Your account enabled|\n            Hi {{user.claim.givenname}},\n\n            Please note that the account registered with us with the user name : {{user-name}} has been enabled.\n        |\n            Best Regards,\n            WSO2 Identity Server Team\n            http://www.wso2.com\n        ',-1234),(1211,'askPassword','WSO2 Carbon - Password Change for New Account|\n            Hi {{user.claim.givenname}},\n\n            Please change your password for the newly created account : {{user-name}}. Please click the link below to\n            create the password.\n\n            https://localhost:9443/accountrecoveryendpoint/confirmrecovery.do?confirmation={{confirmation-code}}&userstoredomain={{userstore-domain}}&username={{url:user-name}}&tenantdomain={{tenant-domain}}\n            If clicking the link doesn\'t seem to work, you can copy and paste the\n            link into your browser\'s address window.\n        |\n            Best Regards,\n            WSO2 Carbon Team\n            http://www.wso2.com\n        ',-1234),(1212,'accountUnLock','WSO2 Carbon - Your account unlocked|\n            Hi {{user.claim.givenname}},\n\n            Please note that the account registered with us with the user name : {{user-name}} has been unlocked.\n        |\n            Best Regards,\n            WSO2 Identity Server Team\n            http://www.wso2.com\n        ',-1234),(1213,'adminforcedpasswordreset','WSO2 - Admin Forced Password Reset|\n            Hi {{user.claim.givenname}},\n\n            Please change your password for the account : {{user-name}}. Please click the link below to\n            change the password.\n\n            https://localhost:9443/accountrecoveryendpoint/confirmrecovery.do?confirmation={{confirmation-code}}&userstoredomain={{userstore-domain}}&username={{url:user-name}}&tenantdomain={{tenant-domain}}\n\n            If clicking the link doesn\'t seem to work, you can copy and paste the\n            link into your browser\'s address window.\n        |\n            Best Regards,\n            WSO2 Carbon Team\n            http://www.wso2.com\n        ',-1234),(1214,'otp','WSO2 Carbon - One Time Password Reset|\n            Hi {{user.claim.givenname}},\n\n            Please use the password {{otp-password}} as the new password for your next login.\n        |\n            Best Regards,\n            WSO2 Identity Server Team\n            http://www.wso2.com\n        ',-1234),(1215,'resendAccountConfirmation','WSO2 Carbon - Resend Account Confirmation|\n            Hi {{user.claim.givenname}},\n\n            You have created an account with following user name\n\n            User Name: {{user-name}}\n\n            Please click the following link to unlock. If clicking the link doesn\'t seem to work, you can copy and paste\n            the\n            link into your browser\'s address window.\n\n            https://localhost:9443/accountrecoveryendpoint/confirmregistration.do?confirmation={{confirmation-code}}&userstoredomain={{userstore-domain}}&username={{url:user-name}}&tenantdomain={{tenant-domain}}\n        |\n            Best Regards,\n            WSO2 Identity Server Team\n            http://www.wso2.com\n        ',-1234),(1216,'phone','phone_number,phone_number_verified',-1234),(1217,'address','address,street',-1234),(1218,'email','email,email_verified',-1234),(1219,'profile','name,family_name,given_name,middle_name,nickname,preferred_username,profile,picture,website,\n            gender,birthdate,zoneinfo,locale,updated_at',-1234),(1220,'openid','sub,email,email_verified,name,family_name,given_name,middle_name,nickname,preferred_username,profile,picture,\n            website,gender,birthdate,zoneinfo,locale,updated_at,phone_number,phone_number_verified,address,street',-1234),(1221,'locale','en_US',-1234),(1222,'questionId','question1',-1234),(1223,'questionSetId','http://wso2.org/claims/challengeQuestion1',-1234),(1224,'locale','en_US',-1234),(1225,'questionId','question2',-1234),(1226,'questionSetId','http://wso2.org/claims/challengeQuestion1',-1234),(1227,'locale','en_US',-1234),(1228,'questionId','question3',-1234),(1229,'questionSetId','http://wso2.org/claims/challengeQuestion1',-1234),(1230,'locale','en_US',-1234),(1231,'questionId','question4',-1234),(1232,'questionSetId','http://wso2.org/claims/challengeQuestion1',-1234),(1233,'locale','en_US',-1234),(1234,'questionId','question1',-1234),(1235,'questionSetId','http://wso2.org/claims/challengeQuestion2',-1234),(1236,'locale','en_US',-1234),(1237,'questionId','question2',-1234),(1238,'questionSetId','http://wso2.org/claims/challengeQuestion2',-1234),(1239,'locale','en_US',-1234),(1240,'questionId','question3',-1234),(1241,'questionSetId','http://wso2.org/claims/challengeQuestion2',-1234),(1242,'locale','en_US',-1234),(1243,'questionId','question4',-1234),(1244,'questionSetId','http://wso2.org/claims/challengeQuestion2',-1234),(1245,'name','Security',-1234),(1246,'name','Password Management',-1234),(1247,'name','Manage',-1234),(1248,'name','Monitor',-1234),(1249,'name','Super Admin Permissions',-1234),(1250,'name','Admin Permissions',-1234),(1251,'name','Configure',-1234),(1252,'name','Identity Management',-1234),(1253,'name','Configure',-1234),(1254,'name','Login',-1234),(1255,'name','User Management',-1234),(1256,'name','Profile Management',-1234),(1257,'name','All Permissions',-1234),(1258,'name','Add',-1234),(1259,'name','Webapps',-1234),(1260,'name','Webapps',-1234),(1261,'name','API',-1234),(1262,'name','Create',-1234),(1263,'name','Publish',-1234),(1264,'name','Subscribe',-1234),(1265,'name','Manage Tiers',-1234),(1266,'name','Workflows',-1234),(1267,'name','API-M Admin',-1234),(1268,'name','Attachment',-1234),(1269,'name','Monitor BPEL',-1234),(1270,'name','BPEL',-1234),(1271,'name','Manage BPEL Processes',-1234),(1272,'name','Manage BPEL Process Instances',-1234),(1273,'name','Manage BPEL Packages',-1234),(1274,'name','Monitor BPEL',-1234),(1275,'name','Add BPEL',-1234),(1276,'name','Identity',-1234),(1277,'name','Claim',-1234),(1278,'name','Claim Management',-1234),(1279,'name','Create',-1234),(1280,'name','View',-1234),(1281,'name','Update',-1234),(1282,'name','Delete',-1234),(1283,'name','Topic',-1234),(1284,'name','Add Topic/SubTopic',-1234),(1285,'name','Browse Topic',-1234),(1286,'name','Delete Topic',-1234),(1287,'name','Purge Topic',-1234),(1288,'name','Event Streams',-1234),(1289,'name','Event Streams',-1234),(1290,'name','Configure',-1234),(1291,'name','Feature Management',-1234),(1292,'name','HumanTask',-1234),(1293,'name','Manage HumanTasks',-1234),(1294,'name','Manage HumanTask Packages',-1234),(1295,'name','View Task List',-1234),(1296,'name','Add HumanTask',-1234),(1297,'name','Authentication Management',-1234),(1298,'name','Session Management',-1234),(1299,'name','View',-1234),(1300,'name','Delete',-1234),(1301,'name','Application Management',-1234),(1302,'name','View',-1234),(1303,'name','Delete',-1234),(1304,'name','Update',-1234),(1305,'name','Create',-1234),(1306,'name','Claim Metadata Management',-1234),(1307,'name','Create',-1234),(1308,'name','View',-1234),(1309,'name','Update',-1234),(1310,'name','Delete',-1234),(1311,'name','Entitlement Management',-1234),(1312,'name','Entitlement PAP Management',-1234),(1313,'name','Entitlement Policy Management',-1234),(1314,'name','Create',-1234),(1315,'name','View',-1234),(1316,'name','Update',-1234),(1317,'name','Delete',-1234),(1318,'name','Publish',-1234),(1319,'name','Demote',-1234),(1320,'name','Enable',-1234),(1321,'name','Rollback',-1234),(1322,'name','Order',-1234),(1323,'name','List',-1234),(1324,'name','Entitlement Subscriber Management',-1234),(1325,'name','Create',-1234),(1326,'name','View',-1234),(1327,'name','Update',-1234),(1328,'name','Delete',-1234),(1329,'name','List',-1234),(1330,'name','Entitlement PDP Management',-1234),(1331,'name','Manage',-1234),(1332,'name','View',-1234),(1333,'name','Test',-1234),(1334,'name','Entitlement PEP Management',-1234),(1335,'name','Identity Management',-1234),(1336,'name','Create',-1234),(1337,'name','View',-1234),(1338,'name','Update',-1234),(1339,'name','Delete',-1234),(1340,'name','PEP',-1234),(1341,'name','Identity Provisioning',-1234),(1342,'name','User',-1234),(1343,'name','Association',-1234),(1344,'name','Create',-1234),(1345,'name','View',-1234),(1346,'name','Update',-1234),(1347,'name','Delete',-1234),(1348,'name','User Profile Management',-1234),(1349,'name','Create',-1234),(1350,'name','View',-1234),(1351,'name','Update',-1234),(1352,'name','Delete',-1234),(1353,'name','User Store Management',-1234),(1354,'name','User Store Configuration Management',-1234),(1355,'name','Create',-1234),(1356,'name','View',-1234),(1357,'name','Update',-1234),(1358,'name','Delete',-1234),(1359,'name','User Store Count Management',-1234),(1360,'name','Create',-1234),(1361,'name','View',-1234),(1362,'name','Update',-1234),(1363,'name','Delete',-1234),(1364,'name','Workflow Management',-1234),(1365,'name','BPS Profiles',-1234),(1366,'name','Create',-1234),(1367,'name','View',-1234),(1368,'name','Update',-1234),(1369,'name','Delete',-1234),(1370,'name','Workflows',-1234),(1371,'name','Create',-1234),(1372,'name','View',-1234),(1373,'name','Update',-1234),(1374,'name','Delete',-1234),(1375,'name','Associations',-1234),(1376,'name','Create',-1234),(1377,'name','View',-1234),(1378,'name','Update',-1234),(1379,'name','Delete',-1234),(1380,'name','Monitor',-1234),(1381,'name','View',-1234),(1382,'name','Delete',-1234),(1383,'name','Identity Provider Management',-1234),(1384,'name','View',-1234),(1385,'name','Delete',-1234),(1386,'name','Update',-1234),(1387,'name','Create',-1234),(1388,'name','Logging',-1234),(1389,'name','Logs',-1234),(1390,'name','Metrics',-1234),(1391,'name','Module',-1234),(1392,'name','Module',-1234),(1393,'name','Configure Data Sources',-1234),(1394,'name','User Profiles',-1234),(1395,'name','Resources',-1234),(1396,'name','Browse',-1234),(1397,'name','Notifications',-1234),(1398,'name','Extensions',-1234),(1399,'name','Add',-1234),(1400,'name','List',-1234),(1401,'name','Search',-1234),(1402,'name','Basic',-1234),(1403,'name','Advanced',-1234),(1404,'name','Key Store Management',-1234),(1405,'name','Create',-1234),(1406,'name','View',-1234),(1407,'name','Update',-1234),(1408,'name','Delete',-1234),(1409,'name','Security Management',-1234),(1410,'name','Create',-1234),(1411,'name','View',-1234),(1412,'name','Update',-1234),(1413,'name','Delete',-1234),(1414,'name','STS Management',-1234),(1415,'name','Create',-1234),(1416,'name','View',-1234),(1417,'name','Update',-1234),(1418,'name','Delete',-1234),(1419,'name','Server Admin',-1234),(1420,'name','Home Page',-1234),(1421,'name','Services',-1234),(1422,'name','Services',-1234),(1423,'name','Manage',-1234),(1424,'name','Monitor',-1234),(1425,'name','Tenants',-1234),(1426,'name','Modify',-1234),(1427,'name','Tenants',-1234),(1428,'name','List',-1234),(1429,'name','Theme',-1234),(1430,'name','User Management',-1234),(1431,'name','Create',-1234),(1432,'name','View',-1234),(1433,'name','List',-1234),(1434,'name','Update',-1234),(1435,'name','Delete',-1234),(1436,'name','Role Management',-1234),(1437,'name','Create',-1234),(1438,'name','View',-1234),(1439,'name','Update',-1234),(1440,'name','Delete',-1234),(1441,'log4j.file.not.found','true',-1234),(1442,'wso2carbon.system.log.last.modified','1483689896000',-1234),(1443,'subPath','/_system/config',-1234),(1444,'author','wso2.system.user',-1234),(1445,'target','gov',-1234),(1446,'path','/_system/config',-1234),(1447,'Protocol.Name','ws',-1234),(1448,'Transport.Enabled','false',-1234),(1449,'bundleContext-root','/',-1234),(1450,'host-name','172.18.0.1',-1234),(1451,'service-path','services',-1234),(1452,'EnableMessageTrace','false',-1234),(1453,'EnableDumpMessageBody','false',-1234),(1454,'EnableLogging','false',-1234),(1455,'EnablePublishToBAM','false',-1234),(1456,'name','APIs',-1234),(1457,'name','Add',-1234),(1458,'name','List',-1234),(1459,'name','APIs',-1234),(1460,'name','Documents',-1234),(1461,'name','Add',-1234),(1462,'name','List',-1234),(1463,'name','Documents',-1234),(1464,'name','Providers',-1234),(1465,'name','Add',-1234),(1466,'name','List',-1234),(1467,'name','Providers',-1234),(1468,'name','Replies',-1234),(1469,'name','Add',-1234),(1470,'name','List',-1234),(1471,'name','Replies',-1234),(1472,'name','Topics',-1234),(1473,'name','Add',-1234),(1474,'name','List',-1234),(1475,'name','Topics',-1234),(1476,'name','Queue',-1234),(1477,'name','Add',-1234),(1478,'name','Browse',-1234),(1479,'name','Delete',-1234),(1480,'name','Purge',-1234),(1481,'name','Dead Letter Channel',-1234),(1482,'name','Browse',-1234),(1483,'name','Delete',-1234),(1484,'name','Restore',-1234),(1485,'name','Reroute',-1234),(1486,'name','Subscription',-1234),(1487,'name','ViewQueueSubscriptions',-1234),(1488,'name','ViewTopicSubscriptions',-1234),(1489,'name','CloseQueueSubscriptions',-1234),(1490,'name','CloseTopicSubscriptions',-1234),(1491,'name','Cluster Information',-1234),(1492,'name','Nodes',-1234),(1493,'name','Add',-1234),(1494,'name','Details',-1234),(1495,'name','Delete',-1234),(1496,'name','Publish',-1234),(1497,'name','WSO2 Event',-1234),(1498,'name','Event Flow',-1234),(1499,'name','Event processor template deploy',-1234),(1500,'name','Event Simulator',-1234),(1501,'name','Event Monitor',-1234),(1502,'name','Govern',-1234),(1503,'name','Lifecycles',-1234),(1504,'name','Generic Artifacts',-1234),(1505,'name','Add',-1234),(1506,'name','List',-1234),(1507,'name','Governance',-1234),(1508,'name','Generic Artifacts',-1234),(1509,'name','Manage RXT',-1234),(1510,'name','Lifecycles',-1234),(1511,'name','Metadata',-1234),(1512,'name','Inbound Endpoints',-1234),(1513,'name','Manage',-1234),(1514,'name','Mediation',-1234),(1515,'name','Mediation',-1234),(1516,'name','Configure ntask integration',-1234),(1517,'name','Configure ESB ntask',-1234),(1518,'name','Priority Executor',-1234),(1519,'name','Community Features',-1234),(1520,'name','Associations',-1234),(1521,'name','WS-API',-1234),(1522,'name','Siddhi Try-it',-1234),(1523,'name','Schedule Tasks',-1234),(1524,'name','Tenant-Usage',-1234),(1525,'name','Tenant-Usage',-1234),(1526,'DESCRIPTION','Default Configuration',-1234),(1527,'CREATED','true',-1234),(1528,'ACTIVE','true',-1234),(1529,'wso2carbon.system.log.last.modified','1486026696000',-1234),(1530,'Name','tmp_172_18_0_1_44008_1',-1234),(1531,'createdTime','2017-12-11T13:40:25.120+05:30',-1234),(1532,'Owner','admin',-1234),(1533,'userCount','1',-1234),(1534,'createdFrom','amqp',-1234),(1535,'updatedTime','2017-12-11T13:40:25.149+05:30',-1234),(1536,'Name','tmp_172_18_0_1_44008_1',-1234),(1537,'createdTime','2017-12-11+05:30',-1234),(1538,'Owner','admin',-1234),(1539,'Protocol.Name','ws',-1234),(1540,'Transport.Enabled','false',-1234),(1541,'Protocol.Name','wss',-1234),(1542,'Transport.Enabled','false',-1234),(1543,'Protocol.Name','wss',-1234),(1544,'Transport.Enabled','false',-1234),(1545,'doSignResponse','true',-1234),(1546,'AttributeConsumingServiceIndex','',-1234),(1547,'EnableAttributesByDefault','false',-1234),(1548,'doSingleLogout','true',-1234),(1549,'IdPInitSLOEnabled','false',-1234),(1550,'AssertionQueryRequestProfileEnabled','false',-1234),(1551,'SupportedAssertionQueryRequestTypes',NULL,-1234),(1552,'loginPageURL',NULL,-1234),(1553,'SAMLSSOAssertionConsumerURLs','https://localhost:9443/publisher/jagg/jaggery_acs.jag',-1234),(1554,'Issuer','API_PUBLISHER',-1234),(1555,'doSignAssertions','true',-1234),(1556,'digestAlgorithm','http://www.w3.org/2000/09/xmldsig#sha1',-1234),(1557,'doValidateSignatureInRequests','false',-1234),(1558,'EnableNameIDClaimUri','false',-1234),(1559,'IdPInitSSOEnabled','false',-1234),(1560,'DefaultSAMLSSOAssertionConsumerURL','https://localhost:9443/publisher/jagg/jaggery_acs.jag',-1234),(1561,'doEnableEncryptedAssertion','false',-1234),(1562,'NameIDFormat','urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress',-1234),(1563,'signingAlgorithm','http://www.w3.org/2000/09/xmldsig#rsa-sha1',-1234),(1564,'IssuerCertAlias',NULL,-1234),(1565,'doSignResponse','true',-1234),(1566,'AttributeConsumingServiceIndex','',-1234),(1567,'EnableAttributesByDefault','false',-1234),(1568,'doSingleLogout','true',-1234),(1569,'IdPInitSLOEnabled','false',-1234),(1570,'AssertionQueryRequestProfileEnabled','false',-1234),(1571,'SupportedAssertionQueryRequestTypes',NULL,-1234),(1572,'loginPageURL',NULL,-1234),(1573,'SAMLSSOAssertionConsumerURLs','https://localhost:9443/store/jagg/jaggery_acs.jag',-1234),(1574,'Issuer','API_STORE',-1234),(1575,'doSignAssertions','true',-1234),(1576,'digestAlgorithm','http://www.w3.org/2000/09/xmldsig#sha1',-1234),(1577,'doValidateSignatureInRequests','false',-1234),(1578,'EnableNameIDClaimUri','false',-1234),(1579,'IdPInitSSOEnabled','false',-1234),(1580,'DefaultSAMLSSOAssertionConsumerURL','https://localhost:9443/store/jagg/jaggery_acs.jag',-1234),(1581,'doEnableEncryptedAssertion','false',-1234),(1582,'NameIDFormat','urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress',-1234),(1583,'signingAlgorithm','http://www.w3.org/2000/09/xmldsig#rsa-sha1',-1234),(1584,'IssuerCertAlias',NULL,-1234),(1585,'bundleContext-root','/',-1234),(1586,'host-name','172.18.0.1',-1234),(1587,'service-path','services',-1234),(1588,'wso2carbon.system.log.pattern','[%d] %5p - %x %m {%c}%n',-1234),(1589,'Name','tmp_172_18_0_1_44720_1',-1234),(1590,'createdTime','2017-12-11T14:04:07.380+05:30',-1234),(1591,'Owner','admin',-1234),(1592,'userCount','1',-1234),(1593,'createdFrom','amqp',-1234),(1594,'updatedTime','2017-12-11T14:04:07.402+05:30',-1234),(1595,'Name','tmp_172_18_0_1_44720_1',-1234),(1596,'createdTime','2017-12-11+05:30',-1234),(1597,'Owner','admin',-1234),(1598,'resultType','TagSummary',-1234),(1599,'resultType','Resource',-1234),(1600,'resultType','ResourceUUID',-1234),(1601,'resource.source','remote',-1234),(1602,'registry.lifecycle_history.order','0',-1234),(1603,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','status:Created',-1234),(1604,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','name:Requires re-subscription when publish the API',-1234),(1605,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','value:false',-1234),(1606,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','order:1',-1234),(1607,'registry.LC.name.APILifeCycle','APILifeCycle',-1234),(1608,'registry.lifecycle.APILifeCycle.state','Created',-1234),(1609,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item.permission','registry.custom_lifecycle.checklist.option.APILifeCycle.0.item.permission',-1234),(1610,'registry.Aspects','APILifeCycle',-1234),(1611,'resource.source','remote',-1234),(1612,'registry.lifecycle.APILifeCycle.lastStateUpdatedTime','2017-12-11 14:17:19.364',-1234),(1613,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item.permission','registry.custom_lifecycle.checklist.option.APILifeCycle.1.item.permission',-1234),(1614,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','status:Created',-1234),(1615,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','name:Deprecate old versions after publish the API',-1234),(1616,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','value:false',-1234),(1617,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','order:0',-1234),(1618,'registry.LC.name','APILifeCycle',-1234),(1619,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','status:Created',-1234),(1620,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','name:Requires re-subscription when publish the API',-1234),(1621,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','value:false',-1234),(1622,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','order:1',-1234),(1623,'registry.LC.name.APILifeCycle','APILifeCycle',-1234),(1624,'registry.lifecycle.APILifeCycle.state','Created',-1234),(1625,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item.permission','registry.custom_lifecycle.checklist.option.APILifeCycle.0.item.permission',-1234),(1626,'registry.Aspects','APILifeCycle',-1234),(1627,'registry.lifecycle.APILifeCycle.lastStateUpdatedTime','2017-12-11 14:17:19.364',-1234),(1628,'resource.source','remote',-1234),(1629,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item.permission','registry.custom_lifecycle.checklist.option.APILifeCycle.1.item.permission',-1234),(1630,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','status:Created',-1234),(1631,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','name:Deprecate old versions after publish the API',-1234),(1632,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','value:false',-1234),(1633,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','order:0',-1234),(1634,'registry.LC.name','APILifeCycle',-1234),(1635,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','status:Created',-1234),(1636,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','name:Requires re-subscription when publish the API',-1234),(1637,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','value:false',-1234),(1638,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','order:1',-1234),(1639,'registry.LC.name.APILifeCycle','APILifeCycle',-1234),(1640,'STATUS','CREATED',-1234),(1641,'registry.lifecycle.APILifeCycle.state','Created',-1234),(1642,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item.permission','registry.custom_lifecycle.checklist.option.APILifeCycle.0.item.permission',-1234),(1643,'registry.Aspects','APILifeCycle',-1234),(1644,'registry.lifecycle.APILifeCycle.lastStateUpdatedTime','2017-12-11 14:17:19.364',-1234),(1645,'resource.source','remote',-1234),(1646,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item.permission','registry.custom_lifecycle.checklist.option.APILifeCycle.1.item.permission',-1234),(1647,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','status:Created',-1234),(1648,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','name:Deprecate old versions after publish the API',-1234),(1649,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','value:false',-1234),(1650,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','order:0',-1234),(1651,'registry.LC.name','APILifeCycle',-1234),(1652,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','status:Created',-1234),(1653,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','name:Requires re-subscription when publish the API',-1234),(1654,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','value:false',-1234),(1655,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','order:1',-1234),(1656,'registry.LC.name.APILifeCycle','APILifeCycle',-1234),(1657,'STATUS','CREATED',-1234),(1658,'registry.lifecycle.APILifeCycle.state','Created',-1234),(1659,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item.permission','registry.custom_lifecycle.checklist.option.APILifeCycle.0.item.permission',-1234),(1660,'registry.Aspects','APILifeCycle',-1234),(1661,'registry.lifecycle.APILifeCycle.lastStateUpdatedTime','2017-12-11 14:17:19.364',-1234),(1662,'resource.source','remote',-1234),(1663,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item.permission','registry.custom_lifecycle.checklist.option.APILifeCycle.1.item.permission',-1234),(1664,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','status:Created',-1234),(1665,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','name:Deprecate old versions after publish the API',-1234),(1666,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','value:false',-1234),(1667,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','order:0',-1234),(1668,'registry.LC.name','APILifeCycle',-1234),(1669,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','status:Created',-1234),(1670,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','name:Requires re-subscription when publish the API',-1234),(1671,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','value:false',-1234),(1672,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','order:1',-1234),(1673,'registry.LC.name.APILifeCycle','APILifeCycle',-1234),(1674,'STATUS','CREATED',-1234),(1675,'registry.lifecycle.APILifeCycle.state','Created',-1234),(1676,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item.permission','registry.custom_lifecycle.checklist.option.APILifeCycle.0.item.permission',-1234),(1677,'registry.Aspects','APILifeCycle',-1234),(1678,'registry.lifecycle.APILifeCycle.lastStateUpdatedTime','2017-12-11 14:17:19.364',-1234),(1679,'resource.source','remote',-1234),(1680,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item.permission','registry.custom_lifecycle.checklist.option.APILifeCycle.1.item.permission',-1234),(1681,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','status:Created',-1234),(1682,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','name:Deprecate old versions after publish the API',-1234),(1683,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','value:false',-1234),(1684,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','order:0',-1234),(1685,'registry.LC.name','APILifeCycle',-1234),(1686,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','status:Created',-1234),(1687,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','name:Requires re-subscription when publish the API',-1234),(1688,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','value:false',-1234),(1689,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','order:1',-1234),(1690,'registry.LC.name.APILifeCycle','APILifeCycle',-1234),(1691,'STATUS','CREATED',-1234),(1692,'registry.lifecycle.APILifeCycle.state','Created',-1234),(1693,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item.permission','registry.custom_lifecycle.checklist.option.APILifeCycle.0.item.permission',-1234),(1694,'registry.Aspects','APILifeCycle',-1234),(1695,'registry.lifecycle.APILifeCycle.lastStateUpdatedTime','2017-12-11 14:17:19.364',-1234),(1696,'resource.source','remote',-1234),(1697,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item.permission','registry.custom_lifecycle.checklist.option.APILifeCycle.1.item.permission',-1234),(1698,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','status:Created',-1234),(1699,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','name:Deprecate old versions after publish the API',-1234),(1700,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','value:false',-1234),(1701,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','order:0',-1234),(1702,'registry.LC.name','APILifeCycle',-1234),(1703,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','status:Created',-1234),(1704,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','name:Requires re-subscription when publish the API',-1234),(1705,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','value:false',-1234),(1706,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','order:1',-1234),(1707,'registry.LC.name.APILifeCycle','APILifeCycle',-1234),(1708,'STATUS','CREATED',-1234),(1709,'registry.lifecycle.APILifeCycle.state','Created',-1234),(1710,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item.permission','registry.custom_lifecycle.checklist.option.APILifeCycle.0.item.permission',-1234),(1711,'registry.Aspects','APILifeCycle',-1234),(1712,'registry.lifecycle.APILifeCycle.lastStateUpdatedTime','2017-12-11 14:17:19.364',-1234),(1713,'resource.source','remote',-1234),(1714,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item.permission','registry.custom_lifecycle.checklist.option.APILifeCycle.1.item.permission',-1234),(1715,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','status:Created',-1234),(1716,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','name:Deprecate old versions after publish the API',-1234),(1717,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','value:false',-1234),(1718,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','order:0',-1234),(1719,'registry.LC.name','APILifeCycle',-1234),(1720,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','status:Created',-1234),(1721,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','name:Requires re-subscription when publish the API',-1234),(1722,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','value:false',-1234),(1723,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','order:1',-1234),(1724,'registry.LC.name.APILifeCycle','APILifeCycle',-1234),(1725,'STATUS','CREATED',-1234),(1726,'registry.lifecycle.APILifeCycle.state','Created',-1234),(1727,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item.permission','registry.custom_lifecycle.checklist.option.APILifeCycle.0.item.permission',-1234),(1728,'registry.Aspects','APILifeCycle',-1234),(1729,'registry.lifecycle.APILifeCycle.lastStateUpdatedTime','2017-12-11 14:17:19.364',-1234),(1730,'resource.source','remote',-1234),(1731,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item.permission','registry.custom_lifecycle.checklist.option.APILifeCycle.1.item.permission',-1234),(1732,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','status:Created',-1234),(1733,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','name:Deprecate old versions after publish the API',-1234),(1734,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','value:false',-1234),(1735,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','order:0',-1234),(1736,'registry.LC.name','APILifeCycle',-1234),(1737,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','status:Created',-1234),(1738,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','name:Requires re-subscription when publish the API',-1234),(1739,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','value:false',-1234),(1740,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','order:1',-1234),(1741,'registry.LC.name.APILifeCycle','APILifeCycle',-1234),(1742,'STATUS','CREATED',-1234),(1743,'registry.lifecycle.APILifeCycle.state','Created',-1234),(1744,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item.permission','registry.custom_lifecycle.checklist.option.APILifeCycle.0.item.permission',-1234),(1745,'registry.Aspects','APILifeCycle',-1234),(1746,'registry.lifecycle.APILifeCycle.lastStateUpdatedTime','2017-12-11 14:17:19.364',-1234),(1747,'resource.source','remote',-1234),(1748,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item.permission','registry.custom_lifecycle.checklist.option.APILifeCycle.1.item.permission',-1234),(1749,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','status:Created',-1234),(1750,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','name:Deprecate old versions after publish the API',-1234),(1751,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','value:false',-1234),(1752,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','order:0',-1234),(1753,'registry.LC.name','APILifeCycle',-1234),(1754,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','status:Created',-1234),(1755,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','name:Requires re-subscription when publish the API',-1234),(1756,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','value:false',-1234),(1757,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','order:1',-1234),(1758,'registry.LC.name.APILifeCycle','APILifeCycle',-1234),(1759,'STATUS','CREATED',-1234),(1760,'registry.lifecycle.APILifeCycle.state','Created',-1234),(1761,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item.permission','registry.custom_lifecycle.checklist.option.APILifeCycle.0.item.permission',-1234),(1762,'registry.Aspects','APILifeCycle',-1234),(1763,'registry.lifecycle.APILifeCycle.lastStateUpdatedTime','2017-12-11 14:17:19.364',-1234),(1764,'resource.source','remote',-1234),(1765,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item.permission','registry.custom_lifecycle.checklist.option.APILifeCycle.1.item.permission',-1234),(1766,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','status:Created',-1234),(1767,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','name:Deprecate old versions after publish the API',-1234),(1768,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','value:false',-1234),(1769,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','order:0',-1234),(1770,'registry.LC.name','APILifeCycle',-1234),(1771,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','status:Created',-1234),(1772,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','name:Requires re-subscription when publish the API',-1234),(1773,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','value:false',-1234),(1774,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item','order:1',-1234),(1775,'registry.LC.name.APILifeCycle','APILifeCycle',-1234),(1776,'STATUS','PUBLISHED',-1234),(1777,'registry.lifecycle.APILifeCycle.state','Created',-1234),(1778,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item.permission','registry.custom_lifecycle.checklist.option.APILifeCycle.0.item.permission',-1234),(1779,'registry.Aspects','APILifeCycle',-1234),(1780,'registry.lifecycle.APILifeCycle.lastStateUpdatedTime','2017-12-11 14:17:19.364',-1234),(1781,'resource.source','remote',-1234),(1782,'registry.custom_lifecycle.checklist.option.APILifeCycle.1.item.permission','registry.custom_lifecycle.checklist.option.APILifeCycle.1.item.permission',-1234),(1783,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','status:Created',-1234),(1784,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','name:Deprecate old versions after publish the API',-1234),(1785,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','value:false',-1234),(1786,'registry.custom_lifecycle.checklist.option.APILifeCycle.0.item','order:0',-1234),(1787,'registry.LC.name','APILifeCycle',-1234),(1788,'registry.LC.name.APILifeCycle','APILifeCycle',-1234),(1789,'STATUS','PUBLISHED',-1234),(1790,'registry.lifecycle.APILifeCycle.state','Published',-1234),(1791,'registry.Aspects','APILifeCycle',-1234),(1792,'resource.source','remote',-1234),(1793,'registry.lifecycle.APILifeCycle.lastStateUpdatedTime','2017-12-11 14:17:19.364',-1234),(1794,'registry.LC.name','APILifeCycle',-1234),(1795,'registry.lifecycle_history.order','1',-1234);
/*!40000 ALTER TABLE `REG_PROPERTY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_RATING`
--

DROP TABLE IF EXISTS `REG_RATING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_RATING` (
  `REG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_RATING` int(11) NOT NULL,
  `REG_USER_ID` varchar(31) NOT NULL,
  `REG_RATED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_RATING`
--

LOCK TABLES `REG_RATING` WRITE;
/*!40000 ALTER TABLE `REG_RATING` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_RATING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_RESOURCE`
--

DROP TABLE IF EXISTS `REG_RESOURCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_RESOURCE` (
  `REG_PATH_ID` int(11) NOT NULL,
  `REG_NAME` varchar(256) DEFAULT NULL,
  `REG_VERSION` int(11) NOT NULL AUTO_INCREMENT,
  `REG_MEDIA_TYPE` varchar(500) DEFAULT NULL,
  `REG_CREATOR` varchar(31) NOT NULL,
  `REG_CREATED_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `REG_LAST_UPDATOR` varchar(31) DEFAULT NULL,
  `REG_LAST_UPDATED_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `REG_DESCRIPTION` varchar(1000) DEFAULT NULL,
  `REG_CONTENT_ID` int(11) DEFAULT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  `REG_UUID` varchar(100) NOT NULL,
  PRIMARY KEY (`REG_VERSION`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_FK_BY_PATH_ID` (`REG_PATH_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_FK_BY_CONTENT_ID` (`REG_CONTENT_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_IND_BY_NAME` (`REG_NAME`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_RESOURCE_IND_BY_PATH_ID_NAME` (`REG_PATH_ID`,`REG_NAME`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_RESOURCE_IND_BY_UUID` (`REG_UUID`) USING HASH,
  KEY `REG_RESOURCE_IND_BY_TENANT` (`REG_TENANT_ID`,`REG_UUID`) USING HASH,
  KEY `REG_RESOURCE_IND_BY_TYPE` (`REG_TENANT_ID`,`REG_MEDIA_TYPE`) USING HASH,
  KEY `REG_RESOURCE_HISTORY_IND_BY_PATH_ID_NAME` (`REG_PATH_ID`,`REG_NAME`,`REG_TENANT_ID`) USING HASH,
  CONSTRAINT `REG_RESOURCE_FK_BY_CONTENT_ID` FOREIGN KEY (`REG_CONTENT_ID`, `REG_TENANT_ID`) REFERENCES `REG_CONTENT` (`REG_CONTENT_ID`, `REG_TENANT_ID`),
  CONSTRAINT `REG_RESOURCE_FK_BY_PATH_ID` FOREIGN KEY (`REG_PATH_ID`, `REG_TENANT_ID`) REFERENCES `REG_PATH` (`REG_PATH_ID`, `REG_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=652 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_RESOURCE`
--

LOCK TABLES `REG_RESOURCE` WRITE;
/*!40000 ALTER TABLE `REG_RESOURCE` DISABLE KEYS */;
INSERT INTO `REG_RESOURCE` VALUES (1,NULL,1,NULL,'wso2.system.user','2017-12-11 08:08:17','wso2.system.user','2017-12-11 08:08:17',NULL,NULL,-1234,'a1c025d7-8e42-47e4-b580-b1836937b59f'),(2,NULL,2,NULL,'wso2.system.user','2017-12-11 08:08:17','wso2.system.user','2017-12-11 08:08:17',NULL,NULL,-1234,'82b67059-eec2-48b0-912d-beecaf0415bf'),(3,NULL,3,NULL,'wso2.system.user','2017-12-11 08:08:17','wso2.system.user','2017-12-11 08:08:17',NULL,NULL,-1234,'c398832d-f8e3-4d5a-b530-8b9bc38b37f4'),(4,NULL,4,NULL,'wso2.system.user','2017-12-11 08:08:17','wso2.system.user','2017-12-11 08:08:17',NULL,NULL,-1234,'87a4bfa7-ce17-4416-9e9a-d8ba194a7198'),(5,NULL,5,NULL,'wso2.system.user','2017-12-11 08:08:17','wso2.system.user','2017-12-11 08:08:17',NULL,NULL,-1234,'c46ddf7b-fd98-4abd-873a-e32f0f4232a7'),(6,NULL,6,NULL,'wso2.system.user','2017-12-11 08:08:17','wso2.system.user','2017-12-11 08:08:17',NULL,NULL,-1234,'b46b467c-94c0-40ec-a08b-9e5895e692ef'),(7,NULL,7,NULL,'wso2.system.user','2017-12-11 08:08:17','wso2.system.user','2017-12-11 08:08:17','This collection lists the media types available on the Registry Server. Before changing an existing media type, please make sure to alter existing resources/collections and related configuration details.',NULL,-1234,'2d2b5319-3a81-4bce-80b3-ed012b3f0111'),(8,NULL,8,NULL,'wso2.system.user','2017-12-11 08:08:17','wso2.system.user','2017-12-11 08:08:17','This collection contains the media Types available for resources on the Registry. Add, Edit or Delete properties to Manage Media Types.',NULL,-1234,'e99fa977-4d23-4d00-b7c3-dcb2345d0c33'),(8,'custom.ui',9,NULL,'wso2.system.user','2017-12-11 08:08:17','wso2.system.user','2017-12-11 08:08:17','This resource contains the media Types associated with custom user interfaces on the Registry. Add, Edit or Delete properties to Manage Media Types.',NULL,-1234,'db371edb-828c-4a14-b0d7-8e1d71960a84'),(8,'collection',10,NULL,'wso2.system.user','2017-12-11 08:08:17','wso2.system.user','2017-12-11 08:08:17','This resource contains the media Types associated with collections on the Registry. Add, Edit or Delete properties to Manage Media Types.',NULL,-1234,'bfb21b2d-6309-4b82-a11d-f928209931c8'),(9,NULL,11,NULL,'wso2.system.user','2017-12-11 08:08:17','wso2.system.user','2017-12-11 08:08:17','Collection which contains user-specific details.',NULL,-1234,'62273d4a-7241-4b66-9bec-596710fafb52'),(10,NULL,12,NULL,'wso2.system.user','2017-12-11 08:08:17','wso2.system.user','2017-12-11 08:08:17',NULL,NULL,-1234,'494115b6-f7c0-43c6-9eac-f9d7341266e8'),(11,NULL,13,NULL,'wso2.system.user','2017-12-11 08:08:17','wso2.system.user','2017-12-11 08:08:17',NULL,NULL,-1234,'6ee6f107-0558-4fe8-97b7-4faac1c0badb'),(12,NULL,14,NULL,'wso2.system.user','2017-12-11 08:08:17','wso2.system.user','2017-12-11 08:08:17','Collection which contains all the Service information',NULL,-1234,'f592abda-e59b-4d0e-a842-c38460595ef5'),(13,NULL,15,NULL,'wso2.system.user','2017-12-11 08:08:18','wso2.system.user','2017-12-11 08:08:18',NULL,NULL,-1234,'fbfe4333-7f06-4b13-b658-f7d51940c016'),(14,NULL,16,NULL,'wso2.system.user','2017-12-11 08:08:18','wso2.system.user','2017-12-11 08:08:18',NULL,NULL,-1234,'b2648437-b8c9-45ef-8b8b-0e3aea7b324d'),(14,'service',17,NULL,'wso2.system.user','2017-12-11 08:08:18','wso2.system.user','2017-12-11 08:08:18',NULL,NULL,-1234,'43c5f1e9-f048-48e7-b895-d24b6b5aef74'),(14,'service-schema',18,NULL,'wso2.system.user','2017-12-11 08:08:18','wso2.system.user','2017-12-11 08:08:18',NULL,NULL,-1234,'7afa11eb-ceba-4671-8f57-16ec19b9a34d'),(15,NULL,19,NULL,'wso2.system.user','2017-12-11 08:08:21','wso2.system.user','2017-12-11 08:08:21',NULL,NULL,-1234,'2be45950-176e-4e8d-bb9f-e36f07fb1e41'),(16,NULL,20,NULL,'wso2.system.user','2017-12-11 08:08:21','wso2.system.user','2017-12-11 08:08:21',NULL,NULL,-1234,'d266d487-b55e-4b74-8c08-c8967fd06d9f'),(16,'scenario1',21,'application/policy+xml','wso2.system.user','2017-12-11 08:08:21','wso2.system.user','2017-12-11 08:08:21',NULL,1,-1234,'5eda30bb-d738-49f3-bfa1-c17a9ac10784'),(16,'scenario2',22,'application/policy+xml','wso2.system.user','2017-12-11 08:08:21','wso2.system.user','2017-12-11 08:08:21',NULL,2,-1234,'36a6f77e-b7c9-4f5d-a50d-ec0e99556ecb'),(16,'scenario3',23,'application/policy+xml','wso2.system.user','2017-12-11 08:08:21','wso2.system.user','2017-12-11 08:08:21',NULL,3,-1234,'27bce808-8935-481d-92ec-c1477297943c'),(16,'scenario4',24,'application/policy+xml','wso2.system.user','2017-12-11 08:08:21','wso2.system.user','2017-12-11 08:08:21',NULL,4,-1234,'991375c4-b98c-47fd-8954-ec4d86c079df'),(16,'scenario5',25,'application/policy+xml','wso2.system.user','2017-12-11 08:08:21','wso2.system.user','2017-12-11 08:08:21',NULL,5,-1234,'a59b2183-ecf5-4da4-a122-3a6770629f52'),(16,'scenario6',26,'application/policy+xml','wso2.system.user','2017-12-11 08:08:21','wso2.system.user','2017-12-11 08:08:21',NULL,6,-1234,'8b9a5988-68fa-43f9-9e0d-eade369d2a50'),(16,'scenario7',27,'application/policy+xml','wso2.system.user','2017-12-11 08:08:21','wso2.system.user','2017-12-11 08:08:21',NULL,7,-1234,'ca26ff40-c90d-411f-a8b4-34e12a4cef96'),(16,'scenario8',28,'application/policy+xml','wso2.system.user','2017-12-11 08:08:22','wso2.system.user','2017-12-11 08:08:22',NULL,8,-1234,'904831fb-23da-42e9-9784-17d301e5716e'),(16,'scenario9',29,'application/policy+xml','wso2.system.user','2017-12-11 08:08:22','wso2.system.user','2017-12-11 08:08:22',NULL,9,-1234,'f991cc99-e0ef-41d3-88c3-f6db1031cced'),(16,'scenario10',30,'application/policy+xml','wso2.system.user','2017-12-11 08:08:22','wso2.system.user','2017-12-11 08:08:22',NULL,10,-1234,'ffe19a86-bd7a-4064-a114-65a96abeaed2'),(16,'scenario11',31,'application/policy+xml','wso2.system.user','2017-12-11 08:08:22','wso2.system.user','2017-12-11 08:08:22',NULL,11,-1234,'89e44e8e-eedf-4cc7-ac21-124c64e868e3'),(16,'scenario12',32,'application/policy+xml','wso2.system.user','2017-12-11 08:08:22','wso2.system.user','2017-12-11 08:08:22',NULL,12,-1234,'79d71d44-d119-48c1-a75c-fbc0ae53b160'),(16,'scenario13',33,'application/policy+xml','wso2.system.user','2017-12-11 08:08:22','wso2.system.user','2017-12-11 08:08:22',NULL,13,-1234,'20828d4c-c5b0-45e4-8278-781d16c59e9a'),(16,'scenario14',34,'application/policy+xml','wso2.system.user','2017-12-11 08:08:22','wso2.system.user','2017-12-11 08:08:22',NULL,14,-1234,'84b0b6a5-372c-45f4-91f8-676a68847b19'),(16,'scenario15',35,'application/policy+xml','wso2.system.user','2017-12-11 08:08:22','wso2.system.user','2017-12-11 08:08:22',NULL,15,-1234,'d5b59b49-3c80-48dc-8e01-3a745e8bbb02'),(16,'scenario20',36,'application/policy+xml','wso2.system.user','2017-12-11 08:08:22','wso2.system.user','2017-12-11 08:08:22',NULL,16,-1234,'24bb4b67-790b-4032-b7ab-f3ef141dd1b0'),(16,'scenario31',37,'application/policy+xml','wso2.system.user','2017-12-11 08:08:22','wso2.system.user','2017-12-11 08:08:22',NULL,17,-1234,'db1e6974-08b1-4412-9637-ca845463e11e'),(16,'scenario32',38,'application/policy+xml','wso2.system.user','2017-12-11 08:08:22','wso2.system.user','2017-12-11 08:08:22',NULL,18,-1234,'bf29f5c1-e476-4849-94f3-9b9c405d73c3'),(16,'scenario33',39,'application/policy+xml','wso2.system.user','2017-12-11 08:08:22','wso2.system.user','2017-12-11 08:08:22',NULL,19,-1234,'4c71b827-19c0-4c55-8d9c-ff47441444b2'),(16,'scenario34',40,'application/policy+xml','wso2.system.user','2017-12-11 08:08:22','wso2.system.user','2017-12-11 08:08:22',NULL,20,-1234,'331fe799-3136-4003-b810-8b16be83af02'),(17,NULL,41,NULL,'wso2.system.user','2017-12-11 08:08:22','wso2.system.user','2017-12-11 08:08:22',NULL,NULL,-1234,'25266b8f-4550-48ea-817a-869dfc8669a6'),(18,NULL,42,NULL,'wso2.system.user','2017-12-11 08:08:22','wso2.system.user','2017-12-11 08:08:22',NULL,NULL,-1234,'38c3dc9e-4791-4852-a389-2eeb2e09594b'),(19,NULL,43,NULL,'wso2.system.user','2017-12-11 08:08:22','wso2.system.user','2017-12-11 08:08:22',NULL,NULL,-1234,'a8d48c53-76d0-417e-8520-59d76e494f60'),(19,'carbon-primary-ks',44,NULL,'wso2.system.user','2017-12-11 08:08:22','wso2.system.user','2017-12-11 08:08:22',NULL,NULL,-1234,'c6784b89-d4c3-49f3-8628-0075c6d9dc53'),(20,NULL,45,NULL,'wso2.system.user','2017-12-11 08:08:26','wso2.system.user','2017-12-11 08:08:26',NULL,NULL,-1234,'3f61e48b-cba3-47e0-9372-4d58b9c7edc4'),(21,NULL,46,NULL,'wso2.system.user','2017-12-11 08:08:26','wso2.system.user','2017-12-11 08:08:26',NULL,NULL,-1234,'f5f70caf-f699-49d2-862f-d48a729859fd'),(21,'listener',47,NULL,'wso2.system.user','2017-12-11 08:08:26','wso2.system.user','2017-12-11 08:08:26',NULL,21,-1234,'52c42087-6a33-4c27-b7f6-9ea97328d678'),(22,NULL,48,NULL,'wso2.system.user','2017-12-11 08:08:26','wso2.system.user','2017-12-11 08:08:26',NULL,NULL,-1234,'39421e11-33e2-434f-9fb3-ea5b65964d92'),(22,'listener',49,NULL,'wso2.system.user','2017-12-11 08:08:26','wso2.system.user','2017-12-11 08:08:26',NULL,22,-1234,'0d4ed61c-5052-4378-a232-415ab2a48b39'),(23,NULL,50,NULL,'wso2.system.user','2017-12-11 08:08:26','wso2.system.user','2017-12-11 08:08:26',NULL,NULL,-1234,'05a4d526-6415-4de3-beff-1097b13277db'),(23,'listener',51,NULL,'wso2.system.user','2017-12-11 08:08:26','wso2.system.user','2017-12-11 08:08:26',NULL,23,-1234,'6ca2b315-c5a1-4e80-8ff7-e2d8075e4be5'),(21,'sender',52,NULL,'wso2.system.user','2017-12-11 08:08:26','wso2.system.user','2017-12-11 08:08:26',NULL,24,-1234,'12de85f9-6d6d-41cb-820b-af3ebf8de38a'),(22,'sender',53,NULL,'wso2.system.user','2017-12-11 08:08:26','wso2.system.user','2017-12-11 08:08:26',NULL,25,-1234,'9b87920b-6b79-4152-b97b-00e0336dc4b4'),(23,'sender',54,NULL,'wso2.system.user','2017-12-11 08:08:26','wso2.system.user','2017-12-11 08:08:26',NULL,26,-1234,'33800a46-8784-44d1-9478-bb66bc0bc32b'),(24,NULL,55,NULL,'wso2.system.user','2017-12-11 08:08:27','wso2.system.user','2017-12-11 08:08:27',NULL,NULL,-1234,'ea824f6c-40c7-4da9-a988-650b2bfd38ba'),(26,NULL,58,NULL,'admin','2017-12-11 08:08:30','admin','2017-12-11 08:08:30',NULL,NULL,-1234,'229b0c28-fde6-43d3-9dfc-a4e363692395'),(27,NULL,59,NULL,'wso2.system.user','2017-12-11 08:08:30','wso2.system.user','2017-12-11 08:08:30',NULL,NULL,-1234,'f08e3844-a005-482a-9f05-b68bd459af60'),(28,NULL,60,NULL,'wso2.system.user','2017-12-11 08:08:30','wso2.system.user','2017-12-11 08:08:30',NULL,NULL,-1234,'c87ff9b1-58af-4026-8cc6-6064e9ef7be8'),(28,'external-api-stores.xml',61,'application/xml','wso2.system.user','2017-12-11 08:08:30','wso2.system.user','2017-12-11 08:08:30',NULL,27,-1234,'14d01e0d-ee6d-4104-a4a3-458ee95ca129'),(29,NULL,62,NULL,'wso2.system.user','2017-12-11 08:08:30','wso2.system.user','2017-12-11 08:08:30',NULL,NULL,-1234,'53ab6c62-ce4f-47a9-b863-0fcfda37800b'),(29,'ga-config.xml',63,'application/xml','wso2.system.user','2017-12-11 08:08:30','wso2.system.user','2017-12-11 08:08:30',NULL,28,-1234,'840bf91b-b65c-4f41-b4c1-9112bbb68191'),(30,NULL,64,NULL,'wso2.system.user','2017-12-11 08:08:30','wso2.system.user','2017-12-11 08:08:30',NULL,NULL,-1234,'e6861258-eeba-4234-8830-c9baca7d482a'),(31,NULL,65,NULL,'wso2.system.user','2017-12-11 08:08:30','wso2.system.user','2017-12-11 08:08:30',NULL,NULL,-1234,'e8804217-fd7d-4976-a457-84773a2efd10'),(31,'tenant-conf.json',66,'application/json','wso2.system.user','2017-12-11 08:08:30','wso2.system.user','2017-12-11 08:08:30',NULL,29,-1234,'a9327e6d-9ab9-4e38-9196-86691e75e6e0'),(32,NULL,67,NULL,'wso2.system.user','2017-12-11 08:08:30','wso2.system.user','2017-12-11 08:08:30',NULL,NULL,-1234,'9f62001e-d766-4e1b-a96f-6a6a95b3e7d4'),(32,'workflow-extensions.xml',68,'workflow-config','wso2.system.user','2017-12-11 08:08:30','wso2.system.user','2017-12-11 08:08:30',NULL,30,-1234,'46204e80-4a11-4f57-b9d0-45266e1b1d82'),(32,'sign-up-config.xml',69,'signup-config','wso2.system.user','2017-12-11 08:08:30','wso2.system.user','2017-12-11 08:08:30',NULL,31,-1234,'deeea262-b960-4774-9cf8-d2613cd1d730'),(33,NULL,70,NULL,'wso2.system.user','2017-12-11 08:08:31','wso2.system.user','2017-12-11 08:08:31',NULL,NULL,-1234,'749495e2-3376-4398-9485-2e7027de824f'),(34,NULL,71,NULL,'wso2.system.user','2017-12-11 08:08:31','wso2.system.user','2017-12-11 08:08:31',NULL,NULL,-1234,'41797320-13cc-4c5b-a9c4-6cb68b989616'),(34,'updatedTime',72,NULL,'wso2.system.user','2017-12-11 08:08:31','wso2.system.user','2017-12-11 08:08:31',NULL,NULL,-1234,'27095e3c-b649-4dde-b42f-70f1dbc55037'),(35,NULL,73,NULL,'wso2.system.user','2017-12-11 08:08:31','wso2.system.user','2017-12-11 08:08:31',NULL,NULL,-1234,'9e6470f5-e9ac-4792-8ad5-590c41297336'),(36,NULL,74,NULL,'wso2.system.user','2017-12-11 08:08:31','wso2.system.user','2017-12-11 08:08:31',NULL,NULL,-1234,'c6f7ede8-c6b1-4d4a-9c58-6e4368241b22'),(35,'topicIndex',75,NULL,'wso2.system.user','2017-12-11 08:08:31','wso2.system.user','2017-12-11 08:08:31',NULL,NULL,-1234,'955a7371-0a60-4e87-a6cb-71b301ee682a'),(37,NULL,76,NULL,'wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,NULL,-1234,'93771551-118c-46f4-bd46-9b114d42bcbb'),(38,NULL,77,NULL,'wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,NULL,-1234,'51603b22-6526-4112-b039-6b5eedef6c84'),(39,NULL,78,NULL,'wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,NULL,-1234,'ad4e162a-0a40-4917-a23d-347933807c17'),(39,'en_us',79,'tag','wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,32,-1234,'cdfb3ea4-abd9-48c3-ac3f-87671c053f77'),(40,NULL,80,NULL,'wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,NULL,-1234,'0e8bd118-676e-4067-8a5d-651964534594'),(40,'en_us',81,'tag','wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,33,-1234,'0119744c-dbce-4828-82c0-9dc472df8e7c'),(41,NULL,82,NULL,'wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,NULL,-1234,'74fb0966-85b0-47c6-8443-9376f5135f2d'),(41,'en_us',83,'tag','wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,34,-1234,'e8788210-f1e8-49a6-b720-61f4d813d4b8'),(42,NULL,84,NULL,'wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,NULL,-1234,'12321a9e-fe42-4525-9a1e-adaca718fe28'),(42,'en_us',85,'tag','wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,35,-1234,'70c11ad4-6576-4976-8b21-efaa9f5c50a2'),(43,NULL,86,NULL,'wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,NULL,-1234,'8b79726c-d7c5-45ca-a72b-be9660a796f6'),(43,'en_us',87,'tag','wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,36,-1234,'0f385aa2-adc7-47d2-bfd8-5da89ca0a510'),(44,NULL,88,NULL,'wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,NULL,-1234,'9d49a687-b0ce-48e1-82aa-e48ff37758cf'),(44,'en_us',89,'tag','wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,37,-1234,'2688a7eb-0b77-4723-aa1f-805b5772498f'),(45,NULL,90,NULL,'wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,NULL,-1234,'1d9c6193-bc1d-464e-bae3-5d5c2e35da12'),(45,'en_us',91,'tag','wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,38,-1234,'93611c9e-1100-46b9-97b9-5595ef85541b'),(46,NULL,92,NULL,'wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,NULL,-1234,'e08e614d-064d-4010-a18e-dd880a54c7b1'),(46,'en_us',93,'tag','wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,39,-1234,'aae340cb-8e28-4184-b551-f91046f1f64b'),(47,NULL,94,NULL,'wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,NULL,-1234,'5252a4ac-3c18-4c37-84b1-1975ebd1d997'),(47,'en_us',95,'tag','wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,40,-1234,'51dad4f1-be01-4251-9b96-9b4e508f1d16'),(48,NULL,96,NULL,'wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,NULL,-1234,'7e739ef5-7037-43dc-800a-95ab3b1ba159'),(48,'en_us',97,'tag','wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,41,-1234,'f7e14f67-1f83-400b-80e0-756bbdc7b645'),(49,NULL,98,NULL,'wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,NULL,-1234,'0bce5ef3-c43a-4071-a359-c09939af1f61'),(49,'en_us',99,'tag','wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,42,-1234,'80d72ce2-9e5a-4232-976c-9e1b5f9988c3'),(50,NULL,100,NULL,'wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,NULL,-1234,'62906aa9-f65b-44df-a879-fa5098cb1245'),(50,'en_us',101,'tag','wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,43,-1234,'3ca80900-542a-4980-a8e7-2a7daba17681'),(51,NULL,102,NULL,'wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,NULL,-1234,'9d9ebd2e-3bd5-4d2b-9a56-904756240c61'),(51,'en_us',103,'tag','wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,44,-1234,'21fd2b82-b909-469a-8503-8f1dc8b1936c'),(52,NULL,104,NULL,'wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,NULL,-1234,'e176e490-3fe8-4986-a65b-387ec33262db'),(52,'en_us',105,'tag','wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,45,-1234,'83ff6615-1202-4226-b36f-be37e15e7bb7'),(53,NULL,106,NULL,'wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,NULL,-1234,'4c91cd1a-b4a9-4f4b-8abd-e8fbfa143f47'),(53,'en_us',107,'tag','wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,46,-1234,'435bbb4e-4c97-4246-92fd-1447dc35e34f'),(54,NULL,108,NULL,'wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,NULL,-1234,'f0505f11-948c-4ec1-8c8b-67d5706bc923'),(54,'en_us',109,'tag','wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,47,-1234,'23db06a6-24b8-4f8c-b64c-68e9c14af623'),(55,NULL,110,NULL,'wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,NULL,-1234,'7ecf9411-fb2c-4303-9860-82facbb5d27d'),(55,'en_us',111,'tag','wso2.system.user','2017-12-11 08:08:32','wso2.system.user','2017-12-11 08:08:32',NULL,48,-1234,'81ce2b93-73ae-41e4-81ce-cdd31f15b551'),(56,NULL,112,NULL,'wso2.system.user','2017-12-11 08:08:36','wso2.system.user','2017-12-11 08:08:36',NULL,NULL,-1234,'fe1d427f-e349-4875-9172-e7904290b089'),(57,NULL,113,NULL,'wso2.system.user','2017-12-11 08:08:36','wso2.system.user','2017-12-11 08:08:36',NULL,NULL,-1234,'43a87a30-3db4-449a-8dc8-6a65348e5e17'),(58,NULL,114,NULL,'wso2.system.user','2017-12-11 08:08:36','wso2.system.user','2017-12-11 08:08:36',NULL,NULL,-1234,'8899f79c-3d63-4b78-a59d-c24cd2d306dd'),(58,'PDP Subscriber',115,NULL,'wso2.system.user','2017-12-11 08:08:36','wso2.system.user','2017-12-11 08:08:36',NULL,NULL,-1234,'1c904729-a03c-4bdd-beef-661487ff61b8'),(59,NULL,116,NULL,'wso2.system.user','2017-12-11 08:08:36','wso2.system.user','2017-12-11 08:08:36',NULL,NULL,-1234,'dc964850-2ad5-46f5-a0fc-55b0830357e9'),(60,NULL,117,NULL,'wso2.system.user','2017-12-11 08:08:36','wso2.system.user','2017-12-11 08:08:36',NULL,NULL,-1234,'02e88a19-672a-4c6a-8f06-4c9b2dea44bf'),(61,'1',120,NULL,'wso2.system.user','2017-12-11 08:08:36','wso2.system.user','2017-12-11 08:08:36',NULL,49,-1234,'43a2843f-1980-4a43-88ae-1aea3c7bf698'),(61,NULL,121,NULL,'wso2.system.user','2017-12-11 08:08:36','wso2.system.user','2017-12-11 08:08:36',NULL,NULL,-1234,'9fab766e-ae4e-4bae-816d-b1483b5fb97e'),(62,'authn_time_and_scope_based_policy_template',124,NULL,'wso2.system.user','2017-12-11 08:08:36','wso2.system.user','2017-12-11 08:08:36',NULL,51,-1234,'7e064a7f-d6f7-45ba-a213-579eede37d57'),(63,'1',127,NULL,'wso2.system.user','2017-12-11 08:08:37','wso2.system.user','2017-12-11 08:08:37',NULL,52,-1234,'9df8a240-3f72-46d8-962c-191dbf63e357'),(63,NULL,128,NULL,'wso2.system.user','2017-12-11 08:08:36','wso2.system.user','2017-12-11 08:08:37',NULL,NULL,-1234,'7398dfee-4277-4955-ab3d-23e288234de6'),(62,'authn_time_based_policy_template',131,NULL,'wso2.system.user','2017-12-11 08:08:37','wso2.system.user','2017-12-11 08:08:37',NULL,54,-1234,'c91ef928-c8db-48d4-813d-2f63b5883e99'),(64,'1',134,NULL,'wso2.system.user','2017-12-11 08:08:37','wso2.system.user','2017-12-11 08:08:37',NULL,55,-1234,'a6e76550-5c54-41b7-9635-b2fe2742041d'),(64,NULL,135,NULL,'wso2.system.user','2017-12-11 08:08:37','wso2.system.user','2017-12-11 08:08:37',NULL,NULL,-1234,'deb6b420-dea4-4a5e-8b2e-e729435d596d'),(62,'provisioning_user_claim_based_policy_template',138,NULL,'wso2.system.user','2017-12-11 08:08:37','wso2.system.user','2017-12-11 08:08:37',NULL,57,-1234,'5a99a333-d1a5-4b1e-8229-932041f247c9'),(65,'1',141,NULL,'wso2.system.user','2017-12-11 08:08:38','wso2.system.user','2017-12-11 08:08:38',NULL,58,-1234,'b021b3d8-5c8c-4d48-9df0-8d0317ae9520'),(65,NULL,142,NULL,'wso2.system.user','2017-12-11 08:08:38','wso2.system.user','2017-12-11 08:08:38',NULL,NULL,-1234,'4f937450-eec1-4345-8810-2a60e9a3319a'),(62,'authn_role_based_policy_template',145,NULL,'wso2.system.user','2017-12-11 08:08:38','wso2.system.user','2017-12-11 08:08:38',NULL,60,-1234,'a4713b1f-84c2-403c-ba16-144db98976bc'),(66,'1',148,NULL,'wso2.system.user','2017-12-11 08:08:38','wso2.system.user','2017-12-11 08:08:38',NULL,61,-1234,'851dc4e8-146a-44d4-b932-f752e78ab886'),(66,NULL,149,NULL,'wso2.system.user','2017-12-11 08:08:38','wso2.system.user','2017-12-11 08:08:38',NULL,NULL,-1234,'b6e61ee3-a300-400d-835e-0b9c3fe3e612'),(62,'authn_user_claim_based_policy_template',152,NULL,'wso2.system.user','2017-12-11 08:08:38','wso2.system.user','2017-12-11 08:08:38',NULL,63,-1234,'217f82bb-7a0f-4654-a9f6-8d74da50c683'),(67,'1',155,NULL,'wso2.system.user','2017-12-11 08:08:38','wso2.system.user','2017-12-11 08:08:38',NULL,64,-1234,'410520b0-f929-465a-ac87-c4c907f110d2'),(67,NULL,156,NULL,'wso2.system.user','2017-12-11 08:08:38','wso2.system.user','2017-12-11 08:08:38',NULL,NULL,-1234,'0efc3d27-89f9-469d-ab83-50820b348e2f'),(62,'provisioning_role_based_policy_template',159,NULL,'wso2.system.user','2017-12-11 08:08:38','wso2.system.user','2017-12-11 08:08:38',NULL,66,-1234,'427796af-4496-40b9-9575-43660cc74b23'),(68,'1',162,NULL,'wso2.system.user','2017-12-11 08:08:38','wso2.system.user','2017-12-11 08:08:38',NULL,67,-1234,'47543f7b-9bab-44c3-8fc0-340d3cd16ca9'),(68,NULL,163,NULL,'wso2.system.user','2017-12-11 08:08:38','wso2.system.user','2017-12-11 08:08:38',NULL,NULL,-1234,'13b35d7a-a2c8-4cec-8068-312d0ebf249e'),(62,'authn_scope_based_policy_template',166,NULL,'wso2.system.user','2017-12-11 08:08:38','wso2.system.user','2017-12-11 08:08:38',NULL,69,-1234,'d3faa16e-c8f0-42a8-8758-12a301e045a2'),(69,'1',169,NULL,'wso2.system.user','2017-12-11 08:08:38','wso2.system.user','2017-12-11 08:08:38',NULL,70,-1234,'8589c755-8fa2-4b56-8b55-32d87d6ae5c1'),(69,NULL,170,NULL,'wso2.system.user','2017-12-11 08:08:38','wso2.system.user','2017-12-11 08:08:38',NULL,NULL,-1234,'3af5dc19-4107-41f0-b06b-156809e37cc5'),(62,'provisioning_time_based_policy_template',173,NULL,'wso2.system.user','2017-12-11 08:08:38','wso2.system.user','2017-12-11 08:08:38',NULL,72,-1234,'6b260253-7ed6-464f-a78a-4d82166ee389'),(70,'1',176,NULL,'wso2.system.user','2017-12-11 08:08:38','wso2.system.user','2017-12-11 08:08:38',NULL,73,-1234,'adf890e4-2fec-4377-9b98-f37ad6cd452c'),(70,NULL,177,NULL,'wso2.system.user','2017-12-11 08:08:38','wso2.system.user','2017-12-11 08:08:38',NULL,NULL,-1234,'e76876ae-b7db-49b8-9e97-68176eaf69c7'),(62,'authn_time_and_role_based_policy_template',180,NULL,'wso2.system.user','2017-12-11 08:08:38','wso2.system.user','2017-12-11 08:08:38',NULL,75,-1234,'8aa25c50-ab23-4361-b0db-4c3d79bed168'),(71,'1',183,NULL,'wso2.system.user','2017-12-11 08:08:39','wso2.system.user','2017-12-11 08:08:39',NULL,76,-1234,'ac4cd858-d199-4aa4-82ed-6dd072212c80'),(71,NULL,184,NULL,'wso2.system.user','2017-12-11 08:08:38','wso2.system.user','2017-12-11 08:08:39',NULL,NULL,-1234,'e6db90e4-d0a1-404e-9c78-29e200ed37ed'),(62,'authn_time_and_user_claim_based_policy_template',187,NULL,'wso2.system.user','2017-12-11 08:08:39','wso2.system.user','2017-12-11 08:08:39',NULL,78,-1234,'8e3466b6-246c-40a6-bcf8-442f84b294ab'),(72,'1',190,NULL,'wso2.system.user','2017-12-11 08:08:39','wso2.system.user','2017-12-11 08:08:39',NULL,79,-1234,'2b31097a-c5a2-4407-8c57-0f768578709e'),(72,NULL,191,NULL,'wso2.system.user','2017-12-11 08:08:39','wso2.system.user','2017-12-11 08:08:39',NULL,NULL,-1234,'669e2e60-a966-4735-a2a6-e0b31bf24db6'),(62,'provisioning_time_and_role_based_policy_template',194,NULL,'wso2.system.user','2017-12-11 08:08:39','wso2.system.user','2017-12-11 08:08:39',NULL,81,-1234,'beec2339-c984-4286-a23b-0ed46a303622'),(73,'1',197,NULL,'wso2.system.user','2017-12-11 08:08:39','wso2.system.user','2017-12-11 08:08:39',NULL,82,-1234,'b397af17-274e-44d5-a000-9481360c6be2'),(73,NULL,198,NULL,'wso2.system.user','2017-12-11 08:08:39','wso2.system.user','2017-12-11 08:08:39',NULL,NULL,-1234,'6d68a893-4f92-410f-aede-c335d4323c3b'),(62,NULL,199,NULL,'wso2.system.user','2017-12-11 08:08:36','wso2.system.user','2017-12-11 08:08:39',NULL,NULL,-1234,'7c1e8e49-b1b5-43ad-afa6-dad2727c89ea'),(62,'provisioning_time_and_user_claim_based_policy_template',201,NULL,'wso2.system.user','2017-12-11 08:08:39','wso2.system.user','2017-12-11 08:08:39',NULL,84,-1234,'20aca683-4dd2-40f6-afb4-1f1286d3f442'),(74,NULL,202,NULL,'wso2.system.user','2017-12-11 08:08:39','wso2.system.user','2017-12-11 08:08:39',NULL,NULL,-1234,'f66e18f3-ec7e-47d0-8a4b-fb70e54646ef'),(75,NULL,203,NULL,'wso2.system.user','2017-12-11 08:08:39','wso2.system.user','2017-12-11 08:08:39',NULL,NULL,-1234,'27e2d698-b27d-4e3d-b912-7cb332bd315d'),(75,'question0',204,NULL,'wso2.system.user','2017-12-11 08:08:39','wso2.system.user','2017-12-11 08:08:39',NULL,NULL,-1234,'7a1176e5-570f-43dd-938a-30fd48739651'),(75,'question1',205,NULL,'wso2.system.user','2017-12-11 08:08:39','wso2.system.user','2017-12-11 08:08:39',NULL,NULL,-1234,'fdbeaf3c-3ecf-4a01-ba3d-dd23b5a5cc46'),(75,'question2',206,NULL,'wso2.system.user','2017-12-11 08:08:39','wso2.system.user','2017-12-11 08:08:39',NULL,NULL,-1234,'d0bd9c23-9a74-4f9e-94ea-cb4902458a56'),(75,'question3',207,NULL,'wso2.system.user','2017-12-11 08:08:39','wso2.system.user','2017-12-11 08:08:39',NULL,NULL,-1234,'9a37e19b-daf2-4dd7-aacb-68e9901097c1'),(75,'question4',208,NULL,'wso2.system.user','2017-12-11 08:08:39','wso2.system.user','2017-12-11 08:08:39',NULL,NULL,-1234,'0e9f0f97-555a-44ae-86a9-f442f9ae7f41'),(75,'question5',209,NULL,'wso2.system.user','2017-12-11 08:08:39','wso2.system.user','2017-12-11 08:08:39',NULL,NULL,-1234,'c64b63c2-0559-4ad2-ac71-a36a89099183'),(75,'question6',210,NULL,'wso2.system.user','2017-12-11 08:08:39','wso2.system.user','2017-12-11 08:08:39',NULL,NULL,-1234,'c4bcebb0-45dd-487b-a6dc-2fdae4c04499'),(75,'question7',211,NULL,'wso2.system.user','2017-12-11 08:08:39','wso2.system.user','2017-12-11 08:08:39',NULL,NULL,-1234,'8e880036-1427-4f12-a338-d7418298c462'),(76,NULL,212,NULL,'wso2.system.user','2017-12-11 08:08:39','wso2.system.user','2017-12-11 08:08:39',NULL,NULL,-1234,'085c90d6-e4ab-4e8e-b61b-b6c7a6a7f036'),(76,'emailTemplate',213,NULL,'wso2.system.user','2017-12-11 08:08:39','wso2.system.user','2017-12-11 08:08:39',NULL,NULL,-1234,'ffb2a8e3-43e1-473d-9b28-72700dd1f59b'),(3,'oidc',214,NULL,'wso2.system.user','2017-12-11 08:08:39','wso2.system.user','2017-12-11 08:08:39',NULL,NULL,-1234,'d97725a1-8f36-44dc-beb9-6a5c18f08942'),(77,NULL,215,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'2b284f3f-c6c0-4232-812b-1b8159445d8b'),(78,NULL,216,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'463dfcc5-e258-4e62-915f-28e033fea859'),(79,NULL,217,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'90217bda-df1b-4c35-a511-beaabbae53ca'),(79,'en_us',218,'tag','wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,85,-1234,'760585e0-2eec-4874-bbd7-6ac81ba1ea9e'),(80,NULL,219,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'1c03dd61-7285-4741-bfb1-ab5565a963a3'),(80,'en_us',220,'tag','wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,86,-1234,'eb4d2648-4282-4e56-8a2c-ba56bff132a8'),(81,NULL,221,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'9ac5982a-f97a-4448-8ff3-a8d8a035bf5e'),(81,'en_us',222,'tag','wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,87,-1234,'9ccdc122-7c12-416e-a253-666e6a60c67b'),(82,NULL,223,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'eb33dbe6-4cfc-48db-a317-58cd8965c9ec'),(82,'en_us',224,'tag','wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,88,-1234,'a6923769-2416-4e8f-8a2e-9477775e0e67'),(83,NULL,225,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'3cf0a576-9c73-4ff0-b856-6b82fb5ada64'),(84,NULL,226,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'cb22352e-d8e9-42fc-85c7-d736121d4c27'),(84,'en_us',227,'tag','wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,89,-1234,'1736985b-868f-4a91-8c92-af6a03e0cef1'),(85,NULL,228,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'63c85b24-185e-4f2e-9d1f-756caac6c3cc'),(85,'en_us',229,'tag','wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,90,-1234,'6e72edb2-3cba-4e85-8138-5f7854c38d5e'),(86,NULL,230,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'fe7c0f59-a583-4e80-a621-ba24c67a4b59'),(86,'en_us',231,'tag','wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,91,-1234,'248dab1a-ba94-484b-98a8-a0fd622bca8c'),(87,NULL,232,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'7d9c1476-0da1-4b92-aee1-d619ef9f2b68'),(87,'en_us',233,'tag','wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,92,-1234,'ccd0092c-9366-4186-a440-1d3b70350a69'),(90,NULL,236,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'17430b5c-4eaa-4b05-af06-65ab3375bd1a'),(92,NULL,238,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'f49c4462-1225-42d6-9eb8-33df608aba2a'),(93,NULL,239,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'55793454-3939-4bae-9720-6a858b8b77f5'),(94,NULL,240,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'93fbc117-6e9a-4867-a6e8-9e430a8cb064'),(95,NULL,241,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'149d2231-8dd3-410f-b559-5f40f3117251'),(88,NULL,242,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'983d1d17-8ed0-4b16-ae9b-3a8799f6e1ba'),(89,NULL,243,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'444d3bb9-cdeb-449a-9b3c-ef2c5ad7d3b6'),(91,NULL,244,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'f7b9265f-0ed0-4df0-98e7-27a3c808b614'),(96,NULL,245,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'8c7ddb4d-e41b-4021-b0c0-167355e78b3b'),(97,NULL,246,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'9b0dcdea-97a6-4612-9e96-1b599fc5d195'),(98,NULL,247,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'aaa15902-57aa-4260-953b-bd95935b48fc'),(99,NULL,248,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'ef952661-4878-4365-b72b-216b0d006818'),(25,NULL,249,NULL,'admin','2017-12-11 08:08:30','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'4f6428c6-4493-485c-b6bf-c544de015cae'),(100,NULL,250,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'7d59cd23-a44c-44fa-b908-d9a7635c1b74'),(101,NULL,251,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'d4cb9de2-5f84-4833-9b35-ee2f17f472fd'),(102,NULL,252,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'6902df07-6c00-4386-8354-778acce58f6a'),(103,NULL,253,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'2b08c16e-7a72-4f09-ab35-1d1f5ca51699'),(104,NULL,254,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'293dcecb-c96c-4ec8-aa28-2cb2369bea2a'),(105,NULL,255,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'6cc83c51-8997-48a6-a17c-ed98eb8692f3'),(106,NULL,256,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'614b76ce-0eea-439f-a384-5acb0de06f1a'),(107,NULL,257,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'6c3d4a86-1fa4-406f-a15a-3b1908921324'),(108,NULL,258,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'d4c04e07-25d2-40b3-b743-6c149f99af93'),(109,NULL,259,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'72b00554-51b3-452a-a3ca-7aa257bd0e00'),(110,NULL,260,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'421d2573-2735-4c54-9883-83eeff553f6d'),(111,NULL,261,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'9475b7b7-78f2-4d1b-8280-fecdf9eae334'),(112,NULL,262,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'9e01e752-dad5-4b80-ba0b-55bb8c6556d0'),(113,NULL,263,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'eb7ed828-fa26-4004-b8db-b165b67be614'),(114,NULL,264,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'c3b44aac-4fd6-4119-9ef6-c2537a7bd284'),(115,NULL,265,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'2a41e085-f9a5-4ec5-90b7-c0d2e9dfbaa9'),(116,NULL,266,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'1351de0e-175b-4bdd-9374-edefaa180cf0'),(117,NULL,267,NULL,'wso2.system.user','2017-12-11 08:08:40','wso2.system.user','2017-12-11 08:08:40',NULL,NULL,-1234,'c3bdf83f-1ae8-4378-9b7a-404939bebaff'),(118,NULL,268,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'fd405ff7-7d94-4efc-a184-5fa1b3c3d7ba'),(119,NULL,269,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'b8bff1a7-9b9b-45f9-8c7c-bb3fd6bd32f4'),(120,NULL,270,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'4d9fe2f5-fb5d-4ade-a860-c540a50f61d1'),(121,NULL,271,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'4dab481b-fdb7-44d9-b6b6-c8104f22c314'),(122,NULL,272,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'9b5922ff-945f-49ae-9fc6-bca2c74dbcf0'),(123,NULL,273,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'34d12f34-0bbd-4e8e-baf7-fc5c02088b77'),(124,NULL,274,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'498e22c5-ab98-4db5-a45a-0f488963b144'),(125,NULL,275,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'a8a8b10b-0226-4d27-b785-18cf391a65a5'),(126,NULL,276,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'a1c9a32a-12a5-4d74-baf2-29a0e8ddc85c'),(127,NULL,277,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'cf451048-6972-4c0a-b4f9-2dce27e1e072'),(128,NULL,278,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'7ea370f8-a3ed-4f35-8e57-625c7f2634c3'),(129,NULL,279,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'7a12a6ee-51f1-4e9f-9a41-4949c0ba6aeb'),(130,NULL,280,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'26ed8b32-7027-4aef-8a93-e0406ca85270'),(131,NULL,281,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'f9e56940-8b7a-46c4-b23d-3c811cf356f1'),(132,NULL,282,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'ea1f346e-cfa5-4eac-b214-4578ac75b11a'),(133,NULL,283,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'829b9911-47fc-4fb9-82d9-1def323b3db1'),(134,NULL,284,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'0f3d7238-c8bd-4f53-96df-31a7abfaac20'),(135,NULL,285,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'00295605-51da-4e96-b1f4-cc60fdd22c62'),(136,NULL,286,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'4fca3a62-0273-4cca-b5cf-844c86b372e7'),(137,NULL,287,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'35559860-9998-466b-800f-b3241f7767e3'),(138,NULL,288,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'088cdd7f-dc05-4cd3-9657-293dd73903ac'),(139,NULL,289,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'0b50e7b6-4951-41f7-b5fe-dc88b4262700'),(140,NULL,290,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'b0f2b9cb-1ecd-460d-852c-bdb8ed734766'),(141,NULL,291,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'1f18a463-720e-4189-acec-247c525625d4'),(142,NULL,292,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'a4413810-a71f-4da5-86a4-cb82887f53d3'),(143,NULL,293,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'7e567ba2-3795-4c5f-b0ab-f2ba60b6c292'),(144,NULL,294,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'99f3c179-5214-4f35-ac58-73d0d9b8fae4'),(145,NULL,295,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'29dcd5b2-7237-40cc-a082-1671120d64a8'),(146,NULL,296,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'84d0c3e9-8ca8-41e0-9429-b4bc97a94129'),(147,NULL,297,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'3bef0720-6b5a-4cb5-a74e-622fff1cb382'),(148,NULL,298,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'8fd31dc2-b375-465d-9f40-ff17773b5a2e'),(149,NULL,299,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'aceed455-3ddc-453b-a90d-63e211836bfb'),(150,NULL,300,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'8f1fc08b-4f9f-4dae-a74a-9bfb807e4c67'),(151,NULL,301,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'e29e3b8c-10d3-44bb-8b60-e6239598fba0'),(152,NULL,302,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'3876e4c9-03e0-45ba-bf0e-0c79e1a742e8'),(153,NULL,303,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'675534c1-cfbd-4d42-9eca-87ed90aa21f2'),(154,NULL,304,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'83ade7d5-f1b0-414c-8d8a-23a8aa381004'),(155,NULL,305,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'aae66542-4b15-40ef-87e8-08c89bea04d9'),(156,NULL,306,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'71e4642e-96a8-448e-8432-af10f4395f56'),(157,NULL,307,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'9a4f7a12-8a65-431f-869d-8f1c57b72873'),(158,NULL,308,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'61be631a-48a9-4838-a38c-2ed8cb76fd5a'),(159,NULL,309,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'4aa94af6-f494-4919-ba3a-f8fa38cb0dc6'),(160,NULL,310,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'25a89626-6a11-442f-b471-4a4bd976da53'),(161,NULL,311,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'c007a18b-66d8-4dec-88b1-38d1d5045b61'),(162,NULL,312,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'70da9928-fdcf-4ed1-8264-6b158750353b'),(163,NULL,313,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'c85ba691-3d50-4aad-9319-913dfa4fa501'),(164,NULL,314,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'3dd13a82-d3f4-47d5-b6d9-36c4658761b2'),(165,NULL,315,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'895a4f78-8c72-42fa-aadf-f9de256f344d'),(166,NULL,316,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'a127dfd7-76e7-417a-84a4-d2c97d6675a8'),(167,NULL,317,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'d81b238d-c3b1-4cb4-aefa-7d87b7bacf4b'),(168,NULL,318,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'919cb65b-7594-4360-a188-b3acf1b66f4c'),(169,NULL,319,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'3614f2e6-0232-497c-b107-7feab6a14ab2'),(170,NULL,320,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'8fb3f6dd-d6b6-4242-b202-3ad3b1f76c61'),(171,NULL,321,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'e7ab7ed1-10f6-490f-be05-8f7afcd518f9'),(172,NULL,322,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'2affcba9-e02e-40df-a349-cf741e1d098d'),(173,NULL,323,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'e47941d1-76df-47b7-9328-83c37a0c094c'),(174,NULL,324,NULL,'wso2.system.user','2017-12-11 08:08:41','wso2.system.user','2017-12-11 08:08:41',NULL,NULL,-1234,'a1d26ee5-a461-4341-97e2-79c4e80ba500'),(175,NULL,325,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'58f21a57-743c-422c-b85f-0cb95bc2294f'),(176,NULL,326,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'73bcecc6-cd08-4591-b6aa-44da689ed762'),(177,NULL,327,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'c33062eb-104c-4f46-a90f-788b2790cf3c'),(178,NULL,328,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'c0c23c13-af58-4add-8903-2fe9d9932d94'),(179,NULL,329,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'0805470f-02c0-44b3-9a87-50be9209fcfe'),(180,NULL,330,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'f6c96b2c-3210-4133-8d43-62f11bfd7910'),(181,NULL,331,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'ff6a91ed-45fb-4fb7-97df-6c7a21e8b89a'),(182,NULL,332,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'09424f4d-af3c-4db1-93d8-24d671b23e97'),(183,NULL,333,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'373387f0-a0c9-4c18-ae89-87d3e90128e6'),(184,NULL,334,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'623cd5d7-1a67-411d-a296-c3e1f2d3969e'),(185,NULL,335,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'6142295a-861d-4f2b-ae42-00212477ce2a'),(186,NULL,336,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'1f80d41a-7170-4cd7-a050-d06465fff3ef'),(187,NULL,337,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'89e67c5c-0b2d-4376-93bb-9cd034450c3c'),(188,NULL,338,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'1cb35a37-0b5b-45a7-befd-5684398c05fc'),(189,NULL,339,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'7e878cb7-4ae5-44a1-840b-fc2a4fbce227'),(190,NULL,340,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'a09ccaa6-ecb8-430e-b9ae-171ef7b632ca'),(191,NULL,341,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'08119482-46c5-4166-af54-b59a04871759'),(192,NULL,342,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'f6d31708-5dd8-4823-a9ae-5dbe9db1c181'),(193,NULL,343,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'4ae17744-ed11-4a1f-a7d5-303bd73776fe'),(194,NULL,344,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'09b3beec-7025-4f7a-94df-4deedb31e356'),(195,NULL,345,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'07bf3860-93de-4f96-aba1-67573d04e2a8'),(196,NULL,346,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'e8adbf55-3cf4-441d-93ce-80aa13ba89e0'),(197,NULL,347,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'22b531e7-a787-4ccd-8704-ef8922129fad'),(198,NULL,348,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'a69004e6-aced-423f-ac44-e9625e7c05e7'),(199,NULL,349,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'9d0eb0cf-47a6-45cd-a44a-b3af5ffd674b'),(200,NULL,350,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'6122ff50-bdf1-41cd-a676-2e0e4d287827'),(201,NULL,351,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'ed1e9ee9-51dd-4d1a-8719-7ad1b20d6d4e'),(202,NULL,352,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'5822ec10-5210-42d8-83ff-f7ea4c96db50'),(203,NULL,353,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'24296172-e0c4-4b65-b1af-5ee79c1ec602'),(204,NULL,354,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'97e5ac89-c8a3-4ae6-9380-76cad69e98db'),(205,NULL,355,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'a536312d-c685-4e30-b727-507731bb6940'),(206,NULL,356,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'e670c409-a3f5-4d9c-82b9-840b2f889f8f'),(207,NULL,357,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'0e1600e0-3c8f-4c2b-8c1a-1c5cea7fc7ed'),(208,NULL,358,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'de7a901d-df4a-40f2-8be0-9028cbd7e838'),(209,NULL,359,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'6c481073-6f3c-47f1-828f-0664d0774084'),(210,NULL,360,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'c4509365-2066-4b1d-a0b5-9e66b37a77ae'),(211,NULL,361,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'3e49aed3-e99b-4444-b5fa-df1b4f85b396'),(212,NULL,362,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'2bd9042c-3647-4af9-90e0-8940426dcaec'),(213,NULL,363,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'c35d6d8a-4922-4fd7-a776-ec1f18ff224f'),(214,NULL,364,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'9d5f7565-4523-47b9-a9be-19fecfdfab05'),(215,NULL,365,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'5f412122-99d7-4971-b9a1-8b7eafd94db8'),(216,NULL,366,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'589c7d36-b487-4ceb-8bd8-8cea77535389'),(217,NULL,367,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'dd6747b6-a1ee-4f43-8687-4ae2f85b74f8'),(218,NULL,368,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'e658c58a-3f2c-41e6-81ce-b579ec18301e'),(219,NULL,369,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'8a6af929-6bbb-4062-9412-d011f18aee69'),(220,NULL,370,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'cab258ef-4529-4248-9dca-8321df40b36b'),(221,NULL,371,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'08155188-d3dc-4a68-8f58-1abd50572505'),(222,NULL,372,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'a75c206d-3ada-46c7-93bf-fe86f103e655'),(223,NULL,373,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'ad46d5d5-4139-4da9-b09a-942a4bd93002'),(224,NULL,374,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'b8f7e599-fcbd-4995-9280-e8978413fd65'),(225,NULL,375,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'a91ad012-4cd9-4e1b-a222-3097e9173108'),(226,NULL,376,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'53da1410-6b2f-491f-ab28-88e8c20b3c33'),(227,NULL,377,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'b299b3c0-dcf1-4eb7-81f2-02434f6d8196'),(228,NULL,378,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'1e1228a8-f6d1-4358-831d-d4278b95b6c0'),(229,NULL,379,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'8562aeab-3bca-46cf-92c7-3f03b96ee671'),(230,NULL,380,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'c391ab71-ebc6-4f79-a80c-ab4fac65095e'),(231,NULL,381,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'9271d963-b5af-4e10-a32d-2bf5d8908e3e'),(232,NULL,382,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'1c86df16-b725-48ca-b4a2-eb1847d917d4'),(233,NULL,383,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'f4a7a88d-53bf-4e60-9d4b-abe9b895697a'),(234,NULL,384,NULL,'wso2.system.user','2017-12-11 08:08:42','wso2.system.user','2017-12-11 08:08:42',NULL,NULL,-1234,'20e9caf1-bc0d-4966-84b7-fed427efa94a'),(235,NULL,385,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'310bd6b8-28fe-4311-8c99-4758997271bd'),(236,NULL,386,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'c4dd9fb2-5cd5-434e-b936-976b1affca5a'),(237,NULL,387,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'d89fd575-c9d4-4a7d-9490-4ea93b29e8d8'),(238,NULL,388,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'bc5e17f0-8cd3-444f-a5e0-337bafd30867'),(239,NULL,389,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'7e567a55-b9c1-4245-93a1-85a2e4fd90e7'),(240,NULL,390,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'6321edb0-5a42-410f-8b6d-545d0c419e1a'),(241,NULL,391,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'4eb83bce-0d38-4e2f-ba6e-506841ab9dd6'),(242,NULL,392,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'0e1a39be-24f4-4e31-b9e6-a23a4ce38b90'),(243,NULL,393,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'9286bab3-601f-4b18-9bc1-72fb2363efce'),(244,NULL,394,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'d6cce559-3c47-4e60-983b-569896eea984'),(245,NULL,395,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'7ce16f76-98a5-4c89-aa62-4842faec7d6a'),(246,NULL,396,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'f22b3194-7152-4fa1-9f4b-9956119a4f78'),(247,NULL,397,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'5d2b1eae-1f1a-4c81-8624-b492d1bffa12'),(248,NULL,398,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'fe85004e-3129-4ca9-8145-d7dafde01b6e'),(249,NULL,399,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'3e5fc68b-d1ba-4e7b-866f-95fc79a6d272'),(250,NULL,400,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'3c5a8bde-15cc-4b5e-9490-de874c6e0b74'),(251,NULL,401,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'ac570b34-1d7f-45e9-b00c-192ac50f24a1'),(252,NULL,402,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'5b1fffbb-8d50-4b5b-8c9c-100cf37e5c09'),(253,NULL,403,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'f4cb27ab-3dc9-4409-a9a7-74258341d5ef'),(254,NULL,404,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'ef4d4ce3-a57e-416d-9b58-9c2144d73478'),(255,NULL,405,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'7ba78f04-af00-4c70-8f90-320f009baac9'),(256,NULL,406,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'e68341c7-3130-458d-a576-73691f237209'),(257,NULL,407,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'3479e4bc-4364-4b7b-a6f9-e1881c4bcc55'),(258,NULL,408,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'dd50c0ae-18b5-49dd-abde-b485dda0512f'),(259,NULL,409,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'c3488bc9-8e9f-4a83-80f3-28f9779b82b6'),(260,NULL,410,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'e2561746-b3b5-4b52-9224-d3c8894d9715'),(261,NULL,411,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'1684d32f-0efe-4f14-ac2d-b2bf144bd917'),(262,NULL,412,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'c9758ca3-caa2-4a7d-ae9c-27b8093152a2'),(263,NULL,413,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'7d5cc62e-d292-499a-a0ab-36f54ad07d74'),(264,NULL,414,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'b78543b5-22eb-4777-875f-d986b2e3c66d'),(265,NULL,415,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'1ab52fbf-ba42-4cde-9764-25904b10b4e1'),(266,NULL,416,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'14504cdb-85df-44aa-962f-9c24a92be2b5'),(267,NULL,417,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'bff66cf7-adc0-42fb-982f-7230d8987bc0'),(268,NULL,418,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'6b9b5dc0-39ef-4f89-abda-63b278de6294'),(269,NULL,419,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'dafe3247-0c69-4e62-8064-54ae990c2a16'),(270,NULL,420,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'6dc87c80-a772-4940-8dea-7dd34cfe4850'),(271,NULL,421,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'2c656fec-0aec-4a69-ba4a-dddb240fab36'),(272,NULL,422,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'da9f6c02-ee4f-4622-9d83-7da4beaa8bc2'),(273,NULL,423,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'15b7ebd6-09d7-4dbf-a6e5-9484c17febcb'),(274,NULL,424,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'51f98c99-5b89-4eb7-9753-1ee2d5a8c895'),(275,NULL,425,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'9176d000-0c9c-46b7-abb4-5afb8381f054'),(276,NULL,426,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'4f96163f-042d-438e-8c9d-79c3cf1c2f3b'),(277,NULL,427,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'b9ab7f95-619d-4589-bd4e-deae6c0ad972'),(278,NULL,428,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'0a5f7bfe-58fa-40a0-98a2-2b2ee9f459ce'),(279,NULL,429,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'07564113-019f-4a53-b9f0-4312f98fc7c0'),(280,NULL,430,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'0457c330-a0c6-4eec-bb2f-07880d0419fe'),(281,NULL,431,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'382344bf-0142-46c5-a4ac-17e2aadf3dfa'),(282,NULL,432,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'50bf2baf-902e-4998-9039-925b4c77b57a'),(283,NULL,433,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'aca42896-33bf-4ff2-8985-0c5a2a9fa99b'),(283,'log4j.file.not.found',434,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:08:43',NULL,NULL,-1234,'21421e8c-cbde-4f1f-a1d3-cff03724e9a7'),(284,NULL,436,NULL,'wso2.system.user','2017-12-11 08:09:10','wso2.system.user','2017-12-11 08:09:10',NULL,NULL,-1234,'586031b3-1a11-4a3d-bfea-d327b9e73bbb'),(286,'1px.gif',439,'image/gif','wso2.system.user','2017-12-11 08:09:10','wso2.system.user','2017-12-11 08:09:10',NULL,93,-1234,'419fb718-a8a4-4386-b994-b0e254d9f444'),(286,'is-header-bg.png',440,'image/png','wso2.system.user','2017-12-11 08:09:10','wso2.system.user','2017-12-11 08:09:10',NULL,94,-1234,'e5a4cdd4-8e14-46b0-961d-e2e03a118871'),(286,'menu_header.png',441,'image/png','wso2.system.user','2017-12-11 08:09:10','wso2.system.user','2017-12-11 08:09:10',NULL,95,-1234,'bfe5a831-b80f-4f5f-8fac-21a90cf0d7a9'),(286,'is-logo.png',442,'image/png','wso2.system.user','2017-12-11 08:09:10','wso2.system.user','2017-12-11 08:09:10',NULL,96,-1234,'bab1c0d6-3216-4f49-8aa0-e2b240de5fe3'),(286,'is-server-menu-header.png',443,'image/png','wso2.system.user','2017-12-11 08:09:10','wso2.system.user','2017-12-11 08:09:10',NULL,97,-1234,'4276d3ad-433a-4004-96b6-b1e491eb1546'),(286,'back-repeat.png',444,'image/png','wso2.system.user','2017-12-11 08:09:10','wso2.system.user','2017-12-11 08:09:10',NULL,98,-1234,'2d7ccade-5fca-4292-85af-9aa759345c1a'),(288,NULL,449,NULL,'wso2.system.user','2017-12-11 08:09:24','wso2.system.user','2017-12-11 08:09:24',NULL,NULL,-1234,'0d6e8317-4964-4386-a517-81b74468f3f6'),(289,NULL,450,NULL,'wso2.system.user','2017-12-11 08:09:24','wso2.system.user','2017-12-11 08:09:24',NULL,NULL,-1234,'68b2f092-ab9e-4308-bc72-3bc652a65d16'),(290,NULL,451,NULL,'wso2.system.user','2017-12-11 08:09:24','wso2.system.user','2017-12-11 08:09:24',NULL,NULL,-1234,'423bdb39-6c1e-43cc-b02f-88f62c6c43aa'),(291,NULL,452,NULL,'wso2.system.user','2017-12-11 08:09:24','wso2.system.user','2017-12-11 08:09:24',NULL,NULL,-1234,'71b8c4a3-b73c-4354-a952-a6577ee5c3c5'),(292,NULL,453,NULL,'wso2.system.user','2017-12-11 08:09:24','wso2.system.user','2017-12-11 08:09:24',NULL,NULL,-1234,'cb77f135-bfa1-415d-a1de-b06761180007'),(292,'-_system-config',454,'application/vnd.wso2.mount','wso2.system.user','2017-12-11 08:09:24','wso2.system.user','2017-12-11 08:09:24',NULL,NULL,-1234,'c8aa071d-ed52-45b7-a338-c5769ebeb4d7'),(293,NULL,455,NULL,'wso2.system.user','2017-12-11 08:09:27','wso2.system.user','2017-12-11 08:09:27',NULL,NULL,-1234,'e219714b-018d-423f-9f32-07375904b3b4'),(294,NULL,456,NULL,'wso2.system.user','2017-12-11 08:09:27','wso2.system.user','2017-12-11 08:09:27',NULL,NULL,-1234,'0463702c-59d7-4f77-88fa-d68ac8a83f21'),(295,NULL,457,NULL,'wso2.system.user','2017-12-11 08:09:27','wso2.system.user','2017-12-11 08:09:27',NULL,NULL,-1234,'98269831-2f2b-4b08-9efc-c8239bc5c04d'),(295,'reply.rxt',458,'application/vnd.wso2.registry-ext-type+xml','wso2.system.user','2017-12-11 08:09:27','wso2.system.user','2017-12-11 08:09:27',NULL,102,-1234,'a65a8be7-1ccd-4ae1-83a6-cf0b1183054a'),(295,'topic.rxt',459,'application/vnd.wso2.registry-ext-type+xml','wso2.system.user','2017-12-11 08:09:28','wso2.system.user','2017-12-11 08:09:28',NULL,103,-1234,'80e874c8-3a74-4737-a9e9-3fb92a6de4eb'),(296,NULL,460,NULL,'wso2.system.user','2017-12-11 08:09:28','wso2.system.user','2017-12-11 08:09:28',NULL,NULL,-1234,'13c018d2-2916-47a4-a933-10cc78f0f8a9'),(297,NULL,461,NULL,'wso2.system.user','2017-12-11 08:09:28','wso2.system.user','2017-12-11 08:09:28',NULL,NULL,-1234,'3eea2d5a-e9ba-4157-952c-bf37cd2d527b'),(298,NULL,462,NULL,'wso2.system.user','2017-12-11 08:09:28','wso2.system.user','2017-12-11 08:09:28',NULL,NULL,-1234,'514d54c3-bd25-4ac3-9a65-fce102b3a412'),(299,NULL,463,NULL,'wso2.system.user','2017-12-11 08:09:28','wso2.system.user','2017-12-11 08:09:28',NULL,NULL,-1234,'b00db074-be16-4d08-a380-7be88e924e38'),(299,'ServiceLifeCycle',464,NULL,'wso2.system.user','2017-12-11 08:09:28','wso2.system.user','2017-12-11 08:09:28',NULL,104,-1234,'fdadca64-88b7-4f74-9703-dc702a97c865'),(299,'APILifeCycle',465,NULL,'wso2.system.user','2017-12-11 08:09:28','wso2.system.user','2017-12-11 08:09:28',NULL,105,-1234,'1dea26c5-7ab8-4f17-9e83-ba5300fcb271'),(300,NULL,466,NULL,'wso2.system.user','2017-12-11 08:09:41','wso2.system.user','2017-12-11 08:09:41',NULL,NULL,-1234,'4e43406e-0dfa-476c-bef8-cc615ec3a800'),(300,'sender',467,NULL,'wso2.system.user','2017-12-11 08:09:41','wso2.system.user','2017-12-11 08:09:41',NULL,106,-1234,'0a6500ca-3e6f-4adc-9753-ff49bbfa435e'),(301,NULL,469,NULL,'wso2.system.user','2017-12-11 08:09:46','wso2.system.user','2017-12-11 08:09:46',NULL,NULL,-1234,'d7766f06-ba01-4f29-904e-94f83e7b7692'),(302,NULL,470,NULL,'wso2.system.user','2017-12-11 08:09:46','wso2.system.user','2017-12-11 08:09:46',NULL,NULL,-1234,'52b83b1d-ef5b-4be9-9aa8-4e2125845509'),(302,'EnableMessageTrace',471,NULL,'wso2.system.user','2017-12-11 08:09:46','wso2.system.user','2017-12-11 08:09:46',NULL,NULL,-1234,'51201514-abd1-452e-aa50-02d8a1f34244'),(302,'EnableDumpMessageBody',472,NULL,'wso2.system.user','2017-12-11 08:09:46','wso2.system.user','2017-12-11 08:09:46',NULL,NULL,-1234,'46abe9e6-81b9-41c2-9bb6-bd43af42a3e1'),(302,'EnableLogging',473,NULL,'wso2.system.user','2017-12-11 08:09:46','wso2.system.user','2017-12-11 08:09:46',NULL,NULL,-1234,'ec78430a-f330-4659-98bb-8a1575b8cfe8'),(302,'EnablePublishToBAM',474,NULL,'wso2.system.user','2017-12-11 08:09:46','wso2.system.user','2017-12-11 08:09:46',NULL,NULL,-1234,'a6a7a374-4e71-4aab-b0f3-0eea7c1e36b0'),(295,'api.rxt',475,'application/vnd.wso2.registry-ext-type+xml','wso2.system.user','2017-12-11 08:09:46','wso2.system.user','2017-12-11 08:09:46',NULL,107,-1234,'b886a87a-e26a-4b1e-9752-04d9fcff31f6'),(295,'provider.rxt',476,'application/vnd.wso2.registry-ext-type+xml','wso2.system.user','2017-12-11 08:09:46','wso2.system.user','2017-12-11 08:09:46',NULL,108,-1234,'bf477f31-2b97-435a-927a-2d5328416c43'),(295,'documentation.rxt',477,'application/vnd.wso2.registry-ext-type+xml','wso2.system.user','2017-12-11 08:09:46','wso2.system.user','2017-12-11 08:09:46',NULL,109,-1234,'841bba42-cd16-4f40-84be-7c74ea79dbc3'),(32,'tiers.xml',478,'application/xml','wso2.system.user','2017-12-11 08:09:46','wso2.system.user','2017-12-11 08:09:46',NULL,110,-1234,'523339c9-40eb-4b7d-b212-38509c41c04f'),(32,'app-tiers.xml',479,'application/xml','wso2.system.user','2017-12-11 08:09:46','wso2.system.user','2017-12-11 08:09:46',NULL,111,-1234,'e4181baf-336a-4372-b8c4-d9b9757c8142'),(32,'res-tiers.xml',480,'application/xml','wso2.system.user','2017-12-11 08:09:46','wso2.system.user','2017-12-11 08:09:46',NULL,112,-1234,'7fe168d4-0262-4148-b589-4414c8968c11'),(303,NULL,481,NULL,'wso2.system.user','2017-12-11 08:09:48','wso2.system.user','2017-12-11 08:09:48',NULL,NULL,-1234,'1ab41e53-4ae2-4cd4-b771-fc8facb2d304'),(304,NULL,482,NULL,'wso2.system.user','2017-12-11 08:09:48','wso2.system.user','2017-12-11 08:09:48',NULL,NULL,-1234,'e653d182-b408-47f7-b33b-61e64de6cd79'),(304,'preserve_accept_header.xml',483,'application/xml','wso2.system.user','2017-12-11 08:09:48','wso2.system.user','2017-12-11 08:09:48',NULL,113,-1234,'df50cec7-4561-4361-b55c-83c1dbc1f257'),(304,'debug_in_flow.xml',484,'application/xml','wso2.system.user','2017-12-11 08:09:48','wso2.system.user','2017-12-11 08:09:48',NULL,114,-1234,'dc0af86c-0ea5-4524-acdb-7abc29433f94'),(304,'json_to_xml_in_message.xml',485,'application/xml','wso2.system.user','2017-12-11 08:09:48','wso2.system.user','2017-12-11 08:09:48',NULL,115,-1234,'30040490-f436-476b-af96-5a0d93e55b95'),(304,'log_in_message.xml',486,'application/xml','wso2.system.user','2017-12-11 08:09:48','wso2.system.user','2017-12-11 08:09:48',NULL,116,-1234,'196fadb9-9c41-4dd4-971b-891207ab8991'),(304,'xml_to_json_in_message.xml',487,'application/xml','wso2.system.user','2017-12-11 08:09:48','wso2.system.user','2017-12-11 08:09:48',NULL,117,-1234,'4992d7be-502f-4290-9a1d-537f705a996e'),(305,NULL,488,NULL,'wso2.system.user','2017-12-11 08:09:48','wso2.system.user','2017-12-11 08:09:48',NULL,NULL,-1234,'6467656d-a161-445d-8aa3-145c757eab75'),(305,'apply_accept_header.xml',489,'application/xml','wso2.system.user','2017-12-11 08:09:48','wso2.system.user','2017-12-11 08:09:48',NULL,118,-1234,'6f5a13a6-3ccc-4ca3-8ef3-963d6e3093e6'),(305,'xml_to_json_out_message.xml',490,'application/xml','wso2.system.user','2017-12-11 08:09:48','wso2.system.user','2017-12-11 08:09:48',NULL,119,-1234,'532bcf27-686e-4074-934a-aea76e4ffc2f'),(305,'json_to_xml_out_message.xml',491,'application/xml','wso2.system.user','2017-12-11 08:09:48','wso2.system.user','2017-12-11 08:09:48',NULL,120,-1234,'8810751e-0de6-44a5-8254-be3668ab158e'),(305,'debug_out_flow.xml',492,'application/xml','wso2.system.user','2017-12-11 08:09:48','wso2.system.user','2017-12-11 08:09:48',NULL,121,-1234,'5e144878-fd9d-4a8c-8b36-40552a3ce54a'),(305,'log_out_message.xml',493,'application/xml','wso2.system.user','2017-12-11 08:09:48','wso2.system.user','2017-12-11 08:09:48',NULL,122,-1234,'aab5d012-1414-4c2f-b263-fc4afb7cc481'),(306,NULL,494,NULL,'wso2.system.user','2017-12-11 08:09:48','wso2.system.user','2017-12-11 08:09:48',NULL,NULL,-1234,'309b8d74-e164-461b-b8fb-78cfe2ef3347'),(306,'json_fault.xml',495,'application/xml','wso2.system.user','2017-12-11 08:09:48','wso2.system.user','2017-12-11 08:09:48',NULL,123,-1234,'862dc666-0c43-4242-b586-6804bb898470'),(306,'debug_json_fault.xml',496,'application/xml','wso2.system.user','2017-12-11 08:09:48','wso2.system.user','2017-12-11 08:09:48',NULL,124,-1234,'0b751b48-05cc-4b0b-abd0-6818e306f29b'),(308,NULL,498,NULL,'wso2.system.user','2017-12-11 08:09:49','wso2.system.user','2017-12-11 08:09:49',NULL,NULL,-1234,'b13b8680-640d-4eed-b62f-a0949c550116'),(309,NULL,499,NULL,'wso2.system.user','2017-12-11 08:09:49','wso2.system.user','2017-12-11 08:09:49',NULL,NULL,-1234,'5a29f8ef-fb3c-4bd3-8531-c6af3547c33e'),(310,NULL,500,NULL,'wso2.system.user','2017-12-11 08:09:49','wso2.system.user','2017-12-11 08:09:49',NULL,NULL,-1234,'53794c20-b7a9-4efb-a1f8-5e5727a94b5f'),(312,NULL,502,NULL,'wso2.system.user','2017-12-11 08:09:49','wso2.system.user','2017-12-11 08:09:49',NULL,NULL,-1234,'90311f7e-48a0-47f6-b1fe-d6a66650e11b'),(313,NULL,503,NULL,'wso2.system.user','2017-12-11 08:09:49','wso2.system.user','2017-12-11 08:09:49',NULL,NULL,-1234,'9c7a2f4b-6b67-4380-a074-3393a2c8bf10'),(314,NULL,504,NULL,'wso2.system.user','2017-12-11 08:09:49','wso2.system.user','2017-12-11 08:09:49',NULL,NULL,-1234,'aa80060f-f8d7-49c5-9572-b617796795d6'),(315,NULL,505,NULL,'wso2.system.user','2017-12-11 08:09:49','wso2.system.user','2017-12-11 08:09:49',NULL,NULL,-1234,'c32cf3af-6fd8-4a8a-a248-9c30f1837209'),(316,NULL,506,NULL,'wso2.system.user','2017-12-11 08:09:49','wso2.system.user','2017-12-11 08:09:49',NULL,NULL,-1234,'417a2bd2-1548-4368-82d5-461f83b0f9a6'),(317,NULL,507,NULL,'wso2.system.user','2017-12-11 08:09:49','wso2.system.user','2017-12-11 08:09:49',NULL,NULL,-1234,'da43546e-0b90-425e-a040-7668a7144115'),(318,NULL,508,NULL,'wso2.system.user','2017-12-11 08:09:49','wso2.system.user','2017-12-11 08:09:49',NULL,NULL,-1234,'d6ef2637-4f2b-4173-a001-dd7f4d9c14d7'),(319,NULL,509,NULL,'wso2.system.user','2017-12-11 08:09:49','wso2.system.user','2017-12-11 08:09:49',NULL,NULL,-1234,'3a1b8b75-93b4-4cd5-aba0-ba18cf423fac'),(320,NULL,510,NULL,'wso2.system.user','2017-12-11 08:09:49','wso2.system.user','2017-12-11 08:09:49',NULL,NULL,-1234,'60bc4801-4351-4ce5-ba91-ba8d4ae18ea3'),(321,NULL,511,NULL,'wso2.system.user','2017-12-11 08:09:49','wso2.system.user','2017-12-11 08:09:49',NULL,NULL,-1234,'a8206061-971c-4707-90fd-3da0532550ca'),(322,NULL,512,NULL,'wso2.system.user','2017-12-11 08:09:49','wso2.system.user','2017-12-11 08:09:49',NULL,NULL,-1234,'e7cb5aec-115b-4564-aa0f-8273824cfd3f'),(323,NULL,513,NULL,'wso2.system.user','2017-12-11 08:09:49','wso2.system.user','2017-12-11 08:09:49',NULL,NULL,-1234,'8c74bdc3-f9b3-4048-af27-4ff9cecccc8f'),(324,NULL,514,NULL,'wso2.system.user','2017-12-11 08:09:49','wso2.system.user','2017-12-11 08:09:49',NULL,NULL,-1234,'7c160f8f-fe4d-4fe4-828d-1f414865bc09'),(325,NULL,515,NULL,'wso2.system.user','2017-12-11 08:09:49','wso2.system.user','2017-12-11 08:09:49',NULL,NULL,-1234,'771f0b72-7d24-43ad-ad38-9be000b1784e'),(326,NULL,516,NULL,'wso2.system.user','2017-12-11 08:09:49','wso2.system.user','2017-12-11 08:09:49',NULL,NULL,-1234,'36729c79-05bc-401f-b907-17fd003642db'),(327,NULL,517,NULL,'wso2.system.user','2017-12-11 08:09:49','wso2.system.user','2017-12-11 08:09:49',NULL,NULL,-1234,'63c01e42-74a4-404b-a584-9fdf61a78b72'),(328,NULL,518,NULL,'wso2.system.user','2017-12-11 08:09:49','wso2.system.user','2017-12-11 08:09:49',NULL,NULL,-1234,'1e95a3aa-e44a-40ec-b38f-88a56968e7c4'),(329,NULL,519,NULL,'wso2.system.user','2017-12-11 08:09:50','wso2.system.user','2017-12-11 08:09:50',NULL,NULL,-1234,'d586544a-4064-4ef5-825a-a7fb871f56c9'),(330,NULL,520,NULL,'wso2.system.user','2017-12-11 08:09:50','wso2.system.user','2017-12-11 08:09:50',NULL,NULL,-1234,'30efe538-806a-4e82-94f2-b8d2701049a2'),(331,NULL,521,NULL,'wso2.system.user','2017-12-11 08:09:50','wso2.system.user','2017-12-11 08:09:50',NULL,NULL,-1234,'c72f1165-0f57-4bbf-b346-adf41914aab8'),(332,NULL,522,NULL,'wso2.system.user','2017-12-11 08:09:50','wso2.system.user','2017-12-11 08:09:50',NULL,NULL,-1234,'24f39e68-0b56-4412-9f1e-4f2648ad8156'),(333,NULL,523,NULL,'wso2.system.user','2017-12-11 08:09:50','wso2.system.user','2017-12-11 08:09:50',NULL,NULL,-1234,'a37262fb-d500-4d1f-85fe-9c791c9fa1c5'),(334,NULL,524,NULL,'wso2.system.user','2017-12-11 08:09:50','wso2.system.user','2017-12-11 08:09:50',NULL,NULL,-1234,'20400ed0-823b-4b0c-b51f-75217bc780ee'),(335,NULL,525,NULL,'wso2.system.user','2017-12-11 08:09:50','wso2.system.user','2017-12-11 08:09:50',NULL,NULL,-1234,'3b2ef1e6-05c0-4a00-ad11-1fe9fac21b4c'),(336,NULL,526,NULL,'wso2.system.user','2017-12-11 08:09:50','wso2.system.user','2017-12-11 08:09:50',NULL,NULL,-1234,'2921b200-800d-460c-85b3-632062f81558'),(337,NULL,527,NULL,'wso2.system.user','2017-12-11 08:09:50','wso2.system.user','2017-12-11 08:09:50',NULL,NULL,-1234,'4d1150ac-9818-4e49-8632-41dcd816a3bd'),(338,NULL,528,NULL,'wso2.system.user','2017-12-11 08:09:50','wso2.system.user','2017-12-11 08:09:50',NULL,NULL,-1234,'3fb3ca73-ea15-43ee-ab44-9ba21ef55a21'),(339,NULL,529,NULL,'wso2.system.user','2017-12-11 08:09:50','wso2.system.user','2017-12-11 08:09:50',NULL,NULL,-1234,'8b3276a8-cc38-4411-9b11-a7a027591bd9'),(340,NULL,530,NULL,'wso2.system.user','2017-12-11 08:09:50','wso2.system.user','2017-12-11 08:09:50',NULL,NULL,-1234,'6475ae57-5f0e-46e5-9d31-740d895ce863'),(341,NULL,531,NULL,'wso2.system.user','2017-12-11 08:09:50','wso2.system.user','2017-12-11 08:09:50',NULL,NULL,-1234,'938a4973-8326-4e65-97a9-ab895d2e22e8'),(342,NULL,532,NULL,'wso2.system.user','2017-12-11 08:09:50','wso2.system.user','2017-12-11 08:09:50',NULL,NULL,-1234,'d4f3e01f-ee33-448f-b432-9fd1c78ceedb'),(343,NULL,533,NULL,'wso2.system.user','2017-12-11 08:09:50','wso2.system.user','2017-12-11 08:09:50',NULL,NULL,-1234,'b5091f59-85d0-4b8b-b1e8-80be24f66128'),(344,NULL,534,NULL,'wso2.system.user','2017-12-11 08:09:50','wso2.system.user','2017-12-11 08:09:50',NULL,NULL,-1234,'1c7c0ad2-37bf-49df-aaf9-e22695cf5c0e'),(345,NULL,535,NULL,'wso2.system.user','2017-12-11 08:09:50','wso2.system.user','2017-12-11 08:09:50',NULL,NULL,-1234,'0eb6aaa3-67a2-4a12-a892-0e67a563afac'),(346,NULL,536,NULL,'wso2.system.user','2017-12-11 08:09:50','wso2.system.user','2017-12-11 08:09:50',NULL,NULL,-1234,'de035210-1d85-4759-b748-042c1ebee633'),(347,NULL,537,NULL,'wso2.system.user','2017-12-11 08:09:50','wso2.system.user','2017-12-11 08:09:50',NULL,NULL,-1234,'895c7cfa-0332-4ed6-afec-47bb332914e2'),(348,NULL,538,NULL,'wso2.system.user','2017-12-11 08:09:50','wso2.system.user','2017-12-11 08:09:50',NULL,NULL,-1234,'4de0ab47-d4bf-450b-b803-8a15b93e2fb4'),(349,NULL,539,NULL,'wso2.system.user','2017-12-11 08:09:50','wso2.system.user','2017-12-11 08:09:50',NULL,NULL,-1234,'948eb0e9-e2b0-4856-ad8a-20917a90105b'),(350,NULL,540,NULL,'wso2.system.user','2017-12-11 08:09:50','wso2.system.user','2017-12-11 08:09:50',NULL,NULL,-1234,'e56bc4a5-fbe6-46e7-bb1f-6e7494a65adb'),(351,NULL,541,NULL,'wso2.system.user','2017-12-11 08:09:51','wso2.system.user','2017-12-11 08:09:51',NULL,NULL,-1234,'12c02432-200f-4177-bab5-958c89f4d8e1'),(352,NULL,542,NULL,'wso2.system.user','2017-12-11 08:09:51','wso2.system.user','2017-12-11 08:09:51',NULL,NULL,-1234,'42656bac-e0db-40e3-b6e2-be43a5e42215'),(353,NULL,543,NULL,'wso2.system.user','2017-12-11 08:09:51','wso2.system.user','2017-12-11 08:09:51',NULL,NULL,-1234,'af358a1b-7269-46c4-88dd-41c95bda07be'),(354,NULL,544,NULL,'wso2.system.user','2017-12-11 08:09:51','wso2.system.user','2017-12-11 08:09:51',NULL,NULL,-1234,'f29f7cb4-7ccb-4319-9bf0-ef2309242ddd'),(307,NULL,545,NULL,'wso2.system.user','2017-12-11 08:09:49','wso2.system.user','2017-12-11 08:09:51',NULL,NULL,-1234,'099f2cf6-a323-4092-85d7-2785a2342a9c'),(355,NULL,546,NULL,'wso2.system.user','2017-12-11 08:09:51','wso2.system.user','2017-12-11 08:09:51',NULL,NULL,-1234,'c46f89d6-a60b-4526-9475-94ca766704e8'),(356,NULL,547,NULL,'wso2.system.user','2017-12-11 08:09:51','wso2.system.user','2017-12-11 08:09:51',NULL,NULL,-1234,'994afe60-d0d3-4837-aa66-4b1b97416a35'),(357,NULL,548,NULL,'wso2.system.user','2017-12-11 08:09:51','wso2.system.user','2017-12-11 08:09:51',NULL,NULL,-1234,'3133cf44-174f-44d3-9c78-7e06bc06ae0d'),(358,NULL,549,NULL,'wso2.system.user','2017-12-11 08:09:51','wso2.system.user','2017-12-11 08:09:51',NULL,NULL,-1234,'f1fae784-fca8-4607-8226-6e924208e55e'),(311,NULL,550,NULL,'wso2.system.user','2017-12-11 08:09:49','wso2.system.user','2017-12-11 08:09:51',NULL,NULL,-1234,'0a02e97a-6e8a-46c3-894a-236b000a3198'),(359,NULL,551,NULL,'wso2.system.user','2017-12-11 08:09:51','wso2.system.user','2017-12-11 08:09:51',NULL,NULL,-1234,'5f5f91e3-1051-48ad-ba0b-fac87ddab690'),(360,NULL,552,NULL,'wso2.system.user','2017-12-11 08:09:51','wso2.system.user','2017-12-11 08:09:51',NULL,NULL,-1234,'7f97851a-80b2-4e2b-9c5f-606910c6890c'),(361,NULL,553,NULL,'wso2.system.user','2017-12-11 08:09:51','wso2.system.user','2017-12-11 08:09:51',NULL,NULL,-1234,'bc4297c2-56d9-47fc-9152-dbd702b5eaa0'),(362,NULL,554,NULL,'wso2.system.user','2017-12-11 08:09:51','wso2.system.user','2017-12-11 08:09:51',NULL,NULL,-1234,'26b790d1-201c-4793-873b-d0d336a04fcb'),(363,NULL,555,NULL,'wso2.system.user','2017-12-11 08:09:51','wso2.system.user','2017-12-11 08:09:51',NULL,NULL,-1234,'3197399b-a96a-4913-9b2a-12c9bb5ba7ae'),(364,NULL,556,NULL,'wso2.system.user','2017-12-11 08:09:51','wso2.system.user','2017-12-11 08:09:51',NULL,NULL,-1234,'e2fa360d-0978-49dd-b872-5ef74d8f8ec4'),(365,NULL,557,NULL,'wso2.system.user','2017-12-11 08:09:51','wso2.system.user','2017-12-11 08:09:51',NULL,NULL,-1234,'3a0774ed-499b-4e10-93dd-6f90093ca38b'),(366,NULL,558,NULL,'wso2.system.user','2017-12-11 08:09:51','wso2.system.user','2017-12-11 08:09:51',NULL,NULL,-1234,'f9d3c380-a309-46ab-ac0a-85a5b9ec700b'),(367,NULL,559,NULL,'wso2.system.user','2017-12-11 08:09:52','wso2.system.user','2017-12-11 08:09:52',NULL,NULL,-1234,'f8f94509-ae8f-4840-9016-47e0db5a5ecb'),(368,NULL,560,NULL,'wso2.system.user','2017-12-11 08:09:52','wso2.system.user','2017-12-11 08:09:52',NULL,NULL,-1234,'4d1b4e8e-df00-4f83-9232-322cd0376436'),(369,NULL,561,NULL,'wso2.system.user','2017-12-11 08:09:52','wso2.system.user','2017-12-11 08:09:52',NULL,NULL,-1234,'3ca2edf8-05ae-42b7-af5c-2a89bd544bea'),(370,NULL,562,NULL,'wso2.system.user','2017-12-11 08:09:52','wso2.system.user','2017-12-11 08:09:52',NULL,NULL,-1234,'da0f44f9-cf39-4e20-81e3-b79d2632aa81'),(371,NULL,563,NULL,'wso2.system.user','2017-12-11 08:09:52','wso2.system.user','2017-12-11 08:09:52',NULL,NULL,-1234,'a7621156-a008-406b-b2c2-b9a595d46870'),(372,NULL,564,NULL,'wso2.system.user','2017-12-11 08:09:52','wso2.system.user','2017-12-11 08:09:52',NULL,NULL,-1234,'892f4aef-3005-4273-a6d8-555402bc85b9'),(373,NULL,565,NULL,'wso2.system.user','2017-12-11 08:09:52','wso2.system.user','2017-12-11 08:09:52',NULL,NULL,-1234,'4cb321d0-d9ff-40d0-abc5-c445353f8328'),(374,NULL,566,NULL,'wso2.system.user','2017-12-11 08:09:52','wso2.system.user','2017-12-11 08:09:52',NULL,NULL,-1234,'594a27ef-6bc8-4678-9d6a-fd39553430a3'),(375,NULL,567,NULL,'wso2.system.user','2017-12-11 08:09:52','wso2.system.user','2017-12-11 08:09:52',NULL,NULL,-1234,'bcf3846f-75d2-483f-a44c-f6db34848d30'),(376,NULL,568,NULL,'wso2.system.user','2017-12-11 08:09:52','wso2.system.user','2017-12-11 08:09:52',NULL,NULL,-1234,'a6cccb0b-5694-444f-9251-1c4f23aea749'),(377,NULL,569,NULL,'wso2.system.user','2017-12-11 08:09:52','wso2.system.user','2017-12-11 08:09:52',NULL,NULL,-1234,'75725de5-cb00-4990-9785-3bdab74a786f'),(377,'default',570,NULL,'wso2.system.user','2017-12-11 08:09:53','wso2.system.user','2017-12-11 08:09:53',NULL,NULL,-1234,'930db17f-9d01-4a41-b81e-da93b0e22a21'),(378,NULL,571,NULL,'wso2.system.user','2017-12-11 08:10:22','wso2.system.user','2017-12-11 08:10:22',NULL,NULL,-1234,'c49d78df-297c-47bf-802d-4ff31b12cdf5'),(379,NULL,572,NULL,'wso2.system.user','2017-12-11 08:10:22','wso2.system.user','2017-12-11 08:10:22',NULL,NULL,-1234,'30989ca6-d2ed-42b8-86ee-f137c828eaf0'),(379,'log-analyzer',573,'application/json','wso2.system.user','2017-12-11 08:10:22','wso2.system.user','2017-12-11 08:10:22',NULL,125,-1234,'24392b4b-56d3-441c-8ba2-84f351f1047a'),(380,NULL,574,NULL,'wso2.system.user','2017-12-11 08:10:22','wso2.system.user','2017-12-11 08:10:22',NULL,NULL,-1234,'efb5c7bb-14f1-4602-b4b7-b60d322dbd58'),(380,'inbound-endpoints',576,NULL,'wso2.system.user','2017-12-11 08:10:22','wso2.system.user','2017-12-11 08:10:22',NULL,127,-1234,'df2363af-efb2-4e4f-931f-18c77130ff5d'),(283,'wso2carbon.system.log.last.modified',577,NULL,'wso2.system.user','2017-12-11 08:08:43','wso2.system.user','2017-12-11 08:10:23',NULL,NULL,-1234,'212bce4b-91f7-462e-8a2a-7172da85616a'),(381,NULL,589,NULL,'wso2.system.user','2017-12-11 08:10:25','wso2.system.user','2017-12-11 08:10:25',NULL,NULL,-1234,'db30ed09-0f2b-481b-8c7f-abe2d9d835bf'),(382,NULL,590,NULL,'wso2.system.user','2017-12-11 08:10:25','wso2.system.user','2017-12-11 08:10:25',NULL,NULL,-1234,'485abe8f-d97d-40ed-b7cc-7a3362308c0e'),(384,NULL,592,NULL,'wso2.system.user','2017-12-11 08:10:25','wso2.system.user','2017-12-11 08:10:25',NULL,NULL,-1234,'ddc7f5de-bfc0-431b-89ad-bc2b99dea5f4'),(385,NULL,593,NULL,'wso2.system.user','2017-12-11 08:10:25','wso2.system.user','2017-12-11 08:10:25',NULL,NULL,-1234,'ac4e6492-ac30-4188-85ae-3460c2eaa540'),(300,'listener',595,NULL,'wso2.system.user','2017-12-11 08:10:27','wso2.system.user','2017-12-11 08:10:27',NULL,136,-1234,'5b6f133d-c44d-499e-b499-7c20bf2c404e'),(387,NULL,596,NULL,'wso2.system.user','2017-12-11 08:10:27','wso2.system.user','2017-12-11 08:10:27',NULL,NULL,-1234,'33aa31e1-261a-47a2-932a-48669a586dae'),(387,'listener',597,NULL,'wso2.system.user','2017-12-11 08:10:27','wso2.system.user','2017-12-11 08:10:27',NULL,137,-1234,'3abf981f-1b82-4a81-8a6d-dfae95f11875'),(387,'sender',598,NULL,'wso2.system.user','2017-12-11 08:10:27','wso2.system.user','2017-12-11 08:10:27',NULL,138,-1234,'8f3de535-01fb-48dc-bfd5-8cf90b97d974'),(388,NULL,599,NULL,'wso2.system.user','2017-12-11 08:20:23','wso2.system.user','2017-12-11 08:20:23',NULL,NULL,-1234,'d889838b-c42c-4d28-9f0b-468caeeb02f0'),(389,NULL,600,NULL,'wso2.system.user','2017-12-11 08:20:23','wso2.system.user','2017-12-11 08:20:23',NULL,NULL,-1234,'05d3531f-1a7c-4cf7-9dcb-daeb010da42b'),(389,'QVBJX1BVQkxJU0hFUg',601,NULL,'wso2.system.user','2017-12-11 08:20:23','wso2.system.user','2017-12-11 08:20:23',NULL,NULL,-1234,'095c00bf-686a-4448-b2bc-146164858fd5'),(389,'QVBJX1NUT1JF',602,NULL,'wso2.system.user','2017-12-11 08:22:35','wso2.system.user','2017-12-11 08:22:35',NULL,NULL,-1234,'4aabd15f-609e-458f-8f1c-1664adadd4ce'),(24,'props',603,NULL,'wso2.system.user','2017-12-11 08:08:27','wso2.system.user','2017-12-11 08:33:36',NULL,NULL,-1234,'ec493dcc-19f6-441f-b7aa-299f3992717a'),(283,'wso2carbon.system.log.pattern',604,NULL,'wso2.system.user','2017-12-11 08:34:06','wso2.system.user','2017-12-11 08:34:06',NULL,NULL,-1234,'023f7b66-78bd-4009-ac23-8c00c6959789'),(285,NULL,605,NULL,'wso2.system.user','2017-12-11 08:09:10','wso2.system.user','2017-12-11 08:34:07',NULL,NULL,-1234,'f5e62e58-747e-4514-8bc6-f269d2294d5f'),(286,NULL,606,NULL,'wso2.system.user','2017-12-11 08:09:10','wso2.system.user','2017-12-11 08:34:07',NULL,NULL,-1234,'a619213f-a853-4f1a-bc6a-35327826244f'),(286,'api-logo.png',607,'image/png','wso2.system.user','2017-12-11 08:10:25','wso2.system.user','2017-12-11 08:34:07',NULL,139,-1234,'d79dc3f8-fe2e-4e5d-bbe8-e3e71bc824d7'),(286,'api-header-region-bg.png',608,'image/png','wso2.system.user','2017-12-11 08:10:25','wso2.system.user','2017-12-11 08:34:07',NULL,140,-1234,'626fbb76-50b3-4f20-bd34-db260f177387'),(286,'menu_header.gif',609,'image/gif','wso2.system.user','2017-12-11 08:09:10','wso2.system.user','2017-12-11 08:34:07',NULL,141,-1234,'e836f905-0fbc-4e56-85c4-ba59f9dea523'),(286,'api-server-menu-header.gif',610,'image/gif','wso2.system.user','2017-12-11 08:10:25','wso2.system.user','2017-12-11 08:34:07',NULL,142,-1234,'3a783419-9799-45e3-a060-e1dd7248709e'),(286,'api-server-menu-panel-bg.png',611,'image/png','wso2.system.user','2017-12-11 08:10:25','wso2.system.user','2017-12-11 08:34:07',NULL,143,-1234,'8fd8e392-9cf7-45b6-8480-98103e733ade'),(286,'api-header-back.png',612,'image/png','wso2.system.user','2017-12-11 08:10:25','wso2.system.user','2017-12-11 08:34:07',NULL,144,-1234,'a404f717-e476-49eb-87ae-b423688b97e0'),(286,'right-links-bg.gif',613,'image/gif','wso2.system.user','2017-12-11 08:09:10','wso2.system.user','2017-12-11 08:34:07',NULL,145,-1234,'84622c0f-f1e7-4e4e-a4e2-92366f510f1e'),(287,NULL,614,NULL,'wso2.system.user','2017-12-11 08:09:10','wso2.system.user','2017-12-11 08:34:07',NULL,NULL,-1234,'8de84585-e28e-4aa6-9aa3-cdf6da02098a'),(287,'main.css',615,'text/css','wso2.system.user','2017-12-11 08:09:10','wso2.system.user','2017-12-11 08:34:07',NULL,146,-1234,'257f02e6-081e-4a86-ba1d-cb009568bfa7'),(392,NULL,618,NULL,'wso2.system.user','2017-12-11 08:34:44','wso2.system.user','2017-12-11 08:34:44',NULL,NULL,-1234,'5646b64b-ca67-441c-b76b-a71a15d9efdb'),(393,NULL,619,NULL,'wso2.system.user','2017-12-11 08:34:44','wso2.system.user','2017-12-11 08:34:44',NULL,NULL,-1234,'11d15db0-2604-4932-9592-40a6e6898532'),(393,'tag-summary',620,'application/vnd.sql.query','wso2.system.user','2017-12-11 08:34:44','wso2.system.user','2017-12-11 08:34:44',NULL,147,-1234,'f26cc6fc-a792-465b-85a0-71417a1fb079'),(393,'latest-apis',621,'application/vnd.sql.query','wso2.system.user','2017-12-11 08:34:44','wso2.system.user','2017-12-11 08:34:44',NULL,148,-1234,'2e93d024-2e2a-4af7-b05c-5d8fa76a85eb'),(393,'resource-by-tag',622,'application/vnd.sql.query','wso2.system.user','2017-12-11 08:34:44','wso2.system.user','2017-12-11 08:34:44',NULL,149,-1234,'628ca78c-10ac-4b03-8932-7a354dd10457'),(394,NULL,623,NULL,'admin','2017-12-11 08:47:19','admin','2017-12-11 08:47:19',NULL,NULL,-1234,'ee3e7e63-a5a6-4dea-a0e6-ee32d242a05d'),(395,NULL,624,NULL,'admin','2017-12-11 08:47:19','admin','2017-12-11 08:47:19',NULL,NULL,-1234,'54ff20e5-24ed-41ed-8d41-84f4e8ded1af'),(396,NULL,625,NULL,'admin','2017-12-11 08:47:19','admin','2017-12-11 08:47:19',NULL,NULL,-1234,'1986ce63-2473-4a51-a3d6-5d40edc3db09'),(397,NULL,626,NULL,'admin','2017-12-11 08:47:19','admin','2017-12-11 08:47:19',NULL,NULL,-1234,'3773edf3-6aad-4cbb-88bc-4276dd876075'),(398,NULL,628,NULL,'wso2.system.user','2017-12-11 08:47:20','wso2.system.user','2017-12-11 08:47:20',NULL,NULL,-1234,'1775e3de-4d14-4f22-9684-c7225146cc91'),(399,NULL,629,NULL,'wso2.system.user','2017-12-11 08:47:20','wso2.system.user','2017-12-11 08:47:20',NULL,NULL,-1234,'effa2b66-37f0-4674-bcc7-04b794938a83'),(400,NULL,635,NULL,'admin','2017-12-11 08:47:20','admin','2017-12-11 08:47:20',NULL,NULL,-1234,'ccf3bea6-c994-4b08-9957-f46e6dfb7602'),(401,NULL,636,NULL,'admin','2017-12-11 08:47:20','admin','2017-12-11 08:47:20',NULL,NULL,-1234,'d99b8cdd-c82d-43f4-a9a4-49002c5899bd'),(402,NULL,637,NULL,'admin','2017-12-11 08:47:20','admin','2017-12-11 08:47:20',NULL,NULL,-1234,'713758b3-fc84-4a10-935b-f4e501e79444'),(403,NULL,638,NULL,'admin','2017-12-11 08:47:20','admin','2017-12-11 08:47:20',NULL,NULL,-1234,'3c2f283c-04b7-47d5-bd78-6f6d6c9458d8'),(403,'icon',639,'image/png','admin','2017-12-11 08:47:20','admin','2017-12-11 08:47:20',NULL,156,-1234,'5f20432b-ee6f-47d7-81fb-acea498816b2'),(397,'swagger.json',645,'application/json','admin','2017-12-11 08:47:20','admin','2017-12-11 08:49:11',NULL,162,-1234,'2c5b67f1-31d1-4c39-afdb-99e76a24cd27'),(397,'api',650,'application/vnd.wso2-api+xml','admin','2017-12-11 08:47:19','admin','2017-12-11 08:49:13',NULL,167,-1234,'e244f7b9-471d-4787-ad55-7e854eb1d860'),(399,'__system_governance_apimgt_applicationdata_provider_admin_TestMe_1.0.0_api',651,'application/xml','wso2.system.user','2017-12-11 08:47:20','wso2.system.user','2017-12-11 08:49:13',NULL,168,-1234,'b321487a-d888-45d2-bf78-58bba18d69bf');
/*!40000 ALTER TABLE `REG_RESOURCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_RESOURCE_COMMENT`
--

DROP TABLE IF EXISTS `REG_RESOURCE_COMMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_RESOURCE_COMMENT` (
  `REG_COMMENT_ID` int(11) NOT NULL,
  `REG_VERSION` int(11) DEFAULT NULL,
  `REG_PATH_ID` int(11) DEFAULT NULL,
  `REG_RESOURCE_NAME` varchar(256) DEFAULT NULL,
  `REG_TENANT_ID` int(11) DEFAULT '0',
  KEY `REG_RESOURCE_COMMENT_FK_BY_PATH_ID` (`REG_PATH_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_COMMENT_FK_BY_COMMENT_ID` (`REG_COMMENT_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_COMMENT_IND_BY_PATH_ID_AND_RESOURCE_NAME` (`REG_PATH_ID`,`REG_RESOURCE_NAME`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_RESOURCE_COMMENT_IND_BY_VERSION` (`REG_VERSION`,`REG_TENANT_ID`) USING HASH,
  CONSTRAINT `REG_RESOURCE_COMMENT_FK_BY_COMMENT_ID` FOREIGN KEY (`REG_COMMENT_ID`, `REG_TENANT_ID`) REFERENCES `REG_COMMENT` (`REG_ID`, `REG_TENANT_ID`),
  CONSTRAINT `REG_RESOURCE_COMMENT_FK_BY_PATH_ID` FOREIGN KEY (`REG_PATH_ID`, `REG_TENANT_ID`) REFERENCES `REG_PATH` (`REG_PATH_ID`, `REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_RESOURCE_COMMENT`
--

LOCK TABLES `REG_RESOURCE_COMMENT` WRITE;
/*!40000 ALTER TABLE `REG_RESOURCE_COMMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_RESOURCE_COMMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_RESOURCE_HISTORY`
--

DROP TABLE IF EXISTS `REG_RESOURCE_HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_RESOURCE_HISTORY` (
  `REG_PATH_ID` int(11) NOT NULL,
  `REG_NAME` varchar(256) DEFAULT NULL,
  `REG_VERSION` int(11) NOT NULL,
  `REG_MEDIA_TYPE` varchar(500) DEFAULT NULL,
  `REG_CREATOR` varchar(31) NOT NULL,
  `REG_CREATED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REG_LAST_UPDATOR` varchar(31) DEFAULT NULL,
  `REG_LAST_UPDATED_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `REG_DESCRIPTION` varchar(1000) DEFAULT NULL,
  `REG_CONTENT_ID` int(11) DEFAULT NULL,
  `REG_DELETED` smallint(6) DEFAULT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  `REG_UUID` varchar(100) NOT NULL,
  PRIMARY KEY (`REG_VERSION`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_HIST_FK_BY_PATHID` (`REG_PATH_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_HIST_FK_BY_CONTENT_ID` (`REG_CONTENT_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_HISTORY_IND_BY_NAME` (`REG_NAME`,`REG_TENANT_ID`) USING HASH,
  CONSTRAINT `REG_RESOURCE_HIST_FK_BY_CONTENT_ID` FOREIGN KEY (`REG_CONTENT_ID`, `REG_TENANT_ID`) REFERENCES `REG_CONTENT_HISTORY` (`REG_CONTENT_ID`, `REG_TENANT_ID`),
  CONSTRAINT `REG_RESOURCE_HIST_FK_BY_PATHID` FOREIGN KEY (`REG_PATH_ID`, `REG_TENANT_ID`) REFERENCES `REG_PATH` (`REG_PATH_ID`, `REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_RESOURCE_HISTORY`
--

LOCK TABLES `REG_RESOURCE_HISTORY` WRITE;
/*!40000 ALTER TABLE `REG_RESOURCE_HISTORY` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_RESOURCE_HISTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_RESOURCE_PROPERTY`
--

DROP TABLE IF EXISTS `REG_RESOURCE_PROPERTY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_RESOURCE_PROPERTY` (
  `REG_PROPERTY_ID` int(11) NOT NULL,
  `REG_VERSION` int(11) DEFAULT NULL,
  `REG_PATH_ID` int(11) DEFAULT NULL,
  `REG_RESOURCE_NAME` varchar(256) DEFAULT NULL,
  `REG_TENANT_ID` int(11) DEFAULT '0',
  KEY `REG_RESOURCE_PROPERTY_FK_BY_PATH_ID` (`REG_PATH_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_PROPERTY_FK_BY_TAG_ID` (`REG_PROPERTY_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_PROPERTY_IND_BY_PATH_ID_AND_RESOURCE_NAME` (`REG_PATH_ID`,`REG_RESOURCE_NAME`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_RESOURCE_PROPERTY_IND_BY_VERSION` (`REG_VERSION`,`REG_TENANT_ID`) USING HASH,
  CONSTRAINT `REG_RESOURCE_PROPERTY_FK_BY_PATH_ID` FOREIGN KEY (`REG_PATH_ID`, `REG_TENANT_ID`) REFERENCES `REG_PATH` (`REG_PATH_ID`, `REG_TENANT_ID`),
  CONSTRAINT `REG_RESOURCE_PROPERTY_FK_BY_TAG_ID` FOREIGN KEY (`REG_PROPERTY_ID`, `REG_TENANT_ID`) REFERENCES `REG_PROPERTY` (`REG_ID`, `REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_RESOURCE_PROPERTY`
--

LOCK TABLES `REG_RESOURCE_PROPERTY` WRITE;
/*!40000 ALTER TABLE `REG_RESOURCE_PROPERTY` DISABLE KEYS */;
INSERT INTO `REG_RESOURCE_PROPERTY` VALUES (1,8,NULL,NULL,-1234),(2,8,NULL,NULL,-1234),(3,8,NULL,NULL,-1234),(4,8,NULL,NULL,-1234),(5,8,NULL,NULL,-1234),(6,8,NULL,NULL,-1234),(7,8,NULL,NULL,-1234),(8,8,NULL,NULL,-1234),(9,8,NULL,NULL,-1234),(10,8,NULL,NULL,-1234),(11,8,NULL,NULL,-1234),(12,8,NULL,NULL,-1234),(13,8,NULL,NULL,-1234),(14,8,NULL,NULL,-1234),(15,8,NULL,NULL,-1234),(16,8,NULL,NULL,-1234),(17,8,NULL,NULL,-1234),(18,8,NULL,NULL,-1234),(19,8,NULL,NULL,-1234),(20,8,NULL,NULL,-1234),(21,8,NULL,NULL,-1234),(22,8,NULL,NULL,-1234),(23,8,NULL,NULL,-1234),(24,8,NULL,NULL,-1234),(25,8,NULL,NULL,-1234),(26,8,NULL,NULL,-1234),(27,8,NULL,NULL,-1234),(28,8,NULL,NULL,-1234),(29,8,NULL,NULL,-1234),(30,8,NULL,NULL,-1234),(31,8,NULL,NULL,-1234),(32,8,NULL,NULL,-1234),(33,8,NULL,NULL,-1234),(34,8,NULL,NULL,-1234),(35,8,NULL,NULL,-1234),(36,8,NULL,NULL,-1234),(37,8,NULL,NULL,-1234),(38,8,NULL,NULL,-1234),(39,8,NULL,NULL,-1234),(40,8,NULL,NULL,-1234),(41,8,NULL,NULL,-1234),(42,8,NULL,NULL,-1234),(43,8,NULL,NULL,-1234),(44,8,NULL,NULL,-1234),(45,8,NULL,NULL,-1234),(46,8,NULL,NULL,-1234),(47,8,NULL,NULL,-1234),(48,8,NULL,NULL,-1234),(49,8,NULL,NULL,-1234),(50,8,NULL,NULL,-1234),(51,8,NULL,NULL,-1234),(52,8,NULL,NULL,-1234),(53,8,NULL,NULL,-1234),(54,8,NULL,NULL,-1234),(55,8,NULL,NULL,-1234),(56,8,NULL,NULL,-1234),(57,8,NULL,NULL,-1234),(58,8,NULL,NULL,-1234),(59,8,NULL,NULL,-1234),(60,8,NULL,NULL,-1234),(61,8,NULL,NULL,-1234),(62,8,NULL,NULL,-1234),(63,8,NULL,NULL,-1234),(64,8,NULL,NULL,-1234),(65,8,NULL,NULL,-1234),(66,8,NULL,NULL,-1234),(67,8,NULL,NULL,-1234),(68,8,NULL,NULL,-1234),(69,8,NULL,NULL,-1234),(70,8,NULL,NULL,-1234),(71,8,NULL,NULL,-1234),(72,8,NULL,NULL,-1234),(73,8,NULL,NULL,-1234),(74,8,NULL,NULL,-1234),(75,8,NULL,NULL,-1234),(76,8,NULL,NULL,-1234),(77,8,NULL,NULL,-1234),(78,8,NULL,NULL,-1234),(79,8,NULL,NULL,-1234),(80,8,NULL,NULL,-1234),(81,8,NULL,NULL,-1234),(82,8,NULL,NULL,-1234),(83,8,NULL,NULL,-1234),(84,8,NULL,NULL,-1234),(85,8,NULL,NULL,-1234),(86,8,NULL,NULL,-1234),(87,8,NULL,NULL,-1234),(88,8,NULL,NULL,-1234),(89,8,NULL,NULL,-1234),(90,8,NULL,NULL,-1234),(91,8,NULL,NULL,-1234),(92,8,NULL,NULL,-1234),(93,8,NULL,NULL,-1234),(94,8,NULL,NULL,-1234),(95,8,NULL,NULL,-1234),(96,8,NULL,NULL,-1234),(97,8,NULL,NULL,-1234),(98,8,NULL,NULL,-1234),(99,8,NULL,NULL,-1234),(100,8,NULL,NULL,-1234),(101,8,NULL,NULL,-1234),(102,8,NULL,NULL,-1234),(103,8,NULL,NULL,-1234),(104,8,NULL,NULL,-1234),(105,8,NULL,NULL,-1234),(106,8,NULL,NULL,-1234),(107,8,NULL,NULL,-1234),(108,8,NULL,NULL,-1234),(109,8,NULL,NULL,-1234),(110,8,NULL,NULL,-1234),(111,8,NULL,NULL,-1234),(112,8,NULL,NULL,-1234),(113,8,NULL,NULL,-1234),(114,8,NULL,NULL,-1234),(115,8,NULL,NULL,-1234),(116,8,NULL,NULL,-1234),(117,8,NULL,NULL,-1234),(118,8,NULL,NULL,-1234),(119,8,NULL,NULL,-1234),(120,8,NULL,NULL,-1234),(121,8,NULL,NULL,-1234),(122,8,NULL,NULL,-1234),(123,8,NULL,NULL,-1234),(124,8,NULL,NULL,-1234),(125,8,NULL,NULL,-1234),(126,8,NULL,NULL,-1234),(127,8,NULL,NULL,-1234),(128,8,NULL,NULL,-1234),(129,8,NULL,NULL,-1234),(130,8,NULL,NULL,-1234),(131,8,NULL,NULL,-1234),(132,8,NULL,NULL,-1234),(133,8,NULL,NULL,-1234),(134,8,NULL,NULL,-1234),(135,8,NULL,NULL,-1234),(136,8,NULL,NULL,-1234),(137,8,NULL,NULL,-1234),(138,8,NULL,NULL,-1234),(139,8,NULL,NULL,-1234),(140,8,NULL,NULL,-1234),(141,8,NULL,NULL,-1234),(142,8,NULL,NULL,-1234),(143,8,NULL,NULL,-1234),(144,8,NULL,NULL,-1234),(145,8,NULL,NULL,-1234),(146,8,NULL,NULL,-1234),(147,8,NULL,NULL,-1234),(148,8,NULL,NULL,-1234),(149,8,NULL,NULL,-1234),(150,8,NULL,NULL,-1234),(151,8,NULL,NULL,-1234),(152,8,NULL,NULL,-1234),(153,8,NULL,NULL,-1234),(154,8,NULL,NULL,-1234),(155,8,NULL,NULL,-1234),(156,8,NULL,NULL,-1234),(157,8,NULL,NULL,-1234),(158,8,NULL,NULL,-1234),(159,8,NULL,NULL,-1234),(160,8,NULL,NULL,-1234),(161,8,NULL,NULL,-1234),(162,8,NULL,NULL,-1234),(163,8,NULL,NULL,-1234),(164,8,NULL,NULL,-1234),(165,8,NULL,NULL,-1234),(166,8,NULL,NULL,-1234),(167,8,NULL,NULL,-1234),(168,8,NULL,NULL,-1234),(169,8,NULL,NULL,-1234),(170,8,NULL,NULL,-1234),(171,8,NULL,NULL,-1234),(172,8,NULL,NULL,-1234),(173,8,NULL,NULL,-1234),(174,8,NULL,NULL,-1234),(175,8,NULL,NULL,-1234),(176,8,NULL,NULL,-1234),(177,8,NULL,NULL,-1234),(178,8,NULL,NULL,-1234),(179,8,NULL,NULL,-1234),(180,8,NULL,NULL,-1234),(181,8,NULL,NULL,-1234),(182,8,NULL,NULL,-1234),(183,8,NULL,NULL,-1234),(184,8,NULL,NULL,-1234),(185,8,NULL,NULL,-1234),(186,8,NULL,NULL,-1234),(187,8,NULL,NULL,-1234),(188,8,NULL,NULL,-1234),(189,8,NULL,NULL,-1234),(190,8,NULL,NULL,-1234),(191,8,NULL,NULL,-1234),(192,8,NULL,NULL,-1234),(193,8,NULL,NULL,-1234),(194,8,NULL,NULL,-1234),(195,8,NULL,NULL,-1234),(196,8,NULL,NULL,-1234),(197,8,NULL,NULL,-1234),(198,8,NULL,NULL,-1234),(199,8,NULL,NULL,-1234),(200,8,NULL,NULL,-1234),(201,8,NULL,NULL,-1234),(202,8,NULL,NULL,-1234),(203,8,NULL,NULL,-1234),(204,8,NULL,NULL,-1234),(205,8,NULL,NULL,-1234),(206,8,NULL,NULL,-1234),(207,8,NULL,NULL,-1234),(208,8,NULL,NULL,-1234),(209,8,NULL,NULL,-1234),(210,8,NULL,NULL,-1234),(211,8,NULL,NULL,-1234),(212,8,NULL,NULL,-1234),(213,8,NULL,NULL,-1234),(214,8,NULL,NULL,-1234),(215,8,NULL,NULL,-1234),(216,8,NULL,NULL,-1234),(217,8,NULL,NULL,-1234),(218,8,NULL,NULL,-1234),(219,8,NULL,NULL,-1234),(220,8,NULL,NULL,-1234),(221,8,NULL,NULL,-1234),(222,8,NULL,NULL,-1234),(223,8,NULL,NULL,-1234),(224,8,NULL,NULL,-1234),(225,8,NULL,NULL,-1234),(226,8,NULL,NULL,-1234),(227,8,NULL,NULL,-1234),(228,8,NULL,NULL,-1234),(229,8,NULL,NULL,-1234),(230,8,NULL,NULL,-1234),(231,8,NULL,NULL,-1234),(232,8,NULL,NULL,-1234),(233,8,NULL,NULL,-1234),(234,8,NULL,NULL,-1234),(235,8,NULL,NULL,-1234),(236,8,NULL,NULL,-1234),(237,8,NULL,NULL,-1234),(238,8,NULL,NULL,-1234),(239,8,NULL,NULL,-1234),(240,8,NULL,NULL,-1234),(241,8,NULL,NULL,-1234),(242,8,NULL,NULL,-1234),(243,8,NULL,NULL,-1234),(244,8,NULL,NULL,-1234),(245,8,NULL,NULL,-1234),(246,8,NULL,NULL,-1234),(247,8,NULL,NULL,-1234),(248,8,NULL,NULL,-1234),(249,8,NULL,NULL,-1234),(250,8,NULL,NULL,-1234),(251,8,NULL,NULL,-1234),(252,8,NULL,NULL,-1234),(253,8,NULL,NULL,-1234),(254,8,NULL,NULL,-1234),(255,8,NULL,NULL,-1234),(256,8,NULL,NULL,-1234),(257,8,NULL,NULL,-1234),(258,8,NULL,NULL,-1234),(259,8,NULL,NULL,-1234),(260,8,NULL,NULL,-1234),(261,8,NULL,NULL,-1234),(262,8,NULL,NULL,-1234),(263,8,NULL,NULL,-1234),(264,8,NULL,NULL,-1234),(265,8,NULL,NULL,-1234),(266,8,NULL,NULL,-1234),(267,8,NULL,NULL,-1234),(268,8,NULL,NULL,-1234),(269,8,NULL,NULL,-1234),(270,8,NULL,NULL,-1234),(271,8,NULL,NULL,-1234),(272,8,NULL,NULL,-1234),(273,8,NULL,NULL,-1234),(274,8,NULL,NULL,-1234),(275,8,NULL,NULL,-1234),(276,8,NULL,NULL,-1234),(277,8,NULL,NULL,-1234),(278,8,NULL,NULL,-1234),(279,8,NULL,NULL,-1234),(280,8,NULL,NULL,-1234),(281,8,NULL,NULL,-1234),(282,8,NULL,NULL,-1234),(283,8,NULL,NULL,-1234),(284,8,NULL,NULL,-1234),(285,8,NULL,NULL,-1234),(286,8,NULL,NULL,-1234),(287,8,NULL,NULL,-1234),(288,8,NULL,NULL,-1234),(289,8,NULL,NULL,-1234),(290,8,NULL,NULL,-1234),(291,8,NULL,NULL,-1234),(292,8,NULL,NULL,-1234),(293,8,NULL,NULL,-1234),(294,8,NULL,NULL,-1234),(295,8,NULL,NULL,-1234),(296,8,NULL,NULL,-1234),(297,8,NULL,NULL,-1234),(298,8,NULL,NULL,-1234),(299,8,NULL,NULL,-1234),(300,8,NULL,NULL,-1234),(301,8,NULL,NULL,-1234),(302,8,NULL,NULL,-1234),(303,8,NULL,NULL,-1234),(304,8,NULL,NULL,-1234),(305,8,NULL,NULL,-1234),(306,8,NULL,NULL,-1234),(307,8,NULL,NULL,-1234),(308,8,NULL,NULL,-1234),(309,8,NULL,NULL,-1234),(310,8,NULL,NULL,-1234),(311,8,NULL,NULL,-1234),(312,8,NULL,NULL,-1234),(313,8,NULL,NULL,-1234),(314,8,NULL,NULL,-1234),(315,8,NULL,NULL,-1234),(316,8,NULL,NULL,-1234),(317,8,NULL,NULL,-1234),(318,8,NULL,NULL,-1234),(319,8,NULL,NULL,-1234),(320,8,NULL,NULL,-1234),(321,8,NULL,NULL,-1234),(322,8,NULL,NULL,-1234),(323,8,NULL,NULL,-1234),(324,8,NULL,NULL,-1234),(325,8,NULL,NULL,-1234),(326,8,NULL,NULL,-1234),(327,8,NULL,NULL,-1234),(328,8,NULL,NULL,-1234),(329,8,NULL,NULL,-1234),(330,8,NULL,NULL,-1234),(331,8,NULL,NULL,-1234),(332,8,NULL,NULL,-1234),(333,8,NULL,NULL,-1234),(334,8,NULL,NULL,-1234),(335,8,NULL,NULL,-1234),(336,8,NULL,NULL,-1234),(337,8,NULL,NULL,-1234),(338,8,NULL,NULL,-1234),(339,8,NULL,NULL,-1234),(340,8,NULL,NULL,-1234),(341,8,NULL,NULL,-1234),(342,8,NULL,NULL,-1234),(343,8,NULL,NULL,-1234),(344,8,NULL,NULL,-1234),(345,8,NULL,NULL,-1234),(346,8,NULL,NULL,-1234),(347,8,NULL,NULL,-1234),(348,8,NULL,NULL,-1234),(349,8,NULL,NULL,-1234),(350,8,NULL,NULL,-1234),(351,8,NULL,NULL,-1234),(352,8,NULL,NULL,-1234),(353,8,NULL,NULL,-1234),(354,8,NULL,NULL,-1234),(355,8,NULL,NULL,-1234),(356,8,NULL,NULL,-1234),(357,8,NULL,NULL,-1234),(358,8,NULL,NULL,-1234),(359,8,NULL,NULL,-1234),(360,8,NULL,NULL,-1234),(361,8,NULL,NULL,-1234),(362,8,NULL,NULL,-1234),(363,8,NULL,NULL,-1234),(364,8,NULL,NULL,-1234),(365,8,NULL,NULL,-1234),(366,8,NULL,NULL,-1234),(367,8,NULL,NULL,-1234),(368,8,NULL,NULL,-1234),(369,8,NULL,NULL,-1234),(370,8,NULL,NULL,-1234),(371,8,NULL,NULL,-1234),(372,8,NULL,NULL,-1234),(373,8,NULL,NULL,-1234),(374,8,NULL,NULL,-1234),(375,8,NULL,NULL,-1234),(376,8,NULL,NULL,-1234),(377,8,NULL,NULL,-1234),(378,8,NULL,NULL,-1234),(379,8,NULL,NULL,-1234),(380,8,NULL,NULL,-1234),(381,8,NULL,NULL,-1234),(382,8,NULL,NULL,-1234),(383,8,NULL,NULL,-1234),(384,8,NULL,NULL,-1234),(385,8,NULL,NULL,-1234),(386,8,NULL,NULL,-1234),(387,8,NULL,NULL,-1234),(388,8,NULL,NULL,-1234),(389,8,NULL,NULL,-1234),(390,8,NULL,NULL,-1234),(391,8,NULL,NULL,-1234),(392,8,NULL,NULL,-1234),(393,8,NULL,NULL,-1234),(394,8,NULL,NULL,-1234),(395,8,NULL,NULL,-1234),(396,8,NULL,NULL,-1234),(397,8,NULL,NULL,-1234),(398,8,NULL,NULL,-1234),(399,8,NULL,NULL,-1234),(400,8,NULL,NULL,-1234),(401,8,NULL,NULL,-1234),(402,8,NULL,NULL,-1234),(403,8,NULL,NULL,-1234),(404,8,NULL,NULL,-1234),(405,8,NULL,NULL,-1234),(406,8,NULL,NULL,-1234),(407,8,NULL,NULL,-1234),(408,8,NULL,NULL,-1234),(409,8,NULL,NULL,-1234),(410,8,NULL,NULL,-1234),(411,8,NULL,NULL,-1234),(412,8,NULL,NULL,-1234),(413,8,NULL,NULL,-1234),(414,8,NULL,NULL,-1234),(415,8,NULL,NULL,-1234),(416,8,NULL,NULL,-1234),(417,8,NULL,NULL,-1234),(418,8,NULL,NULL,-1234),(419,8,NULL,NULL,-1234),(420,8,NULL,NULL,-1234),(421,8,NULL,NULL,-1234),(422,8,NULL,NULL,-1234),(423,8,NULL,NULL,-1234),(424,8,NULL,NULL,-1234),(425,8,NULL,NULL,-1234),(426,8,NULL,NULL,-1234),(427,8,NULL,NULL,-1234),(428,8,NULL,NULL,-1234),(429,8,NULL,NULL,-1234),(430,8,NULL,NULL,-1234),(431,8,NULL,NULL,-1234),(432,8,NULL,NULL,-1234),(433,8,NULL,NULL,-1234),(434,9,NULL,NULL,-1234),(435,47,NULL,NULL,-1234),(436,47,NULL,NULL,-1234),(437,49,NULL,NULL,-1234),(438,49,NULL,NULL,-1234),(439,51,NULL,NULL,-1234),(440,51,NULL,NULL,-1234),(441,52,NULL,NULL,-1234),(442,52,NULL,NULL,-1234),(443,53,NULL,NULL,-1234),(444,53,NULL,NULL,-1234),(445,54,NULL,NULL,-1234),(446,54,NULL,NULL,-1234),(447,56,NULL,NULL,-1234),(448,56,NULL,NULL,-1234),(449,56,NULL,NULL,-1234),(450,58,NULL,NULL,-1234),(451,72,NULL,NULL,-1234),(452,78,NULL,NULL,-1234),(453,78,NULL,NULL,-1234),(454,79,NULL,NULL,-1234),(455,79,NULL,NULL,-1234),(456,79,NULL,NULL,-1234),(457,79,NULL,NULL,-1234),(458,80,NULL,NULL,-1234),(459,80,NULL,NULL,-1234),(460,81,NULL,NULL,-1234),(461,81,NULL,NULL,-1234),(462,81,NULL,NULL,-1234),(463,81,NULL,NULL,-1234),(464,82,NULL,NULL,-1234),(465,82,NULL,NULL,-1234),(466,83,NULL,NULL,-1234),(467,83,NULL,NULL,-1234),(468,83,NULL,NULL,-1234),(469,83,NULL,NULL,-1234),(470,84,NULL,NULL,-1234),(471,84,NULL,NULL,-1234),(472,85,NULL,NULL,-1234),(473,85,NULL,NULL,-1234),(474,85,NULL,NULL,-1234),(475,85,NULL,NULL,-1234),(476,86,NULL,NULL,-1234),(477,86,NULL,NULL,-1234),(478,87,NULL,NULL,-1234),(479,87,NULL,NULL,-1234),(480,87,NULL,NULL,-1234),(481,87,NULL,NULL,-1234),(482,88,NULL,NULL,-1234),(483,88,NULL,NULL,-1234),(484,89,NULL,NULL,-1234),(485,89,NULL,NULL,-1234),(486,89,NULL,NULL,-1234),(487,89,NULL,NULL,-1234),(488,90,NULL,NULL,-1234),(489,90,NULL,NULL,-1234),(490,91,NULL,NULL,-1234),(491,91,NULL,NULL,-1234),(492,91,NULL,NULL,-1234),(493,91,NULL,NULL,-1234),(494,92,NULL,NULL,-1234),(495,92,NULL,NULL,-1234),(496,93,NULL,NULL,-1234),(497,93,NULL,NULL,-1234),(498,93,NULL,NULL,-1234),(499,93,NULL,NULL,-1234),(500,94,NULL,NULL,-1234),(501,94,NULL,NULL,-1234),(502,95,NULL,NULL,-1234),(503,95,NULL,NULL,-1234),(504,95,NULL,NULL,-1234),(505,95,NULL,NULL,-1234),(506,96,NULL,NULL,-1234),(507,96,NULL,NULL,-1234),(508,97,NULL,NULL,-1234),(509,97,NULL,NULL,-1234),(510,97,NULL,NULL,-1234),(511,97,NULL,NULL,-1234),(512,98,NULL,NULL,-1234),(513,98,NULL,NULL,-1234),(514,99,NULL,NULL,-1234),(515,99,NULL,NULL,-1234),(516,99,NULL,NULL,-1234),(517,99,NULL,NULL,-1234),(518,100,NULL,NULL,-1234),(519,100,NULL,NULL,-1234),(520,101,NULL,NULL,-1234),(521,101,NULL,NULL,-1234),(522,101,NULL,NULL,-1234),(523,101,NULL,NULL,-1234),(524,102,NULL,NULL,-1234),(525,102,NULL,NULL,-1234),(526,103,NULL,NULL,-1234),(527,103,NULL,NULL,-1234),(528,103,NULL,NULL,-1234),(529,103,NULL,NULL,-1234),(530,104,NULL,NULL,-1234),(531,104,NULL,NULL,-1234),(532,105,NULL,NULL,-1234),(533,105,NULL,NULL,-1234),(534,105,NULL,NULL,-1234),(535,105,NULL,NULL,-1234),(536,106,NULL,NULL,-1234),(537,106,NULL,NULL,-1234),(538,107,NULL,NULL,-1234),(539,107,NULL,NULL,-1234),(540,107,NULL,NULL,-1234),(541,107,NULL,NULL,-1234),(542,108,NULL,NULL,-1234),(543,108,NULL,NULL,-1234),(544,109,NULL,NULL,-1234),(545,109,NULL,NULL,-1234),(546,109,NULL,NULL,-1234),(547,109,NULL,NULL,-1234),(548,110,NULL,NULL,-1234),(549,110,NULL,NULL,-1234),(550,111,NULL,NULL,-1234),(551,111,NULL,NULL,-1234),(552,111,NULL,NULL,-1234),(553,111,NULL,NULL,-1234),(554,115,NULL,NULL,-1234),(555,115,NULL,NULL,-1234),(556,115,NULL,NULL,-1234),(557,115,NULL,NULL,-1234),(558,115,NULL,NULL,-1234),(559,115,NULL,NULL,-1234),(560,118,NULL,NULL,-1234),(561,119,NULL,NULL,-1234),(562,119,NULL,NULL,-1234),(563,120,NULL,NULL,-1234),(564,120,NULL,NULL,-1234),(565,120,NULL,NULL,-1234),(566,120,NULL,NULL,-1234),(567,120,NULL,NULL,-1234),(568,120,NULL,NULL,-1234),(569,120,NULL,NULL,-1234),(570,120,NULL,NULL,-1234),(571,120,NULL,NULL,-1234),(572,120,NULL,NULL,-1234),(573,120,NULL,NULL,-1234),(574,120,NULL,NULL,-1234),(575,120,NULL,NULL,-1234),(576,120,NULL,NULL,-1234),(577,120,NULL,NULL,-1234),(578,121,NULL,NULL,-1234),(579,122,NULL,NULL,-1234),(580,123,NULL,NULL,-1234),(581,123,NULL,NULL,-1234),(582,123,NULL,NULL,-1234),(583,123,NULL,NULL,-1234),(584,123,NULL,NULL,-1234),(585,123,NULL,NULL,-1234),(586,123,NULL,NULL,-1234),(587,123,NULL,NULL,-1234),(588,123,NULL,NULL,-1234),(589,123,NULL,NULL,-1234),(590,123,NULL,NULL,-1234),(591,123,NULL,NULL,-1234),(592,123,NULL,NULL,-1234),(593,123,NULL,NULL,-1234),(594,123,NULL,NULL,-1234),(595,124,NULL,NULL,-1234),(596,124,NULL,NULL,-1234),(597,124,NULL,NULL,-1234),(598,124,NULL,NULL,-1234),(599,124,NULL,NULL,-1234),(600,124,NULL,NULL,-1234),(601,124,NULL,NULL,-1234),(602,124,NULL,NULL,-1234),(603,124,NULL,NULL,-1234),(604,124,NULL,NULL,-1234),(605,124,NULL,NULL,-1234),(606,124,NULL,NULL,-1234),(607,124,NULL,NULL,-1234),(608,124,NULL,NULL,-1234),(609,124,NULL,NULL,-1234),(610,125,NULL,NULL,-1234),(611,126,NULL,NULL,-1234),(612,126,NULL,NULL,-1234),(613,127,NULL,NULL,-1234),(614,127,NULL,NULL,-1234),(615,127,NULL,NULL,-1234),(616,127,NULL,NULL,-1234),(617,127,NULL,NULL,-1234),(618,127,NULL,NULL,-1234),(619,127,NULL,NULL,-1234),(620,127,NULL,NULL,-1234),(621,127,NULL,NULL,-1234),(622,127,NULL,NULL,-1234),(623,127,NULL,NULL,-1234),(624,127,NULL,NULL,-1234),(625,127,NULL,NULL,-1234),(626,128,NULL,NULL,-1234),(627,129,NULL,NULL,-1234),(628,130,NULL,NULL,-1234),(629,130,NULL,NULL,-1234),(630,130,NULL,NULL,-1234),(631,130,NULL,NULL,-1234),(632,130,NULL,NULL,-1234),(633,130,NULL,NULL,-1234),(634,130,NULL,NULL,-1234),(635,130,NULL,NULL,-1234),(636,130,NULL,NULL,-1234),(637,130,NULL,NULL,-1234),(638,130,NULL,NULL,-1234),(639,130,NULL,NULL,-1234),(640,130,NULL,NULL,-1234),(641,131,NULL,NULL,-1234),(642,131,NULL,NULL,-1234),(643,131,NULL,NULL,-1234),(644,131,NULL,NULL,-1234),(645,131,NULL,NULL,-1234),(646,131,NULL,NULL,-1234),(647,131,NULL,NULL,-1234),(648,131,NULL,NULL,-1234),(649,131,NULL,NULL,-1234),(650,131,NULL,NULL,-1234),(651,131,NULL,NULL,-1234),(652,131,NULL,NULL,-1234),(653,131,NULL,NULL,-1234),(654,132,NULL,NULL,-1234),(655,133,NULL,NULL,-1234),(656,133,NULL,NULL,-1234),(657,134,NULL,NULL,-1234),(658,134,NULL,NULL,-1234),(659,134,NULL,NULL,-1234),(660,134,NULL,NULL,-1234),(661,134,NULL,NULL,-1234),(662,134,NULL,NULL,-1234),(663,134,NULL,NULL,-1234),(664,134,NULL,NULL,-1234),(665,134,NULL,NULL,-1234),(666,134,NULL,NULL,-1234),(667,134,NULL,NULL,-1234),(668,134,NULL,NULL,-1234),(669,134,NULL,NULL,-1234),(670,134,NULL,NULL,-1234),(671,134,NULL,NULL,-1234),(672,134,NULL,NULL,-1234),(673,135,NULL,NULL,-1234),(674,136,NULL,NULL,-1234),(675,137,NULL,NULL,-1234),(676,137,NULL,NULL,-1234),(677,137,NULL,NULL,-1234),(678,137,NULL,NULL,-1234),(679,137,NULL,NULL,-1234),(680,137,NULL,NULL,-1234),(681,137,NULL,NULL,-1234),(682,137,NULL,NULL,-1234),(683,137,NULL,NULL,-1234),(684,137,NULL,NULL,-1234),(685,137,NULL,NULL,-1234),(686,137,NULL,NULL,-1234),(687,137,NULL,NULL,-1234),(688,137,NULL,NULL,-1234),(689,137,NULL,NULL,-1234),(690,137,NULL,NULL,-1234),(691,138,NULL,NULL,-1234),(692,138,NULL,NULL,-1234),(693,138,NULL,NULL,-1234),(694,138,NULL,NULL,-1234),(695,138,NULL,NULL,-1234),(696,138,NULL,NULL,-1234),(697,138,NULL,NULL,-1234),(698,138,NULL,NULL,-1234),(699,138,NULL,NULL,-1234),(700,138,NULL,NULL,-1234),(701,138,NULL,NULL,-1234),(702,138,NULL,NULL,-1234),(703,138,NULL,NULL,-1234),(704,138,NULL,NULL,-1234),(705,138,NULL,NULL,-1234),(706,138,NULL,NULL,-1234),(707,139,NULL,NULL,-1234),(708,140,NULL,NULL,-1234),(709,140,NULL,NULL,-1234),(710,141,NULL,NULL,-1234),(711,141,NULL,NULL,-1234),(712,141,NULL,NULL,-1234),(713,141,NULL,NULL,-1234),(714,141,NULL,NULL,-1234),(715,141,NULL,NULL,-1234),(716,141,NULL,NULL,-1234),(717,141,NULL,NULL,-1234),(718,141,NULL,NULL,-1234),(719,141,NULL,NULL,-1234),(720,141,NULL,NULL,-1234),(721,141,NULL,NULL,-1234),(722,141,NULL,NULL,-1234),(723,142,NULL,NULL,-1234),(724,143,NULL,NULL,-1234),(725,144,NULL,NULL,-1234),(726,144,NULL,NULL,-1234),(727,144,NULL,NULL,-1234),(728,144,NULL,NULL,-1234),(729,144,NULL,NULL,-1234),(730,144,NULL,NULL,-1234),(731,144,NULL,NULL,-1234),(732,144,NULL,NULL,-1234),(733,144,NULL,NULL,-1234),(734,144,NULL,NULL,-1234),(735,144,NULL,NULL,-1234),(736,144,NULL,NULL,-1234),(737,144,NULL,NULL,-1234),(738,145,NULL,NULL,-1234),(739,145,NULL,NULL,-1234),(740,145,NULL,NULL,-1234),(741,145,NULL,NULL,-1234),(742,145,NULL,NULL,-1234),(743,145,NULL,NULL,-1234),(744,145,NULL,NULL,-1234),(745,145,NULL,NULL,-1234),(746,145,NULL,NULL,-1234),(747,145,NULL,NULL,-1234),(748,145,NULL,NULL,-1234),(749,145,NULL,NULL,-1234),(750,145,NULL,NULL,-1234),(751,146,NULL,NULL,-1234),(752,147,NULL,NULL,-1234),(753,147,NULL,NULL,-1234),(754,148,NULL,NULL,-1234),(755,148,NULL,NULL,-1234),(756,148,NULL,NULL,-1234),(757,148,NULL,NULL,-1234),(758,148,NULL,NULL,-1234),(759,148,NULL,NULL,-1234),(760,148,NULL,NULL,-1234),(761,148,NULL,NULL,-1234),(762,148,NULL,NULL,-1234),(763,148,NULL,NULL,-1234),(764,148,NULL,NULL,-1234),(765,148,NULL,NULL,-1234),(766,148,NULL,NULL,-1234),(767,149,NULL,NULL,-1234),(768,150,NULL,NULL,-1234),(769,151,NULL,NULL,-1234),(770,151,NULL,NULL,-1234),(771,151,NULL,NULL,-1234),(772,151,NULL,NULL,-1234),(773,151,NULL,NULL,-1234),(774,151,NULL,NULL,-1234),(775,151,NULL,NULL,-1234),(776,151,NULL,NULL,-1234),(777,151,NULL,NULL,-1234),(778,151,NULL,NULL,-1234),(779,151,NULL,NULL,-1234),(780,151,NULL,NULL,-1234),(781,151,NULL,NULL,-1234),(782,152,NULL,NULL,-1234),(783,152,NULL,NULL,-1234),(784,152,NULL,NULL,-1234),(785,152,NULL,NULL,-1234),(786,152,NULL,NULL,-1234),(787,152,NULL,NULL,-1234),(788,152,NULL,NULL,-1234),(789,152,NULL,NULL,-1234),(790,152,NULL,NULL,-1234),(791,152,NULL,NULL,-1234),(792,152,NULL,NULL,-1234),(793,152,NULL,NULL,-1234),(794,152,NULL,NULL,-1234),(795,153,NULL,NULL,-1234),(796,154,NULL,NULL,-1234),(797,154,NULL,NULL,-1234),(798,155,NULL,NULL,-1234),(799,155,NULL,NULL,-1234),(800,155,NULL,NULL,-1234),(801,155,NULL,NULL,-1234),(802,155,NULL,NULL,-1234),(803,155,NULL,NULL,-1234),(804,155,NULL,NULL,-1234),(805,155,NULL,NULL,-1234),(806,155,NULL,NULL,-1234),(807,155,NULL,NULL,-1234),(808,155,NULL,NULL,-1234),(809,155,NULL,NULL,-1234),(810,155,NULL,NULL,-1234),(811,155,NULL,NULL,-1234),(812,155,NULL,NULL,-1234),(813,155,NULL,NULL,-1234),(814,155,NULL,NULL,-1234),(815,155,NULL,NULL,-1234),(816,156,NULL,NULL,-1234),(817,157,NULL,NULL,-1234),(818,158,NULL,NULL,-1234),(819,158,NULL,NULL,-1234),(820,158,NULL,NULL,-1234),(821,158,NULL,NULL,-1234),(822,158,NULL,NULL,-1234),(823,158,NULL,NULL,-1234),(824,158,NULL,NULL,-1234),(825,158,NULL,NULL,-1234),(826,158,NULL,NULL,-1234),(827,158,NULL,NULL,-1234),(828,158,NULL,NULL,-1234),(829,158,NULL,NULL,-1234),(830,158,NULL,NULL,-1234),(831,158,NULL,NULL,-1234),(832,158,NULL,NULL,-1234),(833,158,NULL,NULL,-1234),(834,158,NULL,NULL,-1234),(835,158,NULL,NULL,-1234),(836,159,NULL,NULL,-1234),(837,159,NULL,NULL,-1234),(838,159,NULL,NULL,-1234),(839,159,NULL,NULL,-1234),(840,159,NULL,NULL,-1234),(841,159,NULL,NULL,-1234),(842,159,NULL,NULL,-1234),(843,159,NULL,NULL,-1234),(844,159,NULL,NULL,-1234),(845,159,NULL,NULL,-1234),(846,159,NULL,NULL,-1234),(847,159,NULL,NULL,-1234),(848,159,NULL,NULL,-1234),(849,159,NULL,NULL,-1234),(850,159,NULL,NULL,-1234),(851,159,NULL,NULL,-1234),(852,159,NULL,NULL,-1234),(853,159,NULL,NULL,-1234),(854,160,NULL,NULL,-1234),(855,161,NULL,NULL,-1234),(856,161,NULL,NULL,-1234),(857,162,NULL,NULL,-1234),(858,162,NULL,NULL,-1234),(859,162,NULL,NULL,-1234),(860,162,NULL,NULL,-1234),(861,162,NULL,NULL,-1234),(862,162,NULL,NULL,-1234),(863,162,NULL,NULL,-1234),(864,162,NULL,NULL,-1234),(865,162,NULL,NULL,-1234),(866,162,NULL,NULL,-1234),(867,162,NULL,NULL,-1234),(868,162,NULL,NULL,-1234),(869,162,NULL,NULL,-1234),(870,163,NULL,NULL,-1234),(871,164,NULL,NULL,-1234),(872,165,NULL,NULL,-1234),(873,165,NULL,NULL,-1234),(874,165,NULL,NULL,-1234),(875,165,NULL,NULL,-1234),(876,165,NULL,NULL,-1234),(877,165,NULL,NULL,-1234),(878,165,NULL,NULL,-1234),(879,165,NULL,NULL,-1234),(880,165,NULL,NULL,-1234),(881,165,NULL,NULL,-1234),(882,165,NULL,NULL,-1234),(883,165,NULL,NULL,-1234),(884,165,NULL,NULL,-1234),(885,166,NULL,NULL,-1234),(886,166,NULL,NULL,-1234),(887,166,NULL,NULL,-1234),(888,166,NULL,NULL,-1234),(889,166,NULL,NULL,-1234),(890,166,NULL,NULL,-1234),(891,166,NULL,NULL,-1234),(892,166,NULL,NULL,-1234),(893,166,NULL,NULL,-1234),(894,166,NULL,NULL,-1234),(895,166,NULL,NULL,-1234),(896,166,NULL,NULL,-1234),(897,166,NULL,NULL,-1234),(898,167,NULL,NULL,-1234),(899,168,NULL,NULL,-1234),(900,168,NULL,NULL,-1234),(901,169,NULL,NULL,-1234),(902,169,NULL,NULL,-1234),(903,169,NULL,NULL,-1234),(904,169,NULL,NULL,-1234),(905,169,NULL,NULL,-1234),(906,169,NULL,NULL,-1234),(907,169,NULL,NULL,-1234),(908,169,NULL,NULL,-1234),(909,169,NULL,NULL,-1234),(910,169,NULL,NULL,-1234),(911,169,NULL,NULL,-1234),(912,169,NULL,NULL,-1234),(913,169,NULL,NULL,-1234),(914,169,NULL,NULL,-1234),(915,170,NULL,NULL,-1234),(916,171,NULL,NULL,-1234),(917,172,NULL,NULL,-1234),(918,172,NULL,NULL,-1234),(919,172,NULL,NULL,-1234),(920,172,NULL,NULL,-1234),(921,172,NULL,NULL,-1234),(922,172,NULL,NULL,-1234),(923,172,NULL,NULL,-1234),(924,172,NULL,NULL,-1234),(925,172,NULL,NULL,-1234),(926,172,NULL,NULL,-1234),(927,172,NULL,NULL,-1234),(928,172,NULL,NULL,-1234),(929,172,NULL,NULL,-1234),(930,172,NULL,NULL,-1234),(931,173,NULL,NULL,-1234),(932,173,NULL,NULL,-1234),(933,173,NULL,NULL,-1234),(934,173,NULL,NULL,-1234),(935,173,NULL,NULL,-1234),(936,173,NULL,NULL,-1234),(937,173,NULL,NULL,-1234),(938,173,NULL,NULL,-1234),(939,173,NULL,NULL,-1234),(940,173,NULL,NULL,-1234),(941,173,NULL,NULL,-1234),(942,173,NULL,NULL,-1234),(943,173,NULL,NULL,-1234),(944,173,NULL,NULL,-1234),(945,174,NULL,NULL,-1234),(946,175,NULL,NULL,-1234),(947,175,NULL,NULL,-1234),(948,176,NULL,NULL,-1234),(949,176,NULL,NULL,-1234),(950,176,NULL,NULL,-1234),(951,176,NULL,NULL,-1234),(952,176,NULL,NULL,-1234),(953,176,NULL,NULL,-1234),(954,176,NULL,NULL,-1234),(955,176,NULL,NULL,-1234),(956,176,NULL,NULL,-1234),(957,176,NULL,NULL,-1234),(958,176,NULL,NULL,-1234),(959,176,NULL,NULL,-1234),(960,176,NULL,NULL,-1234),(961,176,NULL,NULL,-1234),(962,176,NULL,NULL,-1234),(963,177,NULL,NULL,-1234),(964,178,NULL,NULL,-1234),(965,179,NULL,NULL,-1234),(966,179,NULL,NULL,-1234),(967,179,NULL,NULL,-1234),(968,179,NULL,NULL,-1234),(969,179,NULL,NULL,-1234),(970,179,NULL,NULL,-1234),(971,179,NULL,NULL,-1234),(972,179,NULL,NULL,-1234),(973,179,NULL,NULL,-1234),(974,179,NULL,NULL,-1234),(975,179,NULL,NULL,-1234),(976,179,NULL,NULL,-1234),(977,179,NULL,NULL,-1234),(978,179,NULL,NULL,-1234),(979,179,NULL,NULL,-1234),(980,180,NULL,NULL,-1234),(981,180,NULL,NULL,-1234),(982,180,NULL,NULL,-1234),(983,180,NULL,NULL,-1234),(984,180,NULL,NULL,-1234),(985,180,NULL,NULL,-1234),(986,180,NULL,NULL,-1234),(987,180,NULL,NULL,-1234),(988,180,NULL,NULL,-1234),(989,180,NULL,NULL,-1234),(990,180,NULL,NULL,-1234),(991,180,NULL,NULL,-1234),(992,180,NULL,NULL,-1234),(993,180,NULL,NULL,-1234),(994,180,NULL,NULL,-1234),(995,181,NULL,NULL,-1234),(996,182,NULL,NULL,-1234),(997,182,NULL,NULL,-1234),(998,183,NULL,NULL,-1234),(999,183,NULL,NULL,-1234),(1000,183,NULL,NULL,-1234),(1001,183,NULL,NULL,-1234),(1002,183,NULL,NULL,-1234),(1003,183,NULL,NULL,-1234),(1004,183,NULL,NULL,-1234),(1005,183,NULL,NULL,-1234),(1006,183,NULL,NULL,-1234),(1007,183,NULL,NULL,-1234),(1008,183,NULL,NULL,-1234),(1009,183,NULL,NULL,-1234),(1010,183,NULL,NULL,-1234),(1011,183,NULL,NULL,-1234),(1012,183,NULL,NULL,-1234),(1013,184,NULL,NULL,-1234),(1014,185,NULL,NULL,-1234),(1015,186,NULL,NULL,-1234),(1016,186,NULL,NULL,-1234),(1017,186,NULL,NULL,-1234),(1018,186,NULL,NULL,-1234),(1019,186,NULL,NULL,-1234),(1020,186,NULL,NULL,-1234),(1021,186,NULL,NULL,-1234),(1022,186,NULL,NULL,-1234),(1023,186,NULL,NULL,-1234),(1024,186,NULL,NULL,-1234),(1025,186,NULL,NULL,-1234),(1026,186,NULL,NULL,-1234),(1027,186,NULL,NULL,-1234),(1028,186,NULL,NULL,-1234),(1029,186,NULL,NULL,-1234),(1030,187,NULL,NULL,-1234),(1031,187,NULL,NULL,-1234),(1032,187,NULL,NULL,-1234),(1033,187,NULL,NULL,-1234),(1034,187,NULL,NULL,-1234),(1035,187,NULL,NULL,-1234),(1036,187,NULL,NULL,-1234),(1037,187,NULL,NULL,-1234),(1038,187,NULL,NULL,-1234),(1039,187,NULL,NULL,-1234),(1040,187,NULL,NULL,-1234),(1041,187,NULL,NULL,-1234),(1042,187,NULL,NULL,-1234),(1043,187,NULL,NULL,-1234),(1044,187,NULL,NULL,-1234),(1045,188,NULL,NULL,-1234),(1046,189,NULL,NULL,-1234),(1047,189,NULL,NULL,-1234),(1048,190,NULL,NULL,-1234),(1049,190,NULL,NULL,-1234),(1050,190,NULL,NULL,-1234),(1051,190,NULL,NULL,-1234),(1052,190,NULL,NULL,-1234),(1053,190,NULL,NULL,-1234),(1054,190,NULL,NULL,-1234),(1055,190,NULL,NULL,-1234),(1056,190,NULL,NULL,-1234),(1057,190,NULL,NULL,-1234),(1058,190,NULL,NULL,-1234),(1059,190,NULL,NULL,-1234),(1060,190,NULL,NULL,-1234),(1061,190,NULL,NULL,-1234),(1062,190,NULL,NULL,-1234),(1063,190,NULL,NULL,-1234),(1064,190,NULL,NULL,-1234),(1065,190,NULL,NULL,-1234),(1066,190,NULL,NULL,-1234),(1067,190,NULL,NULL,-1234),(1068,190,NULL,NULL,-1234),(1069,190,NULL,NULL,-1234),(1070,191,NULL,NULL,-1234),(1071,192,NULL,NULL,-1234),(1072,193,NULL,NULL,-1234),(1073,193,NULL,NULL,-1234),(1074,193,NULL,NULL,-1234),(1075,193,NULL,NULL,-1234),(1076,193,NULL,NULL,-1234),(1077,193,NULL,NULL,-1234),(1078,193,NULL,NULL,-1234),(1079,193,NULL,NULL,-1234),(1080,193,NULL,NULL,-1234),(1081,193,NULL,NULL,-1234),(1082,193,NULL,NULL,-1234),(1083,193,NULL,NULL,-1234),(1084,193,NULL,NULL,-1234),(1085,193,NULL,NULL,-1234),(1086,193,NULL,NULL,-1234),(1087,193,NULL,NULL,-1234),(1088,193,NULL,NULL,-1234),(1089,193,NULL,NULL,-1234),(1090,193,NULL,NULL,-1234),(1091,193,NULL,NULL,-1234),(1092,193,NULL,NULL,-1234),(1093,193,NULL,NULL,-1234),(1094,194,NULL,NULL,-1234),(1095,194,NULL,NULL,-1234),(1096,194,NULL,NULL,-1234),(1097,194,NULL,NULL,-1234),(1098,194,NULL,NULL,-1234),(1099,194,NULL,NULL,-1234),(1100,194,NULL,NULL,-1234),(1101,194,NULL,NULL,-1234),(1102,194,NULL,NULL,-1234),(1103,194,NULL,NULL,-1234),(1104,194,NULL,NULL,-1234),(1105,194,NULL,NULL,-1234),(1106,194,NULL,NULL,-1234),(1107,194,NULL,NULL,-1234),(1108,194,NULL,NULL,-1234),(1109,194,NULL,NULL,-1234),(1110,194,NULL,NULL,-1234),(1111,194,NULL,NULL,-1234),(1112,194,NULL,NULL,-1234),(1113,194,NULL,NULL,-1234),(1114,194,NULL,NULL,-1234),(1115,194,NULL,NULL,-1234),(1116,195,NULL,NULL,-1234),(1117,196,NULL,NULL,-1234),(1118,196,NULL,NULL,-1234),(1119,197,NULL,NULL,-1234),(1120,197,NULL,NULL,-1234),(1121,197,NULL,NULL,-1234),(1122,197,NULL,NULL,-1234),(1123,197,NULL,NULL,-1234),(1124,197,NULL,NULL,-1234),(1125,197,NULL,NULL,-1234),(1126,197,NULL,NULL,-1234),(1127,197,NULL,NULL,-1234),(1128,197,NULL,NULL,-1234),(1129,197,NULL,NULL,-1234),(1130,197,NULL,NULL,-1234),(1131,197,NULL,NULL,-1234),(1132,197,NULL,NULL,-1234),(1133,197,NULL,NULL,-1234),(1134,197,NULL,NULL,-1234),(1135,197,NULL,NULL,-1234),(1136,197,NULL,NULL,-1234),(1137,198,NULL,NULL,-1234),(1138,199,NULL,NULL,-1234),(1139,200,NULL,NULL,-1234),(1140,200,NULL,NULL,-1234),(1141,200,NULL,NULL,-1234),(1142,200,NULL,NULL,-1234),(1143,200,NULL,NULL,-1234),(1144,200,NULL,NULL,-1234),(1145,200,NULL,NULL,-1234),(1146,200,NULL,NULL,-1234),(1147,200,NULL,NULL,-1234),(1148,200,NULL,NULL,-1234),(1149,200,NULL,NULL,-1234),(1150,200,NULL,NULL,-1234),(1151,200,NULL,NULL,-1234),(1152,200,NULL,NULL,-1234),(1153,200,NULL,NULL,-1234),(1154,200,NULL,NULL,-1234),(1155,200,NULL,NULL,-1234),(1156,200,NULL,NULL,-1234),(1157,201,NULL,NULL,-1234),(1158,201,NULL,NULL,-1234),(1159,201,NULL,NULL,-1234),(1160,201,NULL,NULL,-1234),(1161,201,NULL,NULL,-1234),(1162,201,NULL,NULL,-1234),(1163,201,NULL,NULL,-1234),(1164,201,NULL,NULL,-1234),(1165,201,NULL,NULL,-1234),(1166,201,NULL,NULL,-1234),(1167,201,NULL,NULL,-1234),(1168,201,NULL,NULL,-1234),(1169,201,NULL,NULL,-1234),(1170,201,NULL,NULL,-1234),(1171,201,NULL,NULL,-1234),(1172,201,NULL,NULL,-1234),(1173,201,NULL,NULL,-1234),(1174,201,NULL,NULL,-1234),(1175,204,NULL,NULL,-1234),(1176,204,NULL,NULL,-1234),(1177,204,NULL,NULL,-1234),(1178,205,NULL,NULL,-1234),(1179,205,NULL,NULL,-1234),(1180,205,NULL,NULL,-1234),(1181,206,NULL,NULL,-1234),(1182,206,NULL,NULL,-1234),(1183,206,NULL,NULL,-1234),(1184,207,NULL,NULL,-1234),(1185,207,NULL,NULL,-1234),(1186,207,NULL,NULL,-1234),(1187,208,NULL,NULL,-1234),(1188,208,NULL,NULL,-1234),(1189,208,NULL,NULL,-1234),(1190,209,NULL,NULL,-1234),(1191,209,NULL,NULL,-1234),(1192,209,NULL,NULL,-1234),(1193,210,NULL,NULL,-1234),(1194,210,NULL,NULL,-1234),(1195,210,NULL,NULL,-1234),(1196,211,NULL,NULL,-1234),(1197,211,NULL,NULL,-1234),(1198,211,NULL,NULL,-1234),(1199,213,NULL,NULL,-1234),(1200,213,NULL,NULL,-1234),(1201,213,NULL,NULL,-1234),(1202,213,NULL,NULL,-1234),(1203,213,NULL,NULL,-1234),(1204,213,NULL,NULL,-1234),(1205,213,NULL,NULL,-1234),(1206,213,NULL,NULL,-1234),(1207,213,NULL,NULL,-1234),(1208,213,NULL,NULL,-1234),(1209,213,NULL,NULL,-1234),(1210,213,NULL,NULL,-1234),(1211,213,NULL,NULL,-1234),(1212,213,NULL,NULL,-1234),(1213,213,NULL,NULL,-1234),(1214,213,NULL,NULL,-1234),(1215,213,NULL,NULL,-1234),(1216,214,NULL,NULL,-1234),(1217,214,NULL,NULL,-1234),(1218,214,NULL,NULL,-1234),(1219,214,NULL,NULL,-1234),(1220,214,NULL,NULL,-1234),(1221,218,NULL,NULL,-1234),(1222,218,NULL,NULL,-1234),(1223,218,NULL,NULL,-1234),(1224,220,NULL,NULL,-1234),(1225,220,NULL,NULL,-1234),(1226,220,NULL,NULL,-1234),(1227,222,NULL,NULL,-1234),(1228,222,NULL,NULL,-1234),(1229,222,NULL,NULL,-1234),(1230,224,NULL,NULL,-1234),(1231,224,NULL,NULL,-1234),(1232,224,NULL,NULL,-1234),(1233,227,NULL,NULL,-1234),(1234,227,NULL,NULL,-1234),(1235,227,NULL,NULL,-1234),(1236,229,NULL,NULL,-1234),(1237,229,NULL,NULL,-1234),(1238,229,NULL,NULL,-1234),(1239,231,NULL,NULL,-1234),(1240,231,NULL,NULL,-1234),(1241,231,NULL,NULL,-1234),(1242,233,NULL,NULL,-1234),(1243,233,NULL,NULL,-1234),(1244,233,NULL,NULL,-1234),(1245,236,NULL,NULL,-1234),(1246,238,NULL,NULL,-1234),(1247,239,NULL,NULL,-1234),(1248,240,NULL,NULL,-1234),(1249,241,NULL,NULL,-1234),(1250,242,NULL,NULL,-1234),(1251,243,NULL,NULL,-1234),(1252,244,NULL,NULL,-1234),(1253,245,NULL,NULL,-1234),(1254,246,NULL,NULL,-1234),(1255,247,NULL,NULL,-1234),(1256,248,NULL,NULL,-1234),(1257,249,NULL,NULL,-1234),(1258,250,NULL,NULL,-1234),(1259,251,NULL,NULL,-1234),(1260,252,NULL,NULL,-1234),(1261,253,NULL,NULL,-1234),(1262,254,NULL,NULL,-1234),(1263,255,NULL,NULL,-1234),(1264,256,NULL,NULL,-1234),(1265,257,NULL,NULL,-1234),(1266,258,NULL,NULL,-1234),(1267,259,NULL,NULL,-1234),(1268,260,NULL,NULL,-1234),(1269,261,NULL,NULL,-1234),(1270,262,NULL,NULL,-1234),(1271,263,NULL,NULL,-1234),(1272,264,NULL,NULL,-1234),(1273,265,NULL,NULL,-1234),(1274,266,NULL,NULL,-1234),(1275,267,NULL,NULL,-1234),(1276,268,NULL,NULL,-1234),(1277,269,NULL,NULL,-1234),(1278,270,NULL,NULL,-1234),(1279,271,NULL,NULL,-1234),(1280,272,NULL,NULL,-1234),(1281,273,NULL,NULL,-1234),(1282,274,NULL,NULL,-1234),(1283,275,NULL,NULL,-1234),(1284,276,NULL,NULL,-1234),(1285,277,NULL,NULL,-1234),(1286,278,NULL,NULL,-1234),(1287,279,NULL,NULL,-1234),(1288,280,NULL,NULL,-1234),(1289,281,NULL,NULL,-1234),(1290,282,NULL,NULL,-1234),(1291,283,NULL,NULL,-1234),(1292,284,NULL,NULL,-1234),(1293,285,NULL,NULL,-1234),(1294,286,NULL,NULL,-1234),(1295,287,NULL,NULL,-1234),(1296,288,NULL,NULL,-1234),(1297,289,NULL,NULL,-1234),(1298,290,NULL,NULL,-1234),(1299,291,NULL,NULL,-1234),(1300,292,NULL,NULL,-1234),(1301,293,NULL,NULL,-1234),(1302,294,NULL,NULL,-1234),(1303,295,NULL,NULL,-1234),(1304,296,NULL,NULL,-1234),(1305,297,NULL,NULL,-1234),(1306,298,NULL,NULL,-1234),(1307,299,NULL,NULL,-1234),(1308,300,NULL,NULL,-1234),(1309,301,NULL,NULL,-1234),(1310,302,NULL,NULL,-1234),(1311,303,NULL,NULL,-1234),(1312,304,NULL,NULL,-1234),(1313,305,NULL,NULL,-1234),(1314,306,NULL,NULL,-1234),(1315,307,NULL,NULL,-1234),(1316,308,NULL,NULL,-1234),(1317,309,NULL,NULL,-1234),(1318,310,NULL,NULL,-1234),(1319,311,NULL,NULL,-1234),(1320,312,NULL,NULL,-1234),(1321,313,NULL,NULL,-1234),(1322,314,NULL,NULL,-1234),(1323,315,NULL,NULL,-1234),(1324,316,NULL,NULL,-1234),(1325,317,NULL,NULL,-1234),(1326,318,NULL,NULL,-1234),(1327,319,NULL,NULL,-1234),(1328,320,NULL,NULL,-1234),(1329,321,NULL,NULL,-1234),(1330,322,NULL,NULL,-1234),(1331,323,NULL,NULL,-1234),(1332,324,NULL,NULL,-1234),(1333,325,NULL,NULL,-1234),(1334,326,NULL,NULL,-1234),(1335,327,NULL,NULL,-1234),(1336,328,NULL,NULL,-1234),(1337,329,NULL,NULL,-1234),(1338,330,NULL,NULL,-1234),(1339,331,NULL,NULL,-1234),(1340,332,NULL,NULL,-1234),(1341,333,NULL,NULL,-1234),(1342,334,NULL,NULL,-1234),(1343,335,NULL,NULL,-1234),(1344,336,NULL,NULL,-1234),(1345,337,NULL,NULL,-1234),(1346,338,NULL,NULL,-1234),(1347,339,NULL,NULL,-1234),(1348,340,NULL,NULL,-1234),(1349,341,NULL,NULL,-1234),(1350,342,NULL,NULL,-1234),(1351,343,NULL,NULL,-1234),(1352,344,NULL,NULL,-1234),(1353,345,NULL,NULL,-1234),(1354,346,NULL,NULL,-1234),(1355,347,NULL,NULL,-1234),(1356,348,NULL,NULL,-1234),(1357,349,NULL,NULL,-1234),(1358,350,NULL,NULL,-1234),(1359,351,NULL,NULL,-1234),(1360,352,NULL,NULL,-1234),(1361,353,NULL,NULL,-1234),(1362,354,NULL,NULL,-1234),(1363,355,NULL,NULL,-1234),(1364,356,NULL,NULL,-1234),(1365,357,NULL,NULL,-1234),(1366,358,NULL,NULL,-1234),(1367,359,NULL,NULL,-1234),(1368,360,NULL,NULL,-1234),(1369,361,NULL,NULL,-1234),(1370,362,NULL,NULL,-1234),(1371,363,NULL,NULL,-1234),(1372,364,NULL,NULL,-1234),(1373,365,NULL,NULL,-1234),(1374,366,NULL,NULL,-1234),(1375,367,NULL,NULL,-1234),(1376,368,NULL,NULL,-1234),(1377,369,NULL,NULL,-1234),(1378,370,NULL,NULL,-1234),(1379,371,NULL,NULL,-1234),(1380,372,NULL,NULL,-1234),(1381,373,NULL,NULL,-1234),(1382,374,NULL,NULL,-1234),(1383,375,NULL,NULL,-1234),(1384,376,NULL,NULL,-1234),(1385,377,NULL,NULL,-1234),(1386,378,NULL,NULL,-1234),(1387,379,NULL,NULL,-1234),(1388,380,NULL,NULL,-1234),(1389,381,NULL,NULL,-1234),(1390,382,NULL,NULL,-1234),(1391,383,NULL,NULL,-1234),(1392,384,NULL,NULL,-1234),(1393,385,NULL,NULL,-1234),(1394,386,NULL,NULL,-1234),(1395,387,NULL,NULL,-1234),(1396,388,NULL,NULL,-1234),(1397,389,NULL,NULL,-1234),(1398,390,NULL,NULL,-1234),(1399,391,NULL,NULL,-1234),(1400,392,NULL,NULL,-1234),(1401,393,NULL,NULL,-1234),(1402,394,NULL,NULL,-1234),(1403,395,NULL,NULL,-1234),(1404,396,NULL,NULL,-1234),(1405,397,NULL,NULL,-1234),(1406,398,NULL,NULL,-1234),(1407,399,NULL,NULL,-1234),(1408,400,NULL,NULL,-1234),(1409,401,NULL,NULL,-1234),(1410,402,NULL,NULL,-1234),(1411,403,NULL,NULL,-1234),(1412,404,NULL,NULL,-1234),(1413,405,NULL,NULL,-1234),(1414,406,NULL,NULL,-1234),(1415,407,NULL,NULL,-1234),(1416,408,NULL,NULL,-1234),(1417,409,NULL,NULL,-1234),(1418,410,NULL,NULL,-1234),(1419,411,NULL,NULL,-1234),(1420,412,NULL,NULL,-1234),(1421,413,NULL,NULL,-1234),(1422,414,NULL,NULL,-1234),(1423,415,NULL,NULL,-1234),(1424,416,NULL,NULL,-1234),(1425,417,NULL,NULL,-1234),(1426,418,NULL,NULL,-1234),(1427,419,NULL,NULL,-1234),(1428,420,NULL,NULL,-1234),(1429,421,NULL,NULL,-1234),(1430,422,NULL,NULL,-1234),(1431,423,NULL,NULL,-1234),(1432,424,NULL,NULL,-1234),(1433,425,NULL,NULL,-1234),(1434,426,NULL,NULL,-1234),(1435,427,NULL,NULL,-1234),(1436,428,NULL,NULL,-1234),(1437,429,NULL,NULL,-1234),(1438,430,NULL,NULL,-1234),(1439,431,NULL,NULL,-1234),(1440,432,NULL,NULL,-1234),(1441,434,NULL,NULL,-1234),(1442,435,NULL,NULL,-1234),(1443,454,NULL,NULL,-1234),(1444,454,NULL,NULL,-1234),(1445,454,NULL,NULL,-1234),(1446,454,NULL,NULL,-1234),(1447,467,NULL,NULL,-1234),(1448,467,NULL,NULL,-1234),(1449,468,NULL,NULL,-1234),(1450,468,NULL,NULL,-1234),(1451,468,NULL,NULL,-1234),(1452,471,NULL,NULL,-1234),(1453,472,NULL,NULL,-1234),(1454,473,NULL,NULL,-1234),(1455,474,NULL,NULL,-1234),(1456,498,NULL,NULL,-1234),(1457,499,NULL,NULL,-1234),(1458,500,NULL,NULL,-1234),(1459,502,NULL,NULL,-1234),(1460,503,NULL,NULL,-1234),(1461,504,NULL,NULL,-1234),(1462,505,NULL,NULL,-1234),(1463,506,NULL,NULL,-1234),(1464,507,NULL,NULL,-1234),(1465,508,NULL,NULL,-1234),(1466,509,NULL,NULL,-1234),(1467,510,NULL,NULL,-1234),(1468,511,NULL,NULL,-1234),(1469,512,NULL,NULL,-1234),(1470,513,NULL,NULL,-1234),(1471,514,NULL,NULL,-1234),(1472,515,NULL,NULL,-1234),(1473,516,NULL,NULL,-1234),(1474,517,NULL,NULL,-1234),(1475,518,NULL,NULL,-1234),(1476,519,NULL,NULL,-1234),(1477,520,NULL,NULL,-1234),(1478,521,NULL,NULL,-1234),(1479,522,NULL,NULL,-1234),(1480,523,NULL,NULL,-1234),(1481,524,NULL,NULL,-1234),(1482,525,NULL,NULL,-1234),(1483,526,NULL,NULL,-1234),(1484,527,NULL,NULL,-1234),(1485,528,NULL,NULL,-1234),(1486,529,NULL,NULL,-1234),(1487,530,NULL,NULL,-1234),(1488,531,NULL,NULL,-1234),(1489,532,NULL,NULL,-1234),(1490,533,NULL,NULL,-1234),(1491,534,NULL,NULL,-1234),(1492,535,NULL,NULL,-1234),(1493,536,NULL,NULL,-1234),(1494,537,NULL,NULL,-1234),(1495,538,NULL,NULL,-1234),(1496,539,NULL,NULL,-1234),(1497,540,NULL,NULL,-1234),(1498,541,NULL,NULL,-1234),(1499,542,NULL,NULL,-1234),(1500,543,NULL,NULL,-1234),(1501,544,NULL,NULL,-1234),(1502,545,NULL,NULL,-1234),(1503,546,NULL,NULL,-1234),(1504,547,NULL,NULL,-1234),(1505,548,NULL,NULL,-1234),(1506,549,NULL,NULL,-1234),(1507,550,NULL,NULL,-1234),(1508,551,NULL,NULL,-1234),(1509,552,NULL,NULL,-1234),(1510,553,NULL,NULL,-1234),(1511,554,NULL,NULL,-1234),(1512,555,NULL,NULL,-1234),(1513,556,NULL,NULL,-1234),(1514,557,NULL,NULL,-1234),(1515,558,NULL,NULL,-1234),(1516,559,NULL,NULL,-1234),(1517,560,NULL,NULL,-1234),(1518,561,NULL,NULL,-1234),(1519,562,NULL,NULL,-1234),(1520,563,NULL,NULL,-1234),(1521,564,NULL,NULL,-1234),(1522,565,NULL,NULL,-1234),(1523,566,NULL,NULL,-1234),(1524,567,NULL,NULL,-1234),(1525,568,NULL,NULL,-1234),(1526,570,NULL,NULL,-1234),(1527,570,NULL,NULL,-1234),(1528,570,NULL,NULL,-1234),(1529,577,NULL,NULL,-1234),(1530,591,NULL,NULL,-1234),(1531,591,NULL,NULL,-1234),(1532,591,NULL,NULL,-1234),(1533,591,NULL,NULL,-1234),(1534,591,NULL,NULL,-1234),(1535,591,NULL,NULL,-1234),(1536,594,NULL,NULL,-1234),(1537,594,NULL,NULL,-1234),(1538,594,NULL,NULL,-1234),(1539,595,NULL,NULL,-1234),(1540,595,NULL,NULL,-1234),(1541,597,NULL,NULL,-1234),(1542,597,NULL,NULL,-1234),(1543,598,NULL,NULL,-1234),(1544,598,NULL,NULL,-1234),(1545,601,NULL,NULL,-1234),(1546,601,NULL,NULL,-1234),(1547,601,NULL,NULL,-1234),(1548,601,NULL,NULL,-1234),(1549,601,NULL,NULL,-1234),(1550,601,NULL,NULL,-1234),(1551,601,NULL,NULL,-1234),(1552,601,NULL,NULL,-1234),(1553,601,NULL,NULL,-1234),(1554,601,NULL,NULL,-1234),(1555,601,NULL,NULL,-1234),(1556,601,NULL,NULL,-1234),(1557,601,NULL,NULL,-1234),(1558,601,NULL,NULL,-1234),(1559,601,NULL,NULL,-1234),(1560,601,NULL,NULL,-1234),(1561,601,NULL,NULL,-1234),(1562,601,NULL,NULL,-1234),(1563,601,NULL,NULL,-1234),(1564,601,NULL,NULL,-1234),(1565,602,NULL,NULL,-1234),(1566,602,NULL,NULL,-1234),(1567,602,NULL,NULL,-1234),(1568,602,NULL,NULL,-1234),(1569,602,NULL,NULL,-1234),(1570,602,NULL,NULL,-1234),(1571,602,NULL,NULL,-1234),(1572,602,NULL,NULL,-1234),(1573,602,NULL,NULL,-1234),(1574,602,NULL,NULL,-1234),(1575,602,NULL,NULL,-1234),(1576,602,NULL,NULL,-1234),(1577,602,NULL,NULL,-1234),(1578,602,NULL,NULL,-1234),(1579,602,NULL,NULL,-1234),(1580,602,NULL,NULL,-1234),(1581,602,NULL,NULL,-1234),(1582,602,NULL,NULL,-1234),(1583,602,NULL,NULL,-1234),(1584,602,NULL,NULL,-1234),(1585,603,NULL,NULL,-1234),(1586,603,NULL,NULL,-1234),(1587,603,NULL,NULL,-1234),(1588,604,NULL,NULL,-1234),(1589,616,NULL,NULL,-1234),(1590,616,NULL,NULL,-1234),(1591,616,NULL,NULL,-1234),(1592,616,NULL,NULL,-1234),(1593,616,NULL,NULL,-1234),(1594,616,NULL,NULL,-1234),(1595,617,NULL,NULL,-1234),(1596,617,NULL,NULL,-1234),(1597,617,NULL,NULL,-1234),(1598,620,NULL,NULL,-1234),(1599,621,NULL,NULL,-1234),(1600,622,NULL,NULL,-1234),(1601,627,NULL,NULL,-1234),(1602,630,NULL,NULL,-1234),(1603,631,NULL,NULL,-1234),(1604,631,NULL,NULL,-1234),(1605,631,NULL,NULL,-1234),(1606,631,NULL,NULL,-1234),(1607,631,NULL,NULL,-1234),(1608,631,NULL,NULL,-1234),(1609,631,NULL,NULL,-1234),(1610,631,NULL,NULL,-1234),(1611,631,NULL,NULL,-1234),(1612,631,NULL,NULL,-1234),(1613,631,NULL,NULL,-1234),(1614,631,NULL,NULL,-1234),(1615,631,NULL,NULL,-1234),(1616,631,NULL,NULL,-1234),(1617,631,NULL,NULL,-1234),(1618,631,NULL,NULL,-1234),(1619,632,NULL,NULL,-1234),(1620,632,NULL,NULL,-1234),(1621,632,NULL,NULL,-1234),(1622,632,NULL,NULL,-1234),(1623,632,NULL,NULL,-1234),(1624,632,NULL,NULL,-1234),(1625,632,NULL,NULL,-1234),(1626,632,NULL,NULL,-1234),(1627,632,NULL,NULL,-1234),(1628,632,NULL,NULL,-1234),(1629,632,NULL,NULL,-1234),(1630,632,NULL,NULL,-1234),(1631,632,NULL,NULL,-1234),(1632,632,NULL,NULL,-1234),(1633,632,NULL,NULL,-1234),(1634,632,NULL,NULL,-1234),(1635,633,NULL,NULL,-1234),(1636,633,NULL,NULL,-1234),(1637,633,NULL,NULL,-1234),(1638,633,NULL,NULL,-1234),(1639,633,NULL,NULL,-1234),(1640,633,NULL,NULL,-1234),(1641,633,NULL,NULL,-1234),(1642,633,NULL,NULL,-1234),(1643,633,NULL,NULL,-1234),(1644,633,NULL,NULL,-1234),(1645,633,NULL,NULL,-1234),(1646,633,NULL,NULL,-1234),(1647,633,NULL,NULL,-1234),(1648,633,NULL,NULL,-1234),(1649,633,NULL,NULL,-1234),(1650,633,NULL,NULL,-1234),(1651,633,NULL,NULL,-1234),(1652,640,NULL,NULL,-1234),(1653,640,NULL,NULL,-1234),(1654,640,NULL,NULL,-1234),(1655,640,NULL,NULL,-1234),(1656,640,NULL,NULL,-1234),(1657,640,NULL,NULL,-1234),(1658,640,NULL,NULL,-1234),(1659,640,NULL,NULL,-1234),(1660,640,NULL,NULL,-1234),(1661,640,NULL,NULL,-1234),(1662,640,NULL,NULL,-1234),(1663,640,NULL,NULL,-1234),(1664,640,NULL,NULL,-1234),(1665,640,NULL,NULL,-1234),(1666,640,NULL,NULL,-1234),(1667,640,NULL,NULL,-1234),(1668,640,NULL,NULL,-1234),(1669,641,NULL,NULL,-1234),(1670,641,NULL,NULL,-1234),(1671,641,NULL,NULL,-1234),(1672,641,NULL,NULL,-1234),(1673,641,NULL,NULL,-1234),(1674,641,NULL,NULL,-1234),(1675,641,NULL,NULL,-1234),(1676,641,NULL,NULL,-1234),(1677,641,NULL,NULL,-1234),(1678,641,NULL,NULL,-1234),(1679,641,NULL,NULL,-1234),(1680,641,NULL,NULL,-1234),(1681,641,NULL,NULL,-1234),(1682,641,NULL,NULL,-1234),(1683,641,NULL,NULL,-1234),(1684,641,NULL,NULL,-1234),(1685,641,NULL,NULL,-1234),(1686,643,NULL,NULL,-1234),(1687,643,NULL,NULL,-1234),(1688,643,NULL,NULL,-1234),(1689,643,NULL,NULL,-1234),(1690,643,NULL,NULL,-1234),(1691,643,NULL,NULL,-1234),(1692,643,NULL,NULL,-1234),(1693,643,NULL,NULL,-1234),(1694,643,NULL,NULL,-1234),(1695,643,NULL,NULL,-1234),(1696,643,NULL,NULL,-1234),(1697,643,NULL,NULL,-1234),(1698,643,NULL,NULL,-1234),(1699,643,NULL,NULL,-1234),(1700,643,NULL,NULL,-1234),(1701,643,NULL,NULL,-1234),(1702,643,NULL,NULL,-1234),(1703,644,NULL,NULL,-1234),(1704,644,NULL,NULL,-1234),(1705,644,NULL,NULL,-1234),(1706,644,NULL,NULL,-1234),(1707,644,NULL,NULL,-1234),(1708,644,NULL,NULL,-1234),(1709,644,NULL,NULL,-1234),(1710,644,NULL,NULL,-1234),(1711,644,NULL,NULL,-1234),(1712,644,NULL,NULL,-1234),(1713,644,NULL,NULL,-1234),(1714,644,NULL,NULL,-1234),(1715,644,NULL,NULL,-1234),(1716,644,NULL,NULL,-1234),(1717,644,NULL,NULL,-1234),(1718,644,NULL,NULL,-1234),(1719,644,NULL,NULL,-1234),(1720,646,NULL,NULL,-1234),(1721,646,NULL,NULL,-1234),(1722,646,NULL,NULL,-1234),(1723,646,NULL,NULL,-1234),(1724,646,NULL,NULL,-1234),(1725,646,NULL,NULL,-1234),(1726,646,NULL,NULL,-1234),(1727,646,NULL,NULL,-1234),(1728,646,NULL,NULL,-1234),(1729,646,NULL,NULL,-1234),(1730,646,NULL,NULL,-1234),(1731,646,NULL,NULL,-1234),(1732,646,NULL,NULL,-1234),(1733,646,NULL,NULL,-1234),(1734,646,NULL,NULL,-1234),(1735,646,NULL,NULL,-1234),(1736,646,NULL,NULL,-1234),(1737,647,NULL,NULL,-1234),(1738,647,NULL,NULL,-1234),(1739,647,NULL,NULL,-1234),(1740,647,NULL,NULL,-1234),(1741,647,NULL,NULL,-1234),(1742,647,NULL,NULL,-1234),(1743,647,NULL,NULL,-1234),(1744,647,NULL,NULL,-1234),(1745,647,NULL,NULL,-1234),(1746,647,NULL,NULL,-1234),(1747,647,NULL,NULL,-1234),(1748,647,NULL,NULL,-1234),(1749,647,NULL,NULL,-1234),(1750,647,NULL,NULL,-1234),(1751,647,NULL,NULL,-1234),(1752,647,NULL,NULL,-1234),(1753,647,NULL,NULL,-1234),(1754,648,NULL,NULL,-1234),(1755,648,NULL,NULL,-1234),(1756,648,NULL,NULL,-1234),(1757,648,NULL,NULL,-1234),(1758,648,NULL,NULL,-1234),(1759,648,NULL,NULL,-1234),(1760,648,NULL,NULL,-1234),(1761,648,NULL,NULL,-1234),(1762,648,NULL,NULL,-1234),(1763,648,NULL,NULL,-1234),(1764,648,NULL,NULL,-1234),(1765,648,NULL,NULL,-1234),(1766,648,NULL,NULL,-1234),(1767,648,NULL,NULL,-1234),(1768,648,NULL,NULL,-1234),(1769,648,NULL,NULL,-1234),(1770,648,NULL,NULL,-1234),(1771,649,NULL,NULL,-1234),(1772,649,NULL,NULL,-1234),(1773,649,NULL,NULL,-1234),(1774,649,NULL,NULL,-1234),(1775,649,NULL,NULL,-1234),(1776,649,NULL,NULL,-1234),(1777,649,NULL,NULL,-1234),(1778,649,NULL,NULL,-1234),(1779,649,NULL,NULL,-1234),(1780,649,NULL,NULL,-1234),(1781,649,NULL,NULL,-1234),(1782,649,NULL,NULL,-1234),(1783,649,NULL,NULL,-1234),(1784,649,NULL,NULL,-1234),(1785,649,NULL,NULL,-1234),(1786,649,NULL,NULL,-1234),(1787,649,NULL,NULL,-1234),(1788,650,NULL,NULL,-1234),(1789,650,NULL,NULL,-1234),(1790,650,NULL,NULL,-1234),(1791,650,NULL,NULL,-1234),(1792,650,NULL,NULL,-1234),(1793,650,NULL,NULL,-1234),(1794,650,NULL,NULL,-1234),(1795,651,NULL,NULL,-1234);
/*!40000 ALTER TABLE `REG_RESOURCE_PROPERTY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_RESOURCE_RATING`
--

DROP TABLE IF EXISTS `REG_RESOURCE_RATING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_RESOURCE_RATING` (
  `REG_RATING_ID` int(11) NOT NULL,
  `REG_VERSION` int(11) DEFAULT NULL,
  `REG_PATH_ID` int(11) DEFAULT NULL,
  `REG_RESOURCE_NAME` varchar(256) DEFAULT NULL,
  `REG_TENANT_ID` int(11) DEFAULT '0',
  KEY `REG_RESOURCE_RATING_FK_BY_PATH_ID` (`REG_PATH_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_RATING_FK_BY_RATING_ID` (`REG_RATING_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_RATING_IND_BY_PATH_ID_AND_RESOURCE_NAME` (`REG_PATH_ID`,`REG_RESOURCE_NAME`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_RESOURCE_RATING_IND_BY_VERSION` (`REG_VERSION`,`REG_TENANT_ID`) USING HASH,
  CONSTRAINT `REG_RESOURCE_RATING_FK_BY_PATH_ID` FOREIGN KEY (`REG_PATH_ID`, `REG_TENANT_ID`) REFERENCES `REG_PATH` (`REG_PATH_ID`, `REG_TENANT_ID`),
  CONSTRAINT `REG_RESOURCE_RATING_FK_BY_RATING_ID` FOREIGN KEY (`REG_RATING_ID`, `REG_TENANT_ID`) REFERENCES `REG_RATING` (`REG_ID`, `REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_RESOURCE_RATING`
--

LOCK TABLES `REG_RESOURCE_RATING` WRITE;
/*!40000 ALTER TABLE `REG_RESOURCE_RATING` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_RESOURCE_RATING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_RESOURCE_TAG`
--

DROP TABLE IF EXISTS `REG_RESOURCE_TAG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_RESOURCE_TAG` (
  `REG_TAG_ID` int(11) NOT NULL,
  `REG_VERSION` int(11) DEFAULT NULL,
  `REG_PATH_ID` int(11) DEFAULT NULL,
  `REG_RESOURCE_NAME` varchar(256) DEFAULT NULL,
  `REG_TENANT_ID` int(11) DEFAULT '0',
  KEY `REG_RESOURCE_TAG_FK_BY_PATH_ID` (`REG_PATH_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_TAG_FK_BY_TAG_ID` (`REG_TAG_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_TAG_IND_BY_PATH_ID_AND_RESOURCE_NAME` (`REG_PATH_ID`,`REG_RESOURCE_NAME`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_RESOURCE_TAG_IND_BY_VERSION` (`REG_VERSION`,`REG_TENANT_ID`) USING HASH,
  CONSTRAINT `REG_RESOURCE_TAG_FK_BY_PATH_ID` FOREIGN KEY (`REG_PATH_ID`, `REG_TENANT_ID`) REFERENCES `REG_PATH` (`REG_PATH_ID`, `REG_TENANT_ID`),
  CONSTRAINT `REG_RESOURCE_TAG_FK_BY_TAG_ID` FOREIGN KEY (`REG_TAG_ID`, `REG_TENANT_ID`) REFERENCES `REG_TAG` (`REG_ID`, `REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_RESOURCE_TAG`
--

LOCK TABLES `REG_RESOURCE_TAG` WRITE;
/*!40000 ALTER TABLE `REG_RESOURCE_TAG` DISABLE KEYS */;
INSERT INTO `REG_RESOURCE_TAG` VALUES (1,633,NULL,NULL,-1234),(2,640,NULL,NULL,-1234),(4,641,NULL,NULL,-1234),(5,643,NULL,NULL,-1234),(7,644,NULL,NULL,-1234),(8,646,NULL,NULL,-1234),(10,647,NULL,NULL,-1234),(11,648,NULL,NULL,-1234),(12,649,NULL,NULL,-1234),(13,650,NULL,NULL,-1234);
/*!40000 ALTER TABLE `REG_RESOURCE_TAG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_SNAPSHOT`
--

DROP TABLE IF EXISTS `REG_SNAPSHOT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_SNAPSHOT` (
  `REG_SNAPSHOT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_PATH_ID` int(11) NOT NULL,
  `REG_RESOURCE_NAME` varchar(255) DEFAULT NULL,
  `REG_RESOURCE_VIDS` longblob NOT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_SNAPSHOT_ID`,`REG_TENANT_ID`),
  KEY `REG_SNAPSHOT_IND_BY_PATH_ID_AND_RESOURCE_NAME` (`REG_PATH_ID`,`REG_RESOURCE_NAME`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_SNAPSHOT_FK_BY_PATH_ID` (`REG_PATH_ID`,`REG_TENANT_ID`),
  CONSTRAINT `REG_SNAPSHOT_FK_BY_PATH_ID` FOREIGN KEY (`REG_PATH_ID`, `REG_TENANT_ID`) REFERENCES `REG_PATH` (`REG_PATH_ID`, `REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_SNAPSHOT`
--

LOCK TABLES `REG_SNAPSHOT` WRITE;
/*!40000 ALTER TABLE `REG_SNAPSHOT` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_SNAPSHOT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_TAG`
--

DROP TABLE IF EXISTS `REG_TAG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_TAG` (
  `REG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_TAG_NAME` varchar(500) NOT NULL,
  `REG_USER_ID` varchar(31) NOT NULL,
  `REG_TAGGED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_TAG`
--

LOCK TABLES `REG_TAG` WRITE;
/*!40000 ALTER TABLE `REG_TAG` DISABLE KEYS */;
INSERT INTO `REG_TAG` VALUES (1,'test','admin','2017-12-10 18:30:00',-1234),(2,'test','admin','2017-12-10 18:30:00',-1234),(4,'test','admin','2017-12-10 18:30:00',-1234),(5,'test','admin','2017-12-10 18:30:00',-1234),(7,'test','admin','2017-12-10 18:30:00',-1234),(8,'test','admin','2017-12-10 18:30:00',-1234),(10,'test','admin','2017-12-10 18:30:00',-1234),(11,'test','admin','2017-12-10 18:30:00',-1234),(12,'test','admin','2017-12-10 18:30:00',-1234),(13,'test','admin','2017-12-10 18:30:00',-1234);
/*!40000 ALTER TABLE `REG_TAG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_ACCOUNT_MAPPING`
--

DROP TABLE IF EXISTS `UM_ACCOUNT_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_ACCOUNT_MAPPING` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_USER_NAME` varchar(255) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL,
  `UM_USER_STORE_DOMAIN` varchar(100) DEFAULT NULL,
  `UM_ACC_LINK_ID` int(11) NOT NULL,
  PRIMARY KEY (`UM_ID`),
  UNIQUE KEY `UM_USER_NAME` (`UM_USER_NAME`,`UM_TENANT_ID`,`UM_USER_STORE_DOMAIN`,`UM_ACC_LINK_ID`),
  KEY `UM_TENANT_ID` (`UM_TENANT_ID`),
  CONSTRAINT `UM_ACCOUNT_MAPPING_ibfk_1` FOREIGN KEY (`UM_TENANT_ID`) REFERENCES `UM_TENANT` (`UM_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_ACCOUNT_MAPPING`
--

LOCK TABLES `UM_ACCOUNT_MAPPING` WRITE;
/*!40000 ALTER TABLE `UM_ACCOUNT_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_ACCOUNT_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_CLAIM`
--

DROP TABLE IF EXISTS `UM_CLAIM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_CLAIM` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_DIALECT_ID` int(11) NOT NULL,
  `UM_CLAIM_URI` varchar(255) NOT NULL,
  `UM_DISPLAY_TAG` varchar(255) DEFAULT NULL,
  `UM_DESCRIPTION` varchar(255) DEFAULT NULL,
  `UM_MAPPED_ATTRIBUTE_DOMAIN` varchar(255) DEFAULT NULL,
  `UM_MAPPED_ATTRIBUTE` varchar(255) DEFAULT NULL,
  `UM_REG_EX` varchar(255) DEFAULT NULL,
  `UM_SUPPORTED` smallint(6) DEFAULT NULL,
  `UM_REQUIRED` smallint(6) DEFAULT NULL,
  `UM_DISPLAY_ORDER` int(11) DEFAULT NULL,
  `UM_CHECKED_ATTRIBUTE` smallint(6) DEFAULT NULL,
  `UM_READ_ONLY` smallint(6) DEFAULT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_DIALECT_ID` (`UM_DIALECT_ID`,`UM_CLAIM_URI`,`UM_TENANT_ID`,`UM_MAPPED_ATTRIBUTE_DOMAIN`),
  KEY `UM_DIALECT_ID_2` (`UM_DIALECT_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_CLAIM_ibfk_1` FOREIGN KEY (`UM_DIALECT_ID`, `UM_TENANT_ID`) REFERENCES `UM_DIALECT` (`UM_ID`, `UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_CLAIM`
--

LOCK TABLES `UM_CLAIM` WRITE;
/*!40000 ALTER TABLE `UM_CLAIM` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_CLAIM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_DIALECT`
--

DROP TABLE IF EXISTS `UM_DIALECT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_DIALECT` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_DIALECT_URI` varchar(255) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_DIALECT_URI` (`UM_DIALECT_URI`,`UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_DIALECT`
--

LOCK TABLES `UM_DIALECT` WRITE;
/*!40000 ALTER TABLE `UM_DIALECT` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_DIALECT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_DOMAIN`
--

DROP TABLE IF EXISTS `UM_DOMAIN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_DOMAIN` (
  `UM_DOMAIN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_DOMAIN_NAME` varchar(255) DEFAULT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_DOMAIN_ID`,`UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_DOMAIN`
--

LOCK TABLES `UM_DOMAIN` WRITE;
/*!40000 ALTER TABLE `UM_DOMAIN` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_DOMAIN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_HYBRID_REMEMBER_ME`
--

DROP TABLE IF EXISTS `UM_HYBRID_REMEMBER_ME`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_HYBRID_REMEMBER_ME` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_USER_NAME` varchar(255) NOT NULL,
  `UM_COOKIE_VALUE` varchar(1024) DEFAULT NULL,
  `UM_CREATED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_HYBRID_REMEMBER_ME`
--

LOCK TABLES `UM_HYBRID_REMEMBER_ME` WRITE;
/*!40000 ALTER TABLE `UM_HYBRID_REMEMBER_ME` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_HYBRID_REMEMBER_ME` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_HYBRID_ROLE`
--

DROP TABLE IF EXISTS `UM_HYBRID_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_HYBRID_ROLE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_ROLE_NAME` varchar(255) DEFAULT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_HYBRID_ROLE`
--

LOCK TABLES `UM_HYBRID_ROLE` WRITE;
/*!40000 ALTER TABLE `UM_HYBRID_ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_HYBRID_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_HYBRID_USER_ROLE`
--

DROP TABLE IF EXISTS `UM_HYBRID_USER_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_HYBRID_USER_ROLE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_USER_NAME` varchar(255) DEFAULT NULL,
  `UM_ROLE_ID` int(11) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  `UM_DOMAIN_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_USER_NAME` (`UM_USER_NAME`,`UM_ROLE_ID`,`UM_TENANT_ID`,`UM_DOMAIN_ID`),
  KEY `UM_ROLE_ID` (`UM_ROLE_ID`,`UM_TENANT_ID`),
  KEY `UM_DOMAIN_ID` (`UM_DOMAIN_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_HYBRID_USER_ROLE_ibfk_1` FOREIGN KEY (`UM_ROLE_ID`, `UM_TENANT_ID`) REFERENCES `UM_HYBRID_ROLE` (`UM_ID`, `UM_TENANT_ID`) ON DELETE CASCADE,
  CONSTRAINT `UM_HYBRID_USER_ROLE_ibfk_2` FOREIGN KEY (`UM_DOMAIN_ID`, `UM_TENANT_ID`) REFERENCES `UM_DOMAIN` (`UM_DOMAIN_ID`, `UM_TENANT_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_HYBRID_USER_ROLE`
--

LOCK TABLES `UM_HYBRID_USER_ROLE` WRITE;
/*!40000 ALTER TABLE `UM_HYBRID_USER_ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_HYBRID_USER_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_MODULE`
--

DROP TABLE IF EXISTS `UM_MODULE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_MODULE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_MODULE_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`UM_ID`),
  UNIQUE KEY `UM_MODULE_NAME` (`UM_MODULE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_MODULE`
--

LOCK TABLES `UM_MODULE` WRITE;
/*!40000 ALTER TABLE `UM_MODULE` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_MODULE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_MODULE_ACTIONS`
--

DROP TABLE IF EXISTS `UM_MODULE_ACTIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_MODULE_ACTIONS` (
  `UM_ACTION` varchar(255) NOT NULL,
  `UM_MODULE_ID` int(11) NOT NULL,
  PRIMARY KEY (`UM_ACTION`,`UM_MODULE_ID`),
  KEY `UM_MODULE_ID` (`UM_MODULE_ID`),
  CONSTRAINT `UM_MODULE_ACTIONS_ibfk_1` FOREIGN KEY (`UM_MODULE_ID`) REFERENCES `UM_MODULE` (`UM_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_MODULE_ACTIONS`
--

LOCK TABLES `UM_MODULE_ACTIONS` WRITE;
/*!40000 ALTER TABLE `UM_MODULE_ACTIONS` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_MODULE_ACTIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_PERMISSION`
--

DROP TABLE IF EXISTS `UM_PERMISSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_PERMISSION` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_RESOURCE_ID` varchar(255) NOT NULL,
  `UM_ACTION` varchar(255) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  `UM_MODULE_ID` int(11) DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  KEY `INDEX_UM_PERMISSION_UM_RESOURCE_ID_UM_ACTION` (`UM_RESOURCE_ID`,`UM_ACTION`,`UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_PERMISSION`
--

LOCK TABLES `UM_PERMISSION` WRITE;
/*!40000 ALTER TABLE `UM_PERMISSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_PERMISSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_PROFILE_CONFIG`
--

DROP TABLE IF EXISTS `UM_PROFILE_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_PROFILE_CONFIG` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_DIALECT_ID` int(11) NOT NULL,
  `UM_PROFILE_NAME` varchar(255) DEFAULT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  KEY `UM_DIALECT_ID` (`UM_DIALECT_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_PROFILE_CONFIG_ibfk_1` FOREIGN KEY (`UM_DIALECT_ID`, `UM_TENANT_ID`) REFERENCES `UM_DIALECT` (`UM_ID`, `UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_PROFILE_CONFIG`
--

LOCK TABLES `UM_PROFILE_CONFIG` WRITE;
/*!40000 ALTER TABLE `UM_PROFILE_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_PROFILE_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_ROLE`
--

DROP TABLE IF EXISTS `UM_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_ROLE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_ROLE_NAME` varchar(255) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  `UM_SHARED_ROLE` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_ROLE_NAME` (`UM_ROLE_NAME`,`UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_ROLE`
--

LOCK TABLES `UM_ROLE` WRITE;
/*!40000 ALTER TABLE `UM_ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_ROLE_PERMISSION`
--

DROP TABLE IF EXISTS `UM_ROLE_PERMISSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_ROLE_PERMISSION` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_PERMISSION_ID` int(11) NOT NULL,
  `UM_ROLE_NAME` varchar(255) NOT NULL,
  `UM_IS_ALLOWED` smallint(6) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  `UM_DOMAIN_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_PERMISSION_ID` (`UM_PERMISSION_ID`,`UM_ROLE_NAME`,`UM_TENANT_ID`,`UM_DOMAIN_ID`),
  KEY `UM_PERMISSION_ID_2` (`UM_PERMISSION_ID`,`UM_TENANT_ID`),
  KEY `UM_DOMAIN_ID` (`UM_DOMAIN_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_ROLE_PERMISSION_ibfk_1` FOREIGN KEY (`UM_PERMISSION_ID`, `UM_TENANT_ID`) REFERENCES `UM_PERMISSION` (`UM_ID`, `UM_TENANT_ID`) ON DELETE CASCADE,
  CONSTRAINT `UM_ROLE_PERMISSION_ibfk_2` FOREIGN KEY (`UM_DOMAIN_ID`, `UM_TENANT_ID`) REFERENCES `UM_DOMAIN` (`UM_DOMAIN_ID`, `UM_TENANT_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_ROLE_PERMISSION`
--

LOCK TABLES `UM_ROLE_PERMISSION` WRITE;
/*!40000 ALTER TABLE `UM_ROLE_PERMISSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_ROLE_PERMISSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_SHARED_USER_ROLE`
--

DROP TABLE IF EXISTS `UM_SHARED_USER_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_SHARED_USER_ROLE` (
  `UM_ROLE_ID` int(11) NOT NULL,
  `UM_USER_ID` int(11) NOT NULL,
  `UM_USER_TENANT_ID` int(11) NOT NULL,
  `UM_ROLE_TENANT_ID` int(11) NOT NULL,
  UNIQUE KEY `UM_USER_ID` (`UM_USER_ID`,`UM_ROLE_ID`,`UM_USER_TENANT_ID`,`UM_ROLE_TENANT_ID`),
  KEY `UM_ROLE_ID` (`UM_ROLE_ID`,`UM_ROLE_TENANT_ID`),
  KEY `UM_USER_ID_2` (`UM_USER_ID`,`UM_USER_TENANT_ID`),
  CONSTRAINT `UM_SHARED_USER_ROLE_ibfk_1` FOREIGN KEY (`UM_ROLE_ID`, `UM_ROLE_TENANT_ID`) REFERENCES `UM_ROLE` (`UM_ID`, `UM_TENANT_ID`) ON DELETE CASCADE,
  CONSTRAINT `UM_SHARED_USER_ROLE_ibfk_2` FOREIGN KEY (`UM_USER_ID`, `UM_USER_TENANT_ID`) REFERENCES `UM_USER` (`UM_ID`, `UM_TENANT_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_SHARED_USER_ROLE`
--

LOCK TABLES `UM_SHARED_USER_ROLE` WRITE;
/*!40000 ALTER TABLE `UM_SHARED_USER_ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_SHARED_USER_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_SYSTEM_ROLE`
--

DROP TABLE IF EXISTS `UM_SYSTEM_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_SYSTEM_ROLE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_ROLE_NAME` varchar(255) DEFAULT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_SYSTEM_ROLE`
--

LOCK TABLES `UM_SYSTEM_ROLE` WRITE;
/*!40000 ALTER TABLE `UM_SYSTEM_ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_SYSTEM_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_SYSTEM_USER`
--

DROP TABLE IF EXISTS `UM_SYSTEM_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_SYSTEM_USER` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_USER_NAME` varchar(255) NOT NULL,
  `UM_USER_PASSWORD` varchar(255) NOT NULL,
  `UM_SALT_VALUE` varchar(31) DEFAULT NULL,
  `UM_REQUIRE_CHANGE` tinyint(1) DEFAULT '0',
  `UM_CHANGED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_USER_NAME` (`UM_USER_NAME`,`UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_SYSTEM_USER`
--

LOCK TABLES `UM_SYSTEM_USER` WRITE;
/*!40000 ALTER TABLE `UM_SYSTEM_USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_SYSTEM_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_SYSTEM_USER_ROLE`
--

DROP TABLE IF EXISTS `UM_SYSTEM_USER_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_SYSTEM_USER_ROLE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_USER_NAME` varchar(255) DEFAULT NULL,
  `UM_ROLE_ID` int(11) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_USER_NAME` (`UM_USER_NAME`,`UM_ROLE_ID`,`UM_TENANT_ID`),
  KEY `UM_ROLE_ID` (`UM_ROLE_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_SYSTEM_USER_ROLE_ibfk_1` FOREIGN KEY (`UM_ROLE_ID`, `UM_TENANT_ID`) REFERENCES `UM_SYSTEM_ROLE` (`UM_ID`, `UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_SYSTEM_USER_ROLE`
--

LOCK TABLES `UM_SYSTEM_USER_ROLE` WRITE;
/*!40000 ALTER TABLE `UM_SYSTEM_USER_ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_SYSTEM_USER_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_TENANT`
--

DROP TABLE IF EXISTS `UM_TENANT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_TENANT` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_DOMAIN_NAME` varchar(255) NOT NULL,
  `UM_EMAIL` varchar(255) DEFAULT NULL,
  `UM_ACTIVE` tinyint(1) DEFAULT '0',
  `UM_CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UM_USER_CONFIG` longblob,
  PRIMARY KEY (`UM_ID`),
  UNIQUE KEY `UM_DOMAIN_NAME` (`UM_DOMAIN_NAME`),
  UNIQUE KEY `INDEX_UM_TENANT_UM_DOMAIN_NAME` (`UM_DOMAIN_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_TENANT`
--

LOCK TABLES `UM_TENANT` WRITE;
/*!40000 ALTER TABLE `UM_TENANT` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_TENANT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_USER`
--

DROP TABLE IF EXISTS `UM_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_USER` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_USER_NAME` varchar(255) NOT NULL,
  `UM_USER_PASSWORD` varchar(255) NOT NULL,
  `UM_SALT_VALUE` varchar(31) DEFAULT NULL,
  `UM_REQUIRE_CHANGE` tinyint(1) DEFAULT '0',
  `UM_CHANGED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_USER_NAME` (`UM_USER_NAME`,`UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_USER`
--

LOCK TABLES `UM_USER` WRITE;
/*!40000 ALTER TABLE `UM_USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_USER_ATTRIBUTE`
--

DROP TABLE IF EXISTS `UM_USER_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_USER_ATTRIBUTE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_ATTR_NAME` varchar(255) NOT NULL,
  `UM_ATTR_VALUE` varchar(1024) DEFAULT NULL,
  `UM_PROFILE_ID` varchar(255) DEFAULT NULL,
  `UM_USER_ID` int(11) DEFAULT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  KEY `UM_USER_ID` (`UM_USER_ID`,`UM_TENANT_ID`),
  KEY `UM_USER_ID_INDEX` (`UM_USER_ID`),
  CONSTRAINT `UM_USER_ATTRIBUTE_ibfk_1` FOREIGN KEY (`UM_USER_ID`, `UM_TENANT_ID`) REFERENCES `UM_USER` (`UM_ID`, `UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_USER_ATTRIBUTE`
--

LOCK TABLES `UM_USER_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `UM_USER_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_USER_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_USER_PERMISSION`
--

DROP TABLE IF EXISTS `UM_USER_PERMISSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_USER_PERMISSION` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_PERMISSION_ID` int(11) NOT NULL,
  `UM_USER_NAME` varchar(255) NOT NULL,
  `UM_IS_ALLOWED` smallint(6) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  KEY `UM_PERMISSION_ID` (`UM_PERMISSION_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_USER_PERMISSION_ibfk_1` FOREIGN KEY (`UM_PERMISSION_ID`, `UM_TENANT_ID`) REFERENCES `UM_PERMISSION` (`UM_ID`, `UM_TENANT_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_USER_PERMISSION`
--

LOCK TABLES `UM_USER_PERMISSION` WRITE;
/*!40000 ALTER TABLE `UM_USER_PERMISSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_USER_PERMISSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_USER_ROLE`
--

DROP TABLE IF EXISTS `UM_USER_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_USER_ROLE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_ROLE_ID` int(11) NOT NULL,
  `UM_USER_ID` int(11) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_USER_ID` (`UM_USER_ID`,`UM_ROLE_ID`,`UM_TENANT_ID`),
  KEY `UM_ROLE_ID` (`UM_ROLE_ID`,`UM_TENANT_ID`),
  KEY `UM_USER_ID_2` (`UM_USER_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_USER_ROLE_ibfk_1` FOREIGN KEY (`UM_ROLE_ID`, `UM_TENANT_ID`) REFERENCES `UM_ROLE` (`UM_ID`, `UM_TENANT_ID`),
  CONSTRAINT `UM_USER_ROLE_ibfk_2` FOREIGN KEY (`UM_USER_ID`, `UM_TENANT_ID`) REFERENCES `UM_USER` (`UM_ID`, `UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_USER_ROLE`
--

LOCK TABLES `UM_USER_ROLE` WRITE;
/*!40000 ALTER TABLE `UM_USER_ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_USER_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `apimgt`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `apimgt` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `apimgt`;

--
-- Table structure for table `AM_ALERT_EMAILLIST`
--

DROP TABLE IF EXISTS `AM_ALERT_EMAILLIST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_ALERT_EMAILLIST` (
  `EMAIL_LIST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(255) NOT NULL,
  `STAKE_HOLDER` varchar(100) NOT NULL,
  PRIMARY KEY (`EMAIL_LIST_ID`),
  UNIQUE KEY `AM_ALERT_EMAILLIST_CONSTRAINT` (`EMAIL_LIST_ID`,`USER_NAME`,`STAKE_HOLDER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_ALERT_EMAILLIST`
--

LOCK TABLES `AM_ALERT_EMAILLIST` WRITE;
/*!40000 ALTER TABLE `AM_ALERT_EMAILLIST` DISABLE KEYS */;
/*!40000 ALTER TABLE `AM_ALERT_EMAILLIST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_ALERT_EMAILLIST_DETAILS`
--

DROP TABLE IF EXISTS `AM_ALERT_EMAILLIST_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_ALERT_EMAILLIST_DETAILS` (
  `EMAIL_LIST_ID` int(11) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  UNIQUE KEY `AM_ALERT_EMAILLIST_DETAILS_CONSTRAINT` (`EMAIL_LIST_ID`,`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_ALERT_EMAILLIST_DETAILS`
--

LOCK TABLES `AM_ALERT_EMAILLIST_DETAILS` WRITE;
/*!40000 ALTER TABLE `AM_ALERT_EMAILLIST_DETAILS` DISABLE KEYS */;
/*!40000 ALTER TABLE `AM_ALERT_EMAILLIST_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_ALERT_TYPES`
--

DROP TABLE IF EXISTS `AM_ALERT_TYPES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_ALERT_TYPES` (
  `ALERT_TYPE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ALERT_TYPE_NAME` varchar(255) NOT NULL,
  `STAKE_HOLDER` varchar(100) NOT NULL,
  PRIMARY KEY (`ALERT_TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_ALERT_TYPES`
--

LOCK TABLES `AM_ALERT_TYPES` WRITE;
/*!40000 ALTER TABLE `AM_ALERT_TYPES` DISABLE KEYS */;
INSERT INTO `AM_ALERT_TYPES` VALUES (1,'abnormalResponseTime','publisher'),(2,'abnormalBackendTime','publisher'),(3,'abnormalRequestsPerMin','subscriber'),(4,'RequestPatternChanged','subscriber'),(5,'UnusualIPAccessAlert','subscriber'),(6,'AbnormalRefreshAlert','subscriber'),(7,'FrequentTierHittingAlert','subscriber'),(8,'AbnormalTierUsage','publisher'),(9,'healthAvailabilityPerMin','publisher');
/*!40000 ALTER TABLE `AM_ALERT_TYPES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_ALERT_TYPES_VALUES`
--

DROP TABLE IF EXISTS `AM_ALERT_TYPES_VALUES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_ALERT_TYPES_VALUES` (
  `ALERT_TYPE_ID` int(11) DEFAULT NULL,
  `USER_NAME` varchar(255) NOT NULL,
  `STAKE_HOLDER` varchar(100) NOT NULL,
  UNIQUE KEY `AM_ALERT_TYPES_VALUES_CONSTRAINT` (`ALERT_TYPE_ID`,`USER_NAME`,`STAKE_HOLDER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_ALERT_TYPES_VALUES`
--

LOCK TABLES `AM_ALERT_TYPES_VALUES` WRITE;
/*!40000 ALTER TABLE `AM_ALERT_TYPES_VALUES` DISABLE KEYS */;
/*!40000 ALTER TABLE `AM_ALERT_TYPES_VALUES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_API`
--

DROP TABLE IF EXISTS `AM_API`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_API` (
  `API_ID` int(11) NOT NULL AUTO_INCREMENT,
  `API_PROVIDER` varchar(200) DEFAULT NULL,
  `API_NAME` varchar(200) DEFAULT NULL,
  `API_VERSION` varchar(30) DEFAULT NULL,
  `CONTEXT` varchar(256) DEFAULT NULL,
  `CONTEXT_TEMPLATE` varchar(256) DEFAULT NULL,
  `API_TIER` varchar(256) DEFAULT NULL,
  `CREATED_BY` varchar(100) DEFAULT NULL,
  `CREATED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(100) DEFAULT NULL,
  `UPDATED_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`API_ID`),
  UNIQUE KEY `API_PROVIDER` (`API_PROVIDER`,`API_NAME`,`API_VERSION`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_API`
--

LOCK TABLES `AM_API` WRITE;
/*!40000 ALTER TABLE `AM_API` DISABLE KEYS */;
INSERT INTO `AM_API` VALUES (1,'admin','TestMe','1.0.0','/test/1.0.0','/test',NULL,'admin','2017-12-11 08:49:12',NULL,'2017-12-11 08:49:12');
/*!40000 ALTER TABLE `AM_API` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_API_COMMENTS`
--

DROP TABLE IF EXISTS `AM_API_COMMENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_API_COMMENTS` (
  `COMMENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COMMENT_TEXT` varchar(512) DEFAULT NULL,
  `COMMENTED_USER` varchar(255) DEFAULT NULL,
  `DATE_COMMENTED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `API_ID` int(11) NOT NULL,
  PRIMARY KEY (`COMMENT_ID`),
  KEY `API_ID` (`API_ID`),
  CONSTRAINT `AM_API_COMMENTS_ibfk_1` FOREIGN KEY (`API_ID`) REFERENCES `AM_API` (`API_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_API_COMMENTS`
--

LOCK TABLES `AM_API_COMMENTS` WRITE;
/*!40000 ALTER TABLE `AM_API_COMMENTS` DISABLE KEYS */;
/*!40000 ALTER TABLE `AM_API_COMMENTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_API_DEFAULT_VERSION`
--

DROP TABLE IF EXISTS `AM_API_DEFAULT_VERSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_API_DEFAULT_VERSION` (
  `DEFAULT_VERSION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `API_NAME` varchar(256) NOT NULL,
  `API_PROVIDER` varchar(256) NOT NULL,
  `DEFAULT_API_VERSION` varchar(30) DEFAULT NULL,
  `PUBLISHED_DEFAULT_API_VERSION` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`DEFAULT_VERSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_API_DEFAULT_VERSION`
--

LOCK TABLES `AM_API_DEFAULT_VERSION` WRITE;
/*!40000 ALTER TABLE `AM_API_DEFAULT_VERSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `AM_API_DEFAULT_VERSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_API_LC_EVENT`
--

DROP TABLE IF EXISTS `AM_API_LC_EVENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_API_LC_EVENT` (
  `EVENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `API_ID` int(11) NOT NULL,
  `PREVIOUS_STATE` varchar(50) DEFAULT NULL,
  `NEW_STATE` varchar(50) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `TENANT_ID` int(11) NOT NULL,
  `EVENT_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`EVENT_ID`),
  KEY `API_ID` (`API_ID`),
  CONSTRAINT `AM_API_LC_EVENT_ibfk_1` FOREIGN KEY (`API_ID`) REFERENCES `AM_API` (`API_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_API_LC_EVENT`
--

LOCK TABLES `AM_API_LC_EVENT` WRITE;
/*!40000 ALTER TABLE `AM_API_LC_EVENT` DISABLE KEYS */;
INSERT INTO `AM_API_LC_EVENT` VALUES (1,1,NULL,'CREATED','admin',-1234,'2017-12-11 08:47:20'),(2,1,'CREATED','PUBLISHED','admin',-1234,'2017-12-11 08:49:13');
/*!40000 ALTER TABLE `AM_API_LC_EVENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_API_RATINGS`
--

DROP TABLE IF EXISTS `AM_API_RATINGS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_API_RATINGS` (
  `RATING_ID` int(11) NOT NULL AUTO_INCREMENT,
  `API_ID` int(11) DEFAULT NULL,
  `RATING` int(11) DEFAULT NULL,
  `SUBSCRIBER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`RATING_ID`),
  KEY `API_ID` (`API_ID`),
  KEY `SUBSCRIBER_ID` (`SUBSCRIBER_ID`),
  CONSTRAINT `AM_API_RATINGS_ibfk_1` FOREIGN KEY (`API_ID`) REFERENCES `AM_API` (`API_ID`) ON UPDATE CASCADE,
  CONSTRAINT `AM_API_RATINGS_ibfk_2` FOREIGN KEY (`SUBSCRIBER_ID`) REFERENCES `AM_SUBSCRIBER` (`SUBSCRIBER_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_API_RATINGS`
--

LOCK TABLES `AM_API_RATINGS` WRITE;
/*!40000 ALTER TABLE `AM_API_RATINGS` DISABLE KEYS */;
/*!40000 ALTER TABLE `AM_API_RATINGS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_API_SCOPES`
--

DROP TABLE IF EXISTS `AM_API_SCOPES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_API_SCOPES` (
  `API_ID` int(11) NOT NULL,
  `SCOPE_ID` int(11) NOT NULL,
  KEY `API_ID` (`API_ID`),
  KEY `SCOPE_ID` (`SCOPE_ID`),
  CONSTRAINT `AM_API_SCOPES_ibfk_1` FOREIGN KEY (`API_ID`) REFERENCES `AM_API` (`API_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `AM_API_SCOPES_ibfk_2` FOREIGN KEY (`SCOPE_ID`) REFERENCES `IDN_OAUTH2_SCOPE` (`SCOPE_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_API_SCOPES`
--

LOCK TABLES `AM_API_SCOPES` WRITE;
/*!40000 ALTER TABLE `AM_API_SCOPES` DISABLE KEYS */;
/*!40000 ALTER TABLE `AM_API_SCOPES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_API_THROTTLE_POLICY`
--

DROP TABLE IF EXISTS `AM_API_THROTTLE_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_API_THROTTLE_POLICY` (
  `POLICY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `DISPLAY_NAME` varchar(512) DEFAULT NULL,
  `TENANT_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(1024) DEFAULT NULL,
  `DEFAULT_QUOTA_TYPE` varchar(25) NOT NULL,
  `DEFAULT_QUOTA` int(11) NOT NULL,
  `DEFAULT_QUOTA_UNIT` varchar(10) DEFAULT NULL,
  `DEFAULT_UNIT_TIME` int(11) NOT NULL,
  `DEFAULT_TIME_UNIT` varchar(25) NOT NULL,
  `APPLICABLE_LEVEL` varchar(25) NOT NULL,
  `IS_DEPLOYED` tinyint(1) NOT NULL DEFAULT '0',
  `UUID` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`POLICY_ID`),
  UNIQUE KEY `API_NAME_TENANT` (`NAME`,`TENANT_ID`),
  UNIQUE KEY `UUID` (`UUID`),
  KEY `IDX_AATP_DQT` (`DEFAULT_QUOTA_TYPE`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_API_THROTTLE_POLICY`
--

LOCK TABLES `AM_API_THROTTLE_POLICY` WRITE;
/*!40000 ALTER TABLE `AM_API_THROTTLE_POLICY` DISABLE KEYS */;
INSERT INTO `AM_API_THROTTLE_POLICY` VALUES (1,'50KPerMin','50KPerMin',-1234,'Allows 50000 requests per minute','requestCount',50000,NULL,1,'min','apiLevel',1,'5aaa88ad-b532-4056-a98a-4843204a4f74'),(2,'20KPerMin','20KPerMin',-1234,'Allows 20000 requests per minute','requestCount',20000,NULL,1,'min','apiLevel',1,'5e6c6b28-7ecc-49d9-a3c5-725149dbedb3'),(3,'10KPerMin','10KPerMin',-1234,'Allows 10000 requests per minute','requestCount',10000,NULL,1,'min','apiLevel',1,'8bf4c06f-dc88-4681-bf92-84c5b47f53b2'),(4,'Unlimited','Unlimited',-1234,'Allows unlimited requests','requestCount',2147483647,NULL,1,'min','apiLevel',1,'87516bbe-6348-47fe-881e-a1d091d271fa');
/*!40000 ALTER TABLE `AM_API_THROTTLE_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_API_URL_MAPPING`
--

DROP TABLE IF EXISTS `AM_API_URL_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_API_URL_MAPPING` (
  `URL_MAPPING_ID` int(11) NOT NULL AUTO_INCREMENT,
  `API_ID` int(11) NOT NULL,
  `HTTP_METHOD` varchar(20) DEFAULT NULL,
  `AUTH_SCHEME` varchar(50) DEFAULT NULL,
  `URL_PATTERN` varchar(512) DEFAULT NULL,
  `THROTTLING_TIER` varchar(512) DEFAULT NULL,
  `MEDIATION_SCRIPT` blob,
  PRIMARY KEY (`URL_MAPPING_ID`),
  KEY `IDX_AAUM_AI` (`API_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_API_URL_MAPPING`
--

LOCK TABLES `AM_API_URL_MAPPING` WRITE;
/*!40000 ALTER TABLE `AM_API_URL_MAPPING` DISABLE KEYS */;
INSERT INTO `AM_API_URL_MAPPING` VALUES (3,1,'GET','Any','/posts/{id}','Unlimited',NULL);
/*!40000 ALTER TABLE `AM_API_URL_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_APPLICATION`
--

DROP TABLE IF EXISTS `AM_APPLICATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_APPLICATION` (
  `APPLICATION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) DEFAULT NULL,
  `SUBSCRIBER_ID` int(11) DEFAULT NULL,
  `APPLICATION_TIER` varchar(50) DEFAULT 'Unlimited',
  `CALLBACK_URL` varchar(512) DEFAULT NULL,
  `DESCRIPTION` varchar(512) DEFAULT NULL,
  `APPLICATION_STATUS` varchar(50) DEFAULT 'APPROVED',
  `GROUP_ID` varchar(100) DEFAULT NULL,
  `CREATED_BY` varchar(100) DEFAULT NULL,
  `CREATED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(100) DEFAULT NULL,
  `UPDATED_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UUID` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`APPLICATION_ID`),
  UNIQUE KEY `NAME` (`NAME`,`SUBSCRIBER_ID`),
  UNIQUE KEY `UUID` (`UUID`),
  KEY `SUBSCRIBER_ID` (`SUBSCRIBER_ID`),
  KEY `IDX_AA_AT_CB` (`APPLICATION_TIER`,`CREATED_BY`),
  CONSTRAINT `AM_APPLICATION_ibfk_1` FOREIGN KEY (`SUBSCRIBER_ID`) REFERENCES `AM_SUBSCRIBER` (`SUBSCRIBER_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_APPLICATION`
--

LOCK TABLES `AM_APPLICATION` WRITE;
/*!40000 ALTER TABLE `AM_APPLICATION` DISABLE KEYS */;
INSERT INTO `AM_APPLICATION` VALUES (1,'DefaultApplication',1,'Unlimited',NULL,NULL,'APPROVED','','admin','2017-12-11 08:34:57',NULL,'0000-00-00 00:00:00','3e181ee5-c667-4f8e-b22f-ad7d56700599'),(2,'TestApp',1,'Unlimited',NULL,'','APPROVED','','admin','2017-12-11 08:49:40',NULL,'0000-00-00 00:00:00','98e65dc2-ad7f-49fd-8ed1-0c10b910f452');
/*!40000 ALTER TABLE `AM_APPLICATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_APPLICATION_KEY_MAPPING`
--

DROP TABLE IF EXISTS `AM_APPLICATION_KEY_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_APPLICATION_KEY_MAPPING` (
  `APPLICATION_ID` int(11) NOT NULL DEFAULT '0',
  `CONSUMER_KEY` varchar(255) DEFAULT NULL,
  `KEY_TYPE` varchar(255) NOT NULL,
  `STATE` varchar(30) NOT NULL,
  `CREATE_MODE` varchar(30) DEFAULT 'CREATED',
  PRIMARY KEY (`APPLICATION_ID`,`KEY_TYPE`),
  KEY `IDX_AAKM_CK` (`CONSUMER_KEY`),
  CONSTRAINT `AM_APPLICATION_KEY_MAPPING_ibfk_1` FOREIGN KEY (`APPLICATION_ID`) REFERENCES `AM_APPLICATION` (`APPLICATION_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_APPLICATION_KEY_MAPPING`
--

LOCK TABLES `AM_APPLICATION_KEY_MAPPING` WRITE;
/*!40000 ALTER TABLE `AM_APPLICATION_KEY_MAPPING` DISABLE KEYS */;
INSERT INTO `AM_APPLICATION_KEY_MAPPING` VALUES (2,'IB1oHexsRG2IzA9S0fz5xZnwaWIa','PRODUCTION','COMPLETED','CREATED');
/*!40000 ALTER TABLE `AM_APPLICATION_KEY_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_APPLICATION_REGISTRATION`
--

DROP TABLE IF EXISTS `AM_APPLICATION_REGISTRATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_APPLICATION_REGISTRATION` (
  `REG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SUBSCRIBER_ID` int(11) DEFAULT NULL,
  `WF_REF` varchar(255) NOT NULL,
  `APP_ID` int(11) DEFAULT NULL,
  `TOKEN_TYPE` varchar(30) DEFAULT NULL,
  `TOKEN_SCOPE` varchar(256) DEFAULT 'default',
  `INPUTS` varchar(1000) DEFAULT NULL,
  `ALLOWED_DOMAINS` varchar(256) DEFAULT NULL,
  `VALIDITY_PERIOD` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`REG_ID`),
  UNIQUE KEY `SUBSCRIBER_ID` (`SUBSCRIBER_ID`,`APP_ID`,`TOKEN_TYPE`),
  KEY `APP_ID` (`APP_ID`),
  CONSTRAINT `AM_APPLICATION_REGISTRATION_ibfk_1` FOREIGN KEY (`SUBSCRIBER_ID`) REFERENCES `AM_SUBSCRIBER` (`SUBSCRIBER_ID`) ON UPDATE CASCADE,
  CONSTRAINT `AM_APPLICATION_REGISTRATION_ibfk_2` FOREIGN KEY (`APP_ID`) REFERENCES `AM_APPLICATION` (`APPLICATION_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_APPLICATION_REGISTRATION`
--

LOCK TABLES `AM_APPLICATION_REGISTRATION` WRITE;
/*!40000 ALTER TABLE `AM_APPLICATION_REGISTRATION` DISABLE KEYS */;
INSERT INTO `AM_APPLICATION_REGISTRATION` VALUES (1,1,'75b1c503-8a11-4642-84c5-d8aefc4ec01a',2,'PRODUCTION','default','{\"tokenScope\":\"default\",\"validityPeriod\":\"-1\",\"grant_types\":\"refresh_token,urn:ietf:params:oauth:grant-type:saml2-bearer,password,iwa:ntlm,client_credentials\",\"key_type\":\"PRODUCTION\",\"username\":\"admin\"}','ALL',0);
/*!40000 ALTER TABLE `AM_APPLICATION_REGISTRATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_APP_KEY_DOMAIN_MAPPING`
--

DROP TABLE IF EXISTS `AM_APP_KEY_DOMAIN_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_APP_KEY_DOMAIN_MAPPING` (
  `CONSUMER_KEY` varchar(255) NOT NULL DEFAULT '',
  `AUTHZ_DOMAIN` varchar(255) NOT NULL DEFAULT 'ALL',
  PRIMARY KEY (`CONSUMER_KEY`,`AUTHZ_DOMAIN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_APP_KEY_DOMAIN_MAPPING`
--

LOCK TABLES `AM_APP_KEY_DOMAIN_MAPPING` WRITE;
/*!40000 ALTER TABLE `AM_APP_KEY_DOMAIN_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `AM_APP_KEY_DOMAIN_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_BLOCK_CONDITIONS`
--

DROP TABLE IF EXISTS `AM_BLOCK_CONDITIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_BLOCK_CONDITIONS` (
  `CONDITION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(45) DEFAULT NULL,
  `VALUE` varchar(512) DEFAULT NULL,
  `ENABLED` varchar(45) DEFAULT NULL,
  `DOMAIN` varchar(45) DEFAULT NULL,
  `UUID` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`CONDITION_ID`),
  UNIQUE KEY `UUID` (`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_BLOCK_CONDITIONS`
--

LOCK TABLES `AM_BLOCK_CONDITIONS` WRITE;
/*!40000 ALTER TABLE `AM_BLOCK_CONDITIONS` DISABLE KEYS */;
/*!40000 ALTER TABLE `AM_BLOCK_CONDITIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_CONDITION_GROUP`
--

DROP TABLE IF EXISTS `AM_CONDITION_GROUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_CONDITION_GROUP` (
  `CONDITION_GROUP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `POLICY_ID` int(11) NOT NULL,
  `QUOTA_TYPE` varchar(25) DEFAULT NULL,
  `QUOTA` int(11) NOT NULL,
  `QUOTA_UNIT` varchar(10) DEFAULT NULL,
  `UNIT_TIME` int(11) NOT NULL,
  `TIME_UNIT` varchar(25) NOT NULL,
  `DESCRIPTION` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`CONDITION_GROUP_ID`),
  KEY `POLICY_ID` (`POLICY_ID`),
  KEY `IDX_ACG_QT` (`QUOTA_TYPE`),
  CONSTRAINT `AM_CONDITION_GROUP_ibfk_1` FOREIGN KEY (`POLICY_ID`) REFERENCES `AM_API_THROTTLE_POLICY` (`POLICY_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_CONDITION_GROUP`
--

LOCK TABLES `AM_CONDITION_GROUP` WRITE;
/*!40000 ALTER TABLE `AM_CONDITION_GROUP` DISABLE KEYS */;
/*!40000 ALTER TABLE `AM_CONDITION_GROUP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_EXTERNAL_STORES`
--

DROP TABLE IF EXISTS `AM_EXTERNAL_STORES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_EXTERNAL_STORES` (
  `APISTORE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `API_ID` int(11) DEFAULT NULL,
  `STORE_ID` varchar(255) NOT NULL,
  `STORE_DISPLAY_NAME` varchar(255) NOT NULL,
  `STORE_ENDPOINT` varchar(255) NOT NULL,
  `STORE_TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`APISTORE_ID`),
  KEY `API_ID` (`API_ID`),
  CONSTRAINT `AM_EXTERNAL_STORES_ibfk_1` FOREIGN KEY (`API_ID`) REFERENCES `AM_API` (`API_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_EXTERNAL_STORES`
--

LOCK TABLES `AM_EXTERNAL_STORES` WRITE;
/*!40000 ALTER TABLE `AM_EXTERNAL_STORES` DISABLE KEYS */;
/*!40000 ALTER TABLE `AM_EXTERNAL_STORES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_HEADER_FIELD_CONDITION`
--

DROP TABLE IF EXISTS `AM_HEADER_FIELD_CONDITION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_HEADER_FIELD_CONDITION` (
  `HEADER_FIELD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CONDITION_GROUP_ID` int(11) NOT NULL,
  `HEADER_FIELD_NAME` varchar(255) DEFAULT NULL,
  `HEADER_FIELD_VALUE` varchar(255) DEFAULT NULL,
  `IS_HEADER_FIELD_MAPPING` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`HEADER_FIELD_ID`),
  KEY `CONDITION_GROUP_ID` (`CONDITION_GROUP_ID`),
  CONSTRAINT `AM_HEADER_FIELD_CONDITION_ibfk_1` FOREIGN KEY (`CONDITION_GROUP_ID`) REFERENCES `AM_CONDITION_GROUP` (`CONDITION_GROUP_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_HEADER_FIELD_CONDITION`
--

LOCK TABLES `AM_HEADER_FIELD_CONDITION` WRITE;
/*!40000 ALTER TABLE `AM_HEADER_FIELD_CONDITION` DISABLE KEYS */;
/*!40000 ALTER TABLE `AM_HEADER_FIELD_CONDITION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_IP_CONDITION`
--

DROP TABLE IF EXISTS `AM_IP_CONDITION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_IP_CONDITION` (
  `AM_IP_CONDITION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `STARTING_IP` varchar(45) DEFAULT NULL,
  `ENDING_IP` varchar(45) DEFAULT NULL,
  `SPECIFIC_IP` varchar(45) DEFAULT NULL,
  `WITHIN_IP_RANGE` tinyint(1) DEFAULT '1',
  `CONDITION_GROUP_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`AM_IP_CONDITION_ID`),
  KEY `fk_AM_IP_CONDITION_1_idx` (`CONDITION_GROUP_ID`),
  CONSTRAINT `fk_AM_IP_CONDITION_1` FOREIGN KEY (`CONDITION_GROUP_ID`) REFERENCES `AM_CONDITION_GROUP` (`CONDITION_GROUP_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_IP_CONDITION`
--

LOCK TABLES `AM_IP_CONDITION` WRITE;
/*!40000 ALTER TABLE `AM_IP_CONDITION` DISABLE KEYS */;
/*!40000 ALTER TABLE `AM_IP_CONDITION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_JWT_CLAIM_CONDITION`
--

DROP TABLE IF EXISTS `AM_JWT_CLAIM_CONDITION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_JWT_CLAIM_CONDITION` (
  `JWT_CLAIM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CONDITION_GROUP_ID` int(11) NOT NULL,
  `CLAIM_URI` varchar(512) DEFAULT NULL,
  `CLAIM_ATTRIB` varchar(1024) DEFAULT NULL,
  `IS_CLAIM_MAPPING` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`JWT_CLAIM_ID`),
  KEY `CONDITION_GROUP_ID` (`CONDITION_GROUP_ID`),
  CONSTRAINT `AM_JWT_CLAIM_CONDITION_ibfk_1` FOREIGN KEY (`CONDITION_GROUP_ID`) REFERENCES `AM_CONDITION_GROUP` (`CONDITION_GROUP_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_JWT_CLAIM_CONDITION`
--

LOCK TABLES `AM_JWT_CLAIM_CONDITION` WRITE;
/*!40000 ALTER TABLE `AM_JWT_CLAIM_CONDITION` DISABLE KEYS */;
/*!40000 ALTER TABLE `AM_JWT_CLAIM_CONDITION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_POLICY_APPLICATION`
--

DROP TABLE IF EXISTS `AM_POLICY_APPLICATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_POLICY_APPLICATION` (
  `POLICY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `DISPLAY_NAME` varchar(512) DEFAULT NULL,
  `TENANT_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(1024) DEFAULT NULL,
  `QUOTA_TYPE` varchar(25) NOT NULL,
  `QUOTA` int(11) NOT NULL,
  `QUOTA_UNIT` varchar(10) DEFAULT NULL,
  `UNIT_TIME` int(11) NOT NULL,
  `TIME_UNIT` varchar(25) NOT NULL,
  `IS_DEPLOYED` tinyint(1) NOT NULL DEFAULT '0',
  `CUSTOM_ATTRIBUTES` blob,
  `UUID` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`POLICY_ID`),
  UNIQUE KEY `APP_NAME_TENANT` (`NAME`,`TENANT_ID`),
  UNIQUE KEY `UUID` (`UUID`),
  KEY `IDX_APA_QT` (`QUOTA_TYPE`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_POLICY_APPLICATION`
--

LOCK TABLES `AM_POLICY_APPLICATION` WRITE;
/*!40000 ALTER TABLE `AM_POLICY_APPLICATION` DISABLE KEYS */;
INSERT INTO `AM_POLICY_APPLICATION` VALUES (1,'50PerMin','50PerMin',-1234,'Allows 50 request per minute','requestCount',50,NULL,1,'min',1,NULL,'86f2fdc2-b267-4adb-a957-e4dae78c8136'),(2,'20PerMin','20PerMin',-1234,'Allows 20 request per minute','requestCount',20,NULL,1,'min',1,NULL,'34fdb496-b3bc-49eb-b710-dddc2adde934'),(3,'10PerMin','10PerMin',-1234,'Allows 10 request per minute','requestCount',10,NULL,1,'min',1,NULL,'0b92ab4f-4d1b-4ca8-abab-8e39de502af6'),(4,'Unlimited','Unlimited',-1234,'Allows unlimited requests','requestCount',2147483647,NULL,1,'min',1,NULL,'24a591d7-6069-4147-9096-aabd035744c5');
/*!40000 ALTER TABLE `AM_POLICY_APPLICATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_POLICY_GLOBAL`
--

DROP TABLE IF EXISTS `AM_POLICY_GLOBAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_POLICY_GLOBAL` (
  `POLICY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `KEY_TEMPLATE` varchar(512) NOT NULL,
  `TENANT_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(1024) DEFAULT NULL,
  `SIDDHI_QUERY` blob,
  `IS_DEPLOYED` tinyint(1) NOT NULL DEFAULT '0',
  `UUID` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`POLICY_ID`),
  UNIQUE KEY `UUID` (`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_POLICY_GLOBAL`
--

LOCK TABLES `AM_POLICY_GLOBAL` WRITE;
/*!40000 ALTER TABLE `AM_POLICY_GLOBAL` DISABLE KEYS */;
/*!40000 ALTER TABLE `AM_POLICY_GLOBAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_POLICY_HARD_THROTTLING`
--

DROP TABLE IF EXISTS `AM_POLICY_HARD_THROTTLING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_POLICY_HARD_THROTTLING` (
  `POLICY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `TENANT_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(1024) DEFAULT NULL,
  `QUOTA_TYPE` varchar(25) NOT NULL,
  `QUOTA` int(11) NOT NULL,
  `QUOTA_UNIT` varchar(10) DEFAULT NULL,
  `UNIT_TIME` int(11) NOT NULL,
  `TIME_UNIT` varchar(25) NOT NULL,
  `IS_DEPLOYED` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`POLICY_ID`),
  UNIQUE KEY `POLICY_HARD_NAME_TENANT` (`NAME`,`TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_POLICY_HARD_THROTTLING`
--

LOCK TABLES `AM_POLICY_HARD_THROTTLING` WRITE;
/*!40000 ALTER TABLE `AM_POLICY_HARD_THROTTLING` DISABLE KEYS */;
/*!40000 ALTER TABLE `AM_POLICY_HARD_THROTTLING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_POLICY_SUBSCRIPTION`
--

DROP TABLE IF EXISTS `AM_POLICY_SUBSCRIPTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_POLICY_SUBSCRIPTION` (
  `POLICY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `DISPLAY_NAME` varchar(512) DEFAULT NULL,
  `TENANT_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(1024) DEFAULT NULL,
  `QUOTA_TYPE` varchar(25) NOT NULL,
  `QUOTA` int(11) NOT NULL,
  `QUOTA_UNIT` varchar(10) DEFAULT NULL,
  `UNIT_TIME` int(11) NOT NULL,
  `TIME_UNIT` varchar(25) NOT NULL,
  `RATE_LIMIT_COUNT` int(11) DEFAULT NULL,
  `RATE_LIMIT_TIME_UNIT` varchar(25) DEFAULT NULL,
  `IS_DEPLOYED` tinyint(1) NOT NULL DEFAULT '0',
  `CUSTOM_ATTRIBUTES` blob,
  `STOP_ON_QUOTA_REACH` tinyint(1) NOT NULL DEFAULT '0',
  `BILLING_PLAN` varchar(20) NOT NULL,
  `UUID` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`POLICY_ID`),
  UNIQUE KEY `AM_POLICY_SUBSCRIPTION_NAME_TENANT` (`NAME`,`TENANT_ID`),
  UNIQUE KEY `UUID` (`UUID`),
  KEY `IDX_APS_QT` (`QUOTA_TYPE`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_POLICY_SUBSCRIPTION`
--

LOCK TABLES `AM_POLICY_SUBSCRIPTION` WRITE;
/*!40000 ALTER TABLE `AM_POLICY_SUBSCRIPTION` DISABLE KEYS */;
INSERT INTO `AM_POLICY_SUBSCRIPTION` VALUES (1,'Gold','Gold',-1234,'Allows 5000 requests per minute','requestCount',5000,NULL,1,'min',0,NULL,1,NULL,1,'FREE','1f2ddab4-e34a-418a-b69f-4364f3963f01'),(2,'Silver','Silver',-1234,'Allows 2000 requests per minute','requestCount',2000,NULL,1,'min',0,NULL,1,NULL,1,'FREE','27073630-f701-43ea-97de-beeaea4c7fd6'),(3,'Bronze','Bronze',-1234,'Allows 1000 requests per minute','requestCount',1000,NULL,1,'min',0,NULL,1,NULL,1,'FREE','bfa3526d-1d44-47cb-b18a-bf0f33373d04'),(4,'Unauthenticated','Unauthenticated',-1234,'Allows 500 request(s) per minute','requestCount',500,NULL,1,'min',0,NULL,1,NULL,1,'FREE','151a5186-9a55-4058-8f85-bec41312c5ef'),(5,'Unlimited','Unlimited',-1234,'Allows unlimited requests','requestCount',2147483647,NULL,1,'min',0,NULL,1,NULL,1,'FREE','26f40a6f-69de-4bf0-91d3-2734ee488393');
/*!40000 ALTER TABLE `AM_POLICY_SUBSCRIPTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_QUERY_PARAMETER_CONDITION`
--

DROP TABLE IF EXISTS `AM_QUERY_PARAMETER_CONDITION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_QUERY_PARAMETER_CONDITION` (
  `QUERY_PARAMETER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CONDITION_GROUP_ID` int(11) NOT NULL,
  `PARAMETER_NAME` varchar(255) DEFAULT NULL,
  `PARAMETER_VALUE` varchar(255) DEFAULT NULL,
  `IS_PARAM_MAPPING` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`QUERY_PARAMETER_ID`),
  KEY `CONDITION_GROUP_ID` (`CONDITION_GROUP_ID`),
  CONSTRAINT `AM_QUERY_PARAMETER_CONDITION_ibfk_1` FOREIGN KEY (`CONDITION_GROUP_ID`) REFERENCES `AM_CONDITION_GROUP` (`CONDITION_GROUP_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_QUERY_PARAMETER_CONDITION`
--

LOCK TABLES `AM_QUERY_PARAMETER_CONDITION` WRITE;
/*!40000 ALTER TABLE `AM_QUERY_PARAMETER_CONDITION` DISABLE KEYS */;
/*!40000 ALTER TABLE `AM_QUERY_PARAMETER_CONDITION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_SUBSCRIBER`
--

DROP TABLE IF EXISTS `AM_SUBSCRIBER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_SUBSCRIBER` (
  `SUBSCRIBER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` varchar(255) NOT NULL,
  `TENANT_ID` int(11) NOT NULL,
  `EMAIL_ADDRESS` varchar(256) DEFAULT NULL,
  `DATE_SUBSCRIBED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(100) DEFAULT NULL,
  `CREATED_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_BY` varchar(100) DEFAULT NULL,
  `UPDATED_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`SUBSCRIBER_ID`),
  UNIQUE KEY `TENANT_ID` (`TENANT_ID`,`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_SUBSCRIBER`
--

LOCK TABLES `AM_SUBSCRIBER` WRITE;
/*!40000 ALTER TABLE `AM_SUBSCRIBER` DISABLE KEYS */;
INSERT INTO `AM_SUBSCRIBER` VALUES (1,'admin',-1234,'','2017-12-11 08:34:57','admin','2017-12-11 08:34:57',NULL,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `AM_SUBSCRIBER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_SUBSCRIPTION`
--

DROP TABLE IF EXISTS `AM_SUBSCRIPTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_SUBSCRIPTION` (
  `SUBSCRIPTION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIER_ID` varchar(50) DEFAULT NULL,
  `API_ID` int(11) DEFAULT NULL,
  `LAST_ACCESSED` timestamp NULL DEFAULT NULL,
  `APPLICATION_ID` int(11) DEFAULT NULL,
  `SUB_STATUS` varchar(50) DEFAULT NULL,
  `SUBS_CREATE_STATE` varchar(50) DEFAULT 'SUBSCRIBE',
  `CREATED_BY` varchar(100) DEFAULT NULL,
  `CREATED_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_BY` varchar(100) DEFAULT NULL,
  `UPDATED_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UUID` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`SUBSCRIPTION_ID`),
  UNIQUE KEY `UUID` (`UUID`),
  KEY `IDX_SUB_APP_ID` (`APPLICATION_ID`,`SUBSCRIPTION_ID`),
  KEY `IDX_AS_AITIAI` (`API_ID`,`TIER_ID`,`APPLICATION_ID`),
  CONSTRAINT `AM_SUBSCRIPTION_ibfk_1` FOREIGN KEY (`APPLICATION_ID`) REFERENCES `AM_APPLICATION` (`APPLICATION_ID`) ON UPDATE CASCADE,
  CONSTRAINT `AM_SUBSCRIPTION_ibfk_2` FOREIGN KEY (`API_ID`) REFERENCES `AM_API` (`API_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_SUBSCRIPTION`
--

LOCK TABLES `AM_SUBSCRIPTION` WRITE;
/*!40000 ALTER TABLE `AM_SUBSCRIPTION` DISABLE KEYS */;
INSERT INTO `AM_SUBSCRIPTION` VALUES (1,'Unlimited',1,NULL,2,'UNBLOCKED','SUBSCRIBE','admin','2017-12-11 08:49:52',NULL,'0000-00-00 00:00:00','04afc6bb-18b3-41c2-a127-f932767aefe4');
/*!40000 ALTER TABLE `AM_SUBSCRIPTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_SUBSCRIPTION_KEY_MAPPING`
--

DROP TABLE IF EXISTS `AM_SUBSCRIPTION_KEY_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_SUBSCRIPTION_KEY_MAPPING` (
  `SUBSCRIPTION_ID` int(11) NOT NULL DEFAULT '0',
  `ACCESS_TOKEN` varchar(255) NOT NULL DEFAULT '',
  `KEY_TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`SUBSCRIPTION_ID`,`ACCESS_TOKEN`),
  CONSTRAINT `AM_SUBSCRIPTION_KEY_MAPPING_ibfk_1` FOREIGN KEY (`SUBSCRIPTION_ID`) REFERENCES `AM_SUBSCRIPTION` (`SUBSCRIPTION_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_SUBSCRIPTION_KEY_MAPPING`
--

LOCK TABLES `AM_SUBSCRIPTION_KEY_MAPPING` WRITE;
/*!40000 ALTER TABLE `AM_SUBSCRIPTION_KEY_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `AM_SUBSCRIPTION_KEY_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_THROTTLE_TIER_PERMISSIONS`
--

DROP TABLE IF EXISTS `AM_THROTTLE_TIER_PERMISSIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_THROTTLE_TIER_PERMISSIONS` (
  `THROTTLE_TIER_PERMISSIONS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIER` varchar(50) DEFAULT NULL,
  `PERMISSIONS_TYPE` varchar(50) DEFAULT NULL,
  `ROLES` varchar(512) DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`THROTTLE_TIER_PERMISSIONS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_THROTTLE_TIER_PERMISSIONS`
--

LOCK TABLES `AM_THROTTLE_TIER_PERMISSIONS` WRITE;
/*!40000 ALTER TABLE `AM_THROTTLE_TIER_PERMISSIONS` DISABLE KEYS */;
/*!40000 ALTER TABLE `AM_THROTTLE_TIER_PERMISSIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_TIER_PERMISSIONS`
--

DROP TABLE IF EXISTS `AM_TIER_PERMISSIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_TIER_PERMISSIONS` (
  `TIER_PERMISSIONS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIER` varchar(50) NOT NULL,
  `PERMISSIONS_TYPE` varchar(50) NOT NULL,
  `ROLES` varchar(512) NOT NULL,
  `TENANT_ID` int(11) NOT NULL,
  PRIMARY KEY (`TIER_PERMISSIONS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_TIER_PERMISSIONS`
--

LOCK TABLES `AM_TIER_PERMISSIONS` WRITE;
/*!40000 ALTER TABLE `AM_TIER_PERMISSIONS` DISABLE KEYS */;
/*!40000 ALTER TABLE `AM_TIER_PERMISSIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AM_WORKFLOWS`
--

DROP TABLE IF EXISTS `AM_WORKFLOWS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AM_WORKFLOWS` (
  `WF_ID` int(11) NOT NULL AUTO_INCREMENT,
  `WF_REFERENCE` varchar(255) NOT NULL,
  `WF_TYPE` varchar(255) NOT NULL,
  `WF_STATUS` varchar(255) NOT NULL,
  `WF_CREATED_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `WF_UPDATED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `WF_STATUS_DESC` varchar(1000) DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  `TENANT_DOMAIN` varchar(255) DEFAULT NULL,
  `WF_EXTERNAL_REFERENCE` varchar(255) NOT NULL,
  PRIMARY KEY (`WF_ID`),
  UNIQUE KEY `WF_EXTERNAL_REFERENCE` (`WF_EXTERNAL_REFERENCE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AM_WORKFLOWS`
--

LOCK TABLES `AM_WORKFLOWS` WRITE;
/*!40000 ALTER TABLE `AM_WORKFLOWS` DISABLE KEYS */;
/*!40000 ALTER TABLE `AM_WORKFLOWS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FIDO_DEVICE_STORE`
--

DROP TABLE IF EXISTS `FIDO_DEVICE_STORE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FIDO_DEVICE_STORE` (
  `TENANT_ID` int(11) NOT NULL DEFAULT '0',
  `DOMAIN_NAME` varchar(255) NOT NULL,
  `USER_NAME` varchar(45) NOT NULL,
  `TIME_REGISTERED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `KEY_HANDLE` varchar(200) NOT NULL,
  `DEVICE_DATA` varchar(2048) NOT NULL,
  PRIMARY KEY (`TENANT_ID`,`DOMAIN_NAME`,`USER_NAME`,`KEY_HANDLE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FIDO_DEVICE_STORE`
--

LOCK TABLES `FIDO_DEVICE_STORE` WRITE;
/*!40000 ALTER TABLE `FIDO_DEVICE_STORE` DISABLE KEYS */;
/*!40000 ALTER TABLE `FIDO_DEVICE_STORE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_ASSOCIATED_ID`
--

DROP TABLE IF EXISTS `IDN_ASSOCIATED_ID`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_ASSOCIATED_ID` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDP_USER_ID` varchar(255) NOT NULL,
  `TENANT_ID` int(11) DEFAULT '-1234',
  `IDP_ID` int(11) NOT NULL,
  `DOMAIN_NAME` varchar(255) NOT NULL,
  `USER_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDP_USER_ID` (`IDP_USER_ID`,`TENANT_ID`,`IDP_ID`),
  KEY `IDP_ID` (`IDP_ID`),
  CONSTRAINT `IDN_ASSOCIATED_ID_ibfk_1` FOREIGN KEY (`IDP_ID`) REFERENCES `IDP` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_ASSOCIATED_ID`
--

LOCK TABLES `IDN_ASSOCIATED_ID` WRITE;
/*!40000 ALTER TABLE `IDN_ASSOCIATED_ID` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDN_ASSOCIATED_ID` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_AUTH_SESSION_STORE`
--

DROP TABLE IF EXISTS `IDN_AUTH_SESSION_STORE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_AUTH_SESSION_STORE` (
  `SESSION_ID` varchar(100) NOT NULL,
  `SESSION_TYPE` varchar(100) NOT NULL,
  `OPERATION` varchar(10) NOT NULL,
  `SESSION_OBJECT` blob,
  `TIME_CREATED` bigint(20) NOT NULL DEFAULT '0',
  `TENANT_ID` int(11) DEFAULT '-1',
  PRIMARY KEY (`SESSION_ID`,`SESSION_TYPE`,`TIME_CREATED`,`OPERATION`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_AUTH_SESSION_STORE`
--

LOCK TABLES `IDN_AUTH_SESSION_STORE` WRITE;
/*!40000 ALTER TABLE `IDN_AUTH_SESSION_STORE` DISABLE KEYS */;
INSERT INTO `IDN_AUTH_SESSION_STORE` VALUES ('1635957e-9e63-4cb1-a723-4ba86ffc1b14','AuthenticationContextCache','STORE','¨Ì\0sr\0corg.wso2.carbon.identity.application.authentication.framework.cache.AuthenticationContextCacheEntrymÊH•6Ãz\0L\0contextt\0]Lorg/wso2/carbon/identity/application/authentication/framework/context/AuthenticationContext;L\0loggedInUsert\0Ljava/lang/String;xr\0<org.wso2.carbon.identity.application.common.cache.CacheEntryö£|Mf,\0\0xpsr\0[org.wso2.carbon.identity.application.authentication.framework.context.AuthenticationContextYYgﬂ]r5\0 I\0currentStepZ\0forceAuthenticateZ\0isLogoutRequestZ\0passiveAuthenticateZ\0previousAuthTimeZ\0previousSessionFoundZ\0reAuthenticateZ\0\nrememberMeZ\0requestAuthenticatedI\0\nretryCountZ\0retryingZ\0	returningL\0authenticationRequestt\0[Lorg/wso2/carbon/identity/application/authentication/framework/model/AuthenticationRequest;L\0authenticatorPropertiest\0Ljava/util/Map;L\0\ncallerPathq\0~\0L\0callerSessionKeyq\0~\0L\0contextIdIncludedQueryParamsq\0~\0L\0contextIdentifierq\0~\0L\0currentAuthenticatedIdPsq\0~\0L\0currentAuthenticatorq\0~\0L\0currentRequestt\0\'Ljavax/servlet/http/HttpServletRequest;L\0externalIdPt\0^Lorg/wso2/carbon/identity/application/authentication/framework/config/model/ExternalIdPConfig;L\0previousAuthenticatedIdPsq\0~\0L\0queryParamsq\0~\0L\0relyingPartyq\0~\0L\0requestTypeq\0~\0L\0sequenceConfigt\0[Lorg/wso2/carbon/identity/application/authentication/framework/config/model/SequenceConfig;L\0serviceProviderNameq\0~\0L\0sessionIdentifierq\0~\0L\0	stateInfot\0VLorg/wso2/carbon/identity/application/authentication/framework/AuthenticatorStateInfo;L\0subjectt\0WLorg/wso2/carbon/identity/application/authentication/framework/model/AuthenticatedUser;L\0tenantDomainq\0~\0xp\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0sr\0Yorg.wso2.carbon.identity.application.authentication.framework.model.AuthenticationRequestp⁄óa=¬\0	Z\0	forceAuthZ\0isPostZ\0passiveAuthL\0commonAuthCallerPathq\0~\0L\0relyingPartyq\0~\0L\0requestHeadersq\0~\0L\0requestQueryParamsq\0~\0L\0tenantDomainq\0~\0L\0typeq\0~\0xp\0\0t\0/samlssot\0\rAPI_PUBLISHERsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0\rt\0content-lengtht\03310t\0referert\0Ohttps://localhost:9443/publisher/site/pages/login.jag?requestedPage=/publisher/t\0accept-languaget\0en-US,en;q=0.8t\0cookietˇMSG14761759305070.01953502672503815=true; MSG14761760619560.7807137305017886=true; MSG14761768576700.7848574240746511=true; MSG14763372346200.5309919570007908=true; MSG14763372934410.693076165756019=true; MSG14763373290430.08279030662208009=true; MSG14763375540580.27792285444049025=true; MSG14770280283240.4826753666911292=true; MSG14770282620680.3501145163179128=true; MSG14770282852810.5254533665042398=true; MSG14770285948870.8346667793264194=true; MSG14770292732890.4032582868618305=true; MSG14770293350280.49357096920727084=true; MSG14816903540100.8495898682920228=true; MSG14816946202230.3054109808078881=true; MSG14816955912410.1943431985924925=true; MSG14816965209890.014409259296719878=true; MSG14816965389570.1451076014810493=true; MSG14816992059130.19535532271936396=true; MSG14816992231460.7861879919198617=true; MSG14817011050930.8570706606332454=true; MSG14817011183470.054639403042162304=true; MSG14817013302300.48428790801675414=true; MSG14817013404430.2362585867762621=true; MSG14817142318160.7203765475823717=true; MSG14818711414020.03277690387987464=true; MSG14818718418550.49386004819507845=true; MSG14818718767350.8782175054973942=true; MSG14822994948070.5851267680651405=true; MSG14822995118650.7338632210664925=true; MSG14824979786280.2417513294803708=true; MSG14824983030380.9143642305176422=true; MSG14824983438530.35674792259339805=true; MSG14833392540200.7407827744142784=true; MSG14833425703160.7488762333793222=true; MSG14835104036450.9633275394729169=true; MSG14857697544870.49735803423826486=true; AuthSession=YWRtaW46NTg4Q0RCREE66hHeXfitP841EtYccqN-iOxaZMM; MSG14863636614150.6570843760009405=true; MSG14863641976580.17071039188037052=true; MSG14863644769330.8584453383006777=true; MSG14863646233980.8009027741265505=true; MSG14863649727320.6733608081995555=true; MSG14863656202430.2531097143998179=true; MSG14863901857480.18861550356094725=true; MSG14863904125020.6642915919704935=true; MSG14863920969200.8806106791230959=true; MSG14863925710460.7874412679890117=true; MSG14864525815830.5921920814547507=true; MSG14864526144980.7468239379490126=true; MSG14864527688670.19836740662444718=true; MSG14864588637920.6901729141091816=true; MSG14865228405050.3612969889063872=true; MSG14866482895470.8867286011037251=true; MSG14866485716780.8459735053209358=true; MSG14866493260630.4444860752703915=true; MSG14866496055190.7240108199289016=true; MSG14866504340380.259972207792196=true; MSG14884436579000.6599117900187017=true; MSG14884452274690.6471524444763741=true; MSG14884467891890.3961989878449117=true; MSG14884474171030.9257868377780124=true; MSG14884479183940.16137725242415457=true; MSG14884533876670.34296556585940075=true; MSG14884551139570.3687991741458344=true; MSG14885314782690.27697274012359097=true; MSG14885316638250.7643713028527935=true; MSG14885316900270.8722849410705658=true; MSG14885317082700.6627794872917433=true; MSG14885323067160.33496561578007555=true; MSG14885323385270.8157657969268576=true; MSG14885324825240.4877069174760369=true; MSG14885337429490.7058647437284965=true; MSG14885338873970.4300399336612942=true; MSG14891411051840.7937760898807358=true; MSG14893844207090.2959792348194429=true; MSG14893876123070.4837644400912263=true; MSG14894910350830.388000134519513=true; MSG14901763528870.11370141740451989=true; MSG14903433158060.34853020656659706=true; MSG14972610886510.624422606636205=true; MSG14972614821850.4172354834413716=true; MSG14972614883990.2552381182062625=true; MSG14972615213470.29151784058821306=true; MSG14972615591280.2905141877814098=true; MSG14972616750670.20522084563596643=true; MSG14972656186670.24112899694448775=true; MSG14972657112670.02276317236386083=true; MSG14973366744930.9734779597357117=true; MSG14973367253520.6353679719501175=true; MSG14973367557550.40624959416317075=true; MSG14973367719190.07669868681755931=true; MSG14973374521770.7386472648689429=true; MSG14973374906840.9218296661489084=true; MSG14973374991650.26307570416788173=true; MSG14973375457960.07973158952805348=true; MSG14973376477210.8249795275217742=true; MSG14973376583640.9148538092838563=true; MSG14973378230460.3448430935507162=true; MSG14973437667960.9557537611112403=true; selectedTab=view; MSG14979597361460.592455954648094=true; MSG14979597469160.576259224101718=true; MSG14979597551070.9610450002449323=true; MSG14979598955380.6172351781543489=true; MSG14979599051430.4426532896491191=true; MSG14979599133490.32223692944351=true; MSG14979818920870.27338533321406266=true; MSG14979819087440.291522965320528=true; MSG14979819226230.24018931306963776=true; MSG14984673469600.05255555576214832=true; MSG14984673698960.719265722570972=true; MSG14984673796970.7781138131435773=true; MSG14991670308090.696271357848295=true; MSG14991685245830.6012922799930822=true; MSG14992293182750.7901504829458131=true; MSG14992319348680.9383299428133393=true; MSG14992454174330.05454540185105794=true; MSG14992542507040.6029066245227085=true; MSG14997745421910.1394018186082191=true; MSG15023479545550.10740115741035383=true; MSG15036365783550.35026596485863326=true; MSG15039185578970.13445581461505052=true; MSG15039202995690.6576019663176728=true; MSG15039203351900.5148704083003128=true; MSG15040919348730.7997316223827489=true; MSG15040920376160.5372269650949532=true; MSG15040920692090.595769395897302=true; MSG15040921320250.643139926915173=true; MSG15040921708470.06590711161900253=true; MSG15040921886660.7152116776162296=true; MSG15053807793520.5321446247318741=true; MSG15053813400670.24981651521738735=true; MSG15058326921600.6599948674703415=true; MSG15058678444330.8209092182046508=true; MSG15058678626810.9152015923835015=true; MSG15058678818980.4441747694624898=true; MSG15058679028290.5923229400027565=true; MSG15060206902850.9934718680129727=true; MSG15061090400950.8329047159668147=true; region1_configure_menu=none; region4_monitor_menu=none; region5_tools_menu=none; region3_registry_menu=visible; MSG15107787421160.5226371850085684=true; MSG15111579876670.3209856355323951=true; MSG15111590383330.754925739902702=true; MSG15111601100520.397069017391387=true; MSG15111603633360.38894516813144964=true; MSG15111604512170.9847189730133895=true; MSG15111606002750.7423244930783927=true; MSG15111607110820.7617606132660368=true; i18next=en-US; MSG15126397307790.31110369820077544=true; MSG15127114591000.31097384641075876=true; MSG15127114761790.6801781539817451=true; MSG15127114954790.6705440358777839=true; MSG15127115171420.5034610939938176=true; menuPanel=visible; menuPanelType=main; requestedURI=../../carbon/admin/index.jsp; JSESSIONID=BB790448E927EF8A4B0FFDA1B8E602A3; MSG15129804231060.10540727201221345=true; MSG15129805552000.19009748960704143=true; current-breadcrumb=t\0origint\0https://localhost:9443t\0acceptt\0Utext/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8t\0hostt\0localhost:9444t\0upgrade-insecure-requestst\01t\0\nconnectiont\0\nkeep-alivet\0content-typet\0!application/x-www-form-urlencodedt\0\rcache-controlt\0	max-age=0t\0accept-encodingt\0gzip, deflate, brt\0\nuser-agentt\0iMozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36xsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0t\0SSOAuthSessionIDur\0[Ljava.lang.String;≠“VÁÈ{G\0\0xp\0\0\0t\02B58F3DB5ADD96277C007E75C21FC9226FF0015EBB973E5A7B0FBDD130357440B9A5F0E6F4474357B0870B620DE1A9BFAAC8FFE342737F3A3D32825F8E769D12BC9DF033991E87784C9FE311FEE0EEBC5C3988794DE9C7893AE600A09F97BF637CC6180E8DDF23413DC536C86C7CFC5E7C478391C4B1FB43D696A189F853B148t\0SAMLRequestuq\0~\00\0\0\0tåPD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHNhbWwycDpBdXRoblJlcXVlc3QgRGVzdGluYXRpb249Imh0dHBzOi8vbG9jYWxob3N0Ojk0NDQvc2FtbHNzbyIgSUQ9Imdwa2xlbW9ta2Fib3BtbWdpbGplZmRqamlhYmFubmRwaGtqam5mYW8iIElzc3VlSW5zdGFudD0iMjAxNy0xMi0xMVQwODozNDozMy4yNzJaIiBWZXJzaW9uPSIyLjAiIHhtbG5zOnNhbWwycD0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOnByb3RvY29sIj48c2FtbDI6SXNzdWVyIHhtbG5zOnNhbWwyPSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoyLjA6YXNzZXJ0aW9uIj5BUElfUFVCTElTSEVSPC9zYW1sMjpJc3N1ZXI+PGRzOlNpZ25hdHVyZSB4bWxuczpkcz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC8wOS94bWxkc2lnIyI+CjxkczpTaWduZWRJbmZvPgo8ZHM6Q2Fub25pY2FsaXphdGlvbk1ldGhvZCBBbGdvcml0aG09Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvMTAveG1sLWV4Yy1jMTRuIyIvPgo8ZHM6U2lnbmF0dXJlTWV0aG9kIEFsZ29yaXRobT0iaHR0cDovL3d3dy53My5vcmcvMjAwMC8wOS94bWxkc2lnI3JzYS1zaGExIi8+CjxkczpSZWZlcmVuY2UgVVJJPSIjZ3BrbGVtb21rYWJvcG1tZ2lsamVmZGpqaWFiYW5uZHBoa2pqbmZhbyI+CjxkczpUcmFuc2Zvcm1zPgo8ZHM6VHJhbnNmb3JtIEFsZ29yaXRobT0iaHR0cDovL3d3dy53My5vcmcvMjAwMC8wOS94bWxkc2lnI2VudmVsb3BlZC1zaWduYXR1cmUiLz4KPGRzOlRyYW5zZm9ybSBBbGdvcml0aG09Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvMTAveG1sLWV4Yy1jMTRuIyIvPgo8L2RzOlRyYW5zZm9ybXM+CjxkczpEaWdlc3RNZXRob2QgQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwLzA5L3htbGRzaWcjc2hhMSIvPgo8ZHM6RGlnZXN0VmFsdWU+KzJrRUdXa282N21HaDdxemNOM2R3ZDdGZmdNPTwvZHM6RGlnZXN0VmFsdWU+CjwvZHM6UmVmZXJlbmNlPgo8L2RzOlNpZ25lZEluZm8+CjxkczpTaWduYXR1cmVWYWx1ZT4KYUVQZHR0RnE3UmtOYXhTY256WjlOUmYyTG8rVGw1b3dBNWIzTFdibmdKYkJFSkJFV014QnRRWUxramIydEtBUW0xaGIvNWh2L3JsUQpCZFZBWVJSY0xINkw3cnJkQ1EveVdMN3NsNHlSUTBjWEY5WmdoUnV3Z0pRMkM1eGFIdzBEYjd2ME1iSFNMVmVNS2NqWFg2SVl0MDRxCmQ1eFVUUGtsbG8rZktxRDlLTVk9CjwvZHM6U2lnbmF0dXJlVmFsdWU+CjxkczpLZXlJbmZvPjxkczpYNTA5RGF0YT48ZHM6WDUwOUNlcnRpZmljYXRlPk1JSUNOVENDQVo2Z0F3SUJBZ0lFUzM0M2dqQU5CZ2txaGtpRzl3MEJBUVVGQURCVk1Rc3dDUVlEVlFRR0V3SlZVekVMTUFrR0ExVUUKQ0F3Q1EwRXhGakFVQmdOVkJBY01EVTF2ZFc1MFlXbHVJRlpwWlhjeERUQUxCZ05WQkFvTUJGZFRUekl4RWpBUUJnTlZCQU1NQ1d4dgpZMkZzYUc5emREQWVGdzB4TURBeU1Ua3dOekF5TWpaYUZ3MHpOVEF5TVRNd056QXlNalphTUZVeEN6QUpCZ05WQkFZVEFsVlRNUXN3CkNRWURWUVFJREFKRFFURVdNQlFHQTFVRUJ3d05UVzkxYm5SaGFXNGdWbWxsZHpFTk1Bc0dBMVVFQ2d3RVYxTlBNakVTTUJBR0ExVUUKQXd3SmJHOWpZV3hvYjNOME1JR2ZNQTBHQ1NxR1NJYjNEUUVCQVFVQUE0R05BRENCaVFLQmdRQ1VwL29WMXZXYzgvVGtRU2lBdlRvdQpzTXpPTTRhc0IyaWx0cjJRS296bmk1YVZGdTgxOE1wT0xaSXI4TE1uVHpXbGxKdnZhQTVSQUFkcGJFQ2IrNDhGamJCZTBoc2VVZE41Ckhwd3ZuSC9EVzhaY2NHdms1M0k2T3JxN2hMQ3YxWkh0dU9Db2tnaHovQVRyaHlQcStRa3RNZlhuUlM0SHJLR0pUenhhQ2NVN09RSUQKQVFBQm94SXdFREFPQmdOVkhROEJBZjhFQkFNQ0JQQXdEUVlKS29aSWh2Y05BUUVGQlFBRGdZRUFXNXdQUjdjcjFMQWRxK0lyUjQ0aQpRbFJHNUlUQ1pYWTloSTBQeWdMUDJySEFOaCtQWWZUbXhidU9ueWtOR3loTTZGakZMYlcydVpIUVRZMWpNclBwcmpPcm15SzVzakpSCk80ZDFEZUdIVC9ZbklqczlKb2dSS3Y0WEhFQ3dMdElWZEFiSWRXSEV0VlpKeU1Ta3RjeXlzRmN2dWhQUUs4UWMvRS9XcTh1SFNDbz08L2RzOlg1MDlDZXJ0aWZpY2F0ZT48L2RzOlg1MDlEYXRhPjwvZHM6S2V5SW5mbz48L2RzOlNpZ25hdHVyZT48c2FtbDJwOk5hbWVJRFBvbGljeSBBbGxvd0NyZWF0ZT0idHJ1ZSIgRm9ybWF0PSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoxLjE6bmFtZWlkLWZvcm1hdDp1bnNwZWNpZmllZCIvPjwvc2FtbDJwOkF1dGhuUmVxdWVzdD4=t\0\nRelayStateuq\0~\00\0\0\0t\0$557fba78-1f30-430a-be67-f0b7179404b0xt\0carbon.superpsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xq\0~\0t\0$1c2ebdae-9a9f-4b7d-b24f-aed6d24aed37t\ZRelayState=557fba78-1f30-430a-be67-f0b7179404b0&SSOAuthSessionID=2B58F3DB5ADD96277C007E75C21FC9226FF0015EBB973E5A7B0FBDD130357440B9A5F0E6F4474357B0870B620DE1A9BFAAC8FFE342737F3A3D32825F8E769D12BC9DF033991E87784C9FE311FEE0EEBC5C3988794DE9C7893AE600A09F97BF637CC6180E8DDF23413DC536C86C7CFC5E7C478391C4B1FB43D696A189F853B148&commonAuthCallerPath=%2Fsamlsso&forceAuth=false&passiveAuth=false&tenantDomain=carbon.super&sessionDataKey=1635957e-9e63-4cb1-a723-4ba86ffc1b14&relyingParty=API_PUBLISHER&type=samlsso&sp=API_PUBLISHER&isSaaSApp=falset\0$1635957e-9e63-4cb1-a723-4ba86ffc1b14sq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0BasicAuthenticatorpsr\0\\org.wso2.carbon.identity.application.authentication.framework.config.model.ExternalIdPConfigt´öAIÚÏ˜\0L\0claimConfigurationt\0?Lorg/wso2/carbon/identity/application/common/model/ClaimConfig;L\0identityProvidert\0DLorg/wso2/carbon/identity/application/common/model/IdentityProvider;L\0justInTimeProConfigt\0PLorg/wso2/carbon/identity/application/common/model/JustInTimeProvisioningConfig;L\0parameterMapq\0~\0L\0roleConfigurationt\0LLorg/wso2/carbon/identity/application/common/model/PermissionsAndRoleConfig;L\0roleMappingsq\0~\0xpsr\0=org.wso2.carbon.identity.application.common.model.ClaimConfigPgB∫B7b\0Z\0alwaysSendMappedLocalSubjectIdZ\0localClaimDialect[\0\rclaimMappingst\0A[Lorg/wso2/carbon/identity/application/common/model/ClaimMapping;[\0	idpClaimst\0:[Lorg/wso2/carbon/identity/application/common/model/Claim;L\0roleClaimURIq\0~\0L\0userClaimURIq\0~\0xp\0\0ur\0A[Lorg.wso2.carbon.identity.application.common.model.ClaimMapping;ƒ>ûÙjb¶†\0\0xp\0\0\0\0ur\0:[Lorg.wso2.carbon.identity.application.common.model.Claim;‹•Ä˙u‚G\0\0xp\0\0\0\0ppsr\0Borg.wso2.carbon.identity.application.common.model.IdentityProviderÑó\\_Óü\0Z\0enableZ\0\rfederationHubZ\0primaryL\0aliasq\0~\0L\0certificateq\0~\0L\0claimConfigq\0~\0AL\0\ZdefaultAuthenticatorConfigt\0PLorg/wso2/carbon/identity/application/common/model/FederatedAuthenticatorConfig;L\0\"defaultProvisioningConnectorConfigt\0OLorg/wso2/carbon/identity/application/common/model/ProvisioningConnectorConfig;L\0displayNameq\0~\0[\0federatedAuthenticatorConfigst\0Q[Lorg/wso2/carbon/identity/application/common/model/FederatedAuthenticatorConfig;L\0homeRealmIdq\0~\0L\0identityProviderDescriptionq\0~\0L\0identityProviderNameq\0~\0[\0\ridpPropertiest\0M[Lorg/wso2/carbon/identity/application/common/model/IdentityProviderProperty;L\0justInTimeProvisioningConfigq\0~\0CL\0permissionAndRoleConfigq\0~\0D[\0provisioningConnectorConfigst\0P[Lorg/wso2/carbon/identity/application/common/model/ProvisioningConnectorConfig;L\0provisioningRoleq\0~\0xp\0pt¯MIICNTCCAZ6gAwIBAgIES343gjANBgkqhkiG9w0BAQUFADBVMQswCQYDVQQGEwJVUzELMAkGA1UECAwCQ0ExFjAUBgNVBAcMDU1vdW50YWluIFZpZXcxDTALBgNVBAoMBFdTTzIxEjAQBgNVBAMMCWxvY2FsaG9zdDAeFw0xMDAyMTkwNzAyMjZaFw0zNTAyMTMwNzAyMjZaMFUxCzAJBgNVBAYTAlVTMQswCQYDVQQIDAJDQTEWMBQGA1UEBwwNTW91bnRhaW4gVmlldzENMAsGA1UECgwEV1NPMjESMBAGA1UEAwwJbG9jYWxob3N0MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCUp/oV1vWc8/TkQSiAvTousMzOM4asB2iltr2QKozni5aVFu818MpOLZIr8LMnTzWllJvvaA5RAAdpbECb+48FjbBe0hseUdN5HpwvnH/DW8ZccGvk53I6Orq7hLCv1ZHtuOCokghz/ATrhyPq+QktMfXnRS4HrKGJTzxaCcU7OQIDAQABoxIwEDAOBgNVHQ8BAf8EBAMCBPAwDQYJKoZIhvcNAQEFBQADgYEAW5wPR7cr1LAdq+IrR44iQlRG5ITCZXY9hI0PygLP2rHANh+PYfTmxbuOnykNGyhM6FjFLbW2uZHQTY1jMrPprjOrmyK5sjJRO4d1DeGHT/YnIjs9JogRKv4XHECwLtIVdAbIdWHEtVZJyMSktcyysFcvuhPQK8Qc/E/Wq8uHSCo=q\0~\0Ipppur\0Q[Lorg.wso2.carbon.identity.application.common.model.FederatedAuthenticatorConfig;Ö°¡,	ﬁ™Å\0\0xp\0\0\0sr\0Norg.wso2.carbon.identity.application.common.model.FederatedAuthenticatorConfigﬂ;© WG…\0Z\0enabledL\0displayNameq\0~\0L\0nameq\0~\0[\0\npropertiest\0=[Lorg/wso2/carbon/identity/application/common/model/Property;xp\0pt\0\npassivestsur\0=[Lorg.wso2.carbon.identity.application.common.model.Property;ÓØÚSR@=\0\0xp\0\0\0sr\0:org.wso2.carbon.identity.application.common.model.Property!†p4Ew¸\0\nI\0displayOrderZ\0\nisAdvancedZ\0isConfidentialZ\0requiredL\0defaultValueq\0~\0L\0descriptionq\0~\0L\0displayNameq\0~\0L\0nameq\0~\0L\0typeq\0~\0L\0valueq\0~\0xp\0\0\0\0\0\0\0pppt\0IdPEntityIdpt\0	localhostsq\0~\0^\0\0\0\0\0\0\0pppt\0IdentityProviderUrlpt\0!https://localhost:9444/passivestssq\0~\0X\0pt\0samlssouq\0~\0\\\0\0\0sq\0~\0^\0\0\0\0\0\0\0pppt\0IdPEntityIdpt\0	localhostsq\0~\0^\0\0\0\0\0\0\0pppt\0SSOUrlpt\0https://localhost:9444/samlssosq\0~\0^\0\0\0\0\0\0\0pppt\0LogoutReqUrlpt\0https://localhost:9444/samlssosq\0~\0X\0pt\0\ropenidconnectuq\0~\0\\\0\0\0sq\0~\0^\0\0\0\0\0\0\0pppt\0IdPEntityIdpt\0#https://localhost:9444/oauth2/tokensq\0~\0X\0pt\0\rIDPPropertiesuq\0~\0\\\0\0\0sq\0~\0^\0\0\0\0\0\0\0pppt\0\rCleanUpPeriodpt\01140t\0	localhostpt\0LOCALur\0M[Lorg.wso2.carbon.identity.application.common.model.IdentityProviderProperty;¥Å⁄®û•S\0\0xp\0\0\0/sr\0Jorg.wso2.carbon.identity.application.common.model.IdentityProviderPropertyS∞0!F‘˘\0L\0displayNameq\0~\0L\0nameq\0~\0L\0valueq\0~\0xppt\0RememberMeTimeoutt\020160sq\0~\0Åpt\0SessionIdleTimeoutt\015sq\0~\0Åpt\0-suspension.notification.account.disable.delayt\090sq\0~\0Åpt\0suspension.notification.delayst\030,45,60,75sq\0~\0Åpt\0suspension.notification.enablet\0falsesq\0~\0Åpt\0&suspension.notification.AlreadyWrittent\0truesq\0~\0Åpt\0\Zsso.login.recaptcha.enablet\0falsesq\0~\0Åpt\0*sso.login.recaptcha.on.max.failed.attemptst\03sq\0~\0Åpt\0\"sso.login.recaptcha.AlreadyWrittent\0truesq\0~\0Åpt\0,account.lock.handler.On.Failure.Max.Attemptst\05sq\0~\0Åpt\0-account.lock.handler.login.fail.timeout.ratiot\02sq\0~\0Åpt\0account.lock.handler.Timet\05sq\0~\0Åpt\0account.lock.handler.enablet\0falsesq\0~\0Åpt\0#account.lock.handler.AlreadyWrittent\0truesq\0~\0Åpt\0passwordHistory.countt\05sq\0~\0Åpt\0passwordHistory.enablet\0falsesq\0~\0Åpt\0passwordHistory.AlreadyWrittent\0truesq\0~\0Åpt\0passwordPolicy.patternt\09^((?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%&*])).{0,100}$sq\0~\0Åpt\0passwordPolicy.errorMsgt\0ò\'Password pattern policy violated. Password should contain a digit[0-9], a lower case letter[a-z], an upper case letter[A-Z], one of !@#$%&* characters\'sq\0~\0Åpt\0passwordPolicy.enablet\0falsesq\0~\0Åpt\0passwordPolicy.min.lengtht\06sq\0~\0Åpt\0passwordPolicy.max.lengtht\012sq\0~\0Åpt\0passwordPolicy.AlreadyWrittent\0truesq\0~\0Åpt\0&Recovery.Notification.InternallyManaget\0truesq\0~\0Åpt\0%Recovery.Notification.Username.Enablet\0falsesq\0~\0Åpt\0%Recovery.Notification.Password.Enablet\0falsesq\0~\0Åpt\0Recovery.ExpiryTimet\01440sq\0~\0Åpt\0!Recovery.Question.Password.Enablet\0falsesq\0~\0Åpt\0+Recovery.Question.Password.ReCaptcha.Enablet\0truesq\0~\0Åpt\06Recovery.Question.Password.ReCaptcha.MaxFailedAttemptst\02sq\0~\0Åpt\0%Recovery.Question.Password.MinAnswerst\02sq\0~\0Åpt\0&Recovery.Question.Password.NotifyStartt\0falsesq\0~\0Åpt\0Recovery.NotifySuccesst\0falsesq\0~\0Åpt\0account-recovery.AlreadyWrittent\0truesq\0~\0Åpt\0SelfRegistration.LockOnCreationt\0truesq\0~\0Åpt\0\ZSelfRegistration.ReCaptchat\0truesq\0~\0Åpt\0SelfRegistration.Enablet\0falsesq\0~\0Åpt\0.SelfRegistration.Notification.InternallyManaget\0truesq\0~\0Åpt\0self-sign-up.AlreadyWrittent\0truesq\0~\0Åpt\0 EmailVerification.LockOnCreationt\0truesq\0~\0Åpt\0EmailVerification.Enablet\0falsesq\0~\0Åpt\0/EmailVerification.Notification.InternallyManaget\0truesq\0~\0Åpt\0&user-email-verification.AlreadyWrittent\0truesq\0~\0Åpt\0(Recovery.AdminPasswordReset.RecoveryLinkt\0falsesq\0~\0Åpt\0#Recovery.AdminPasswordReset.Offlinet\0falsesq\0~\0Åpt\0Recovery.AdminPasswordReset.OTPt\0falsesq\0~\0Åpt\0*admin-forced-password-reset.AlreadyWrittent\0truesr\0Norg.wso2.carbon.identity.application.common.model.JustInTimeProvisioningConfig]Ω‡[rãú|\0L\0userStoreClaimUriq\0~\0xr\0Korg.wso2.carbon.identity.application.common.model.InboundProvisioningConfigöh◊¥\0^9\0Z\0\nisDumbModeZ\0provisioningEnabledL\0provisioningUserStoreq\0~\0xp\0\0ppsr\0Jorg.wso2.carbon.identity.application.common.model.PermissionsAndRoleConfig\n„#f±d—\0[\0idpRolest\0[Ljava/lang/String;[\0permissionst\0J[Lorg/wso2/carbon/identity/application/common/model/ApplicationPermission;[\0roleMappingst\0@[Lorg/wso2/carbon/identity/application/common/model/RoleMapping;xpuq\0~\00\0\0\0\0ur\0J[Lorg.wso2.carbon.identity.application.common.model.ApplicationPermission;´˛òu-f⁄\0\0xp\0\0\0\0ur\0@[Lorg.wso2.carbon.identity.application.common.model.RoleMapping;∑ú¸πq≤™G\0\0xp\0\0\0\0ur\0P[Lorg.wso2.carbon.identity.application.common.model.ProvisioningConnectorConfig;≤97ä]x„œ\0\0xp\0\0\0sr\0Morg.wso2.carbon.identity.application.common.model.ProvisioningConnectorConfig¿î1∂◊Ê´◊\0Z\0blockingZ\0enabledZ\0rulesEnabledL\0nameq\0~\0[\0provisioningPropertiesq\0~\0Yxp\0\0\0t\0scimuq\0~\0\\\0\0\0sq\0~\0^\0\0\0\0\0\0\0pppt\0scimGroupEndpointt\0STRINGt\0\'https://localhost:9444/wso2/scim/Groupssq\0~\0^\0\0\0\0\0\0\0pppt\0scimUserEndpointt\0STRINGt\0&https://localhost:9444/wso2/scim/Userspq\0~sq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xq\0~sq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\ZRelayState=557fba78-1f30-430a-be67-f0b7179404b0&SSOAuthSessionID=2B58F3DB5ADD96277C007E75C21FC9226FF0015EBB973E5A7B0FBDD130357440B9A5F0E6F4474357B0870B620DE1A9BFAAC8FFE342737F3A3D32825F8E769D12BC9DF033991E87784C9FE311FEE0EEBC5C3988794DE9C7893AE600A09F97BF637CC6180E8DDF23413DC536C86C7CFC5E7C478391C4B1FB43D696A189F853B148&commonAuthCallerPath=%2Fsamlsso&forceAuth=false&passiveAuth=false&tenantDomain=carbon.super&sessionDataKey=1635957e-9e63-4cb1-a723-4ba86ffc1b14&relyingParty=API_PUBLISHER&type=samlsso&sp=API_PUBLISHER&isSaaSApp=falseq\0~\0t\0samlssosr\0Yorg.wso2.carbon.identity.application.authentication.framework.config.model.SequenceConfig^≠Í^»Ëd+\0Z\0	completedZ\0isCheckAuthnZ\0isForceAuthnL\0applicationConfigt\0^Lorg/wso2/carbon/identity/application/authentication/framework/config/model/ApplicationConfig;L\0\rapplicationIdq\0~\0L\0authenticatedIdPsq\0~\0L\0!authenticatedReqPathAuthenticatort\0`Lorg/wso2/carbon/identity/application/authentication/framework/config/model/AuthenticatorConfig;L\0authenticatedUserq\0~\0L\0nameq\0~\0L\0reqPathAuthenticatorst\0Ljava/util/List;L\0stepMapq\0~\0xp\0\0\0sr\0\\org.wso2.carbon.identity.application.authentication.framework.config.model.ApplicationConfigp*ª~HBÂ(\0Z\0alwaysSendMappedLocalSubjectIdI\0\rapplicationIDZ\0enableAuthorizationZ\0	isSaaSAppZ\0mappedSubjectIDSelectedZ\0\'useTenantDomainInLocalSubjectIdentifierZ\0*useUserstoreDomainInLocalSubjectIdentifierL\0applicationNameq\0~\0L\0\rclaimMappingsq\0~\0L\0mandatoryClaimsq\0~\0[\0permissionsq\0~L\0requestedClaimsq\0~\0L\0	roleClaimq\0~\0L\0roleMappingsq\0~\0L\0serviceProvidert\0CLorg/wso2/carbon/identity/application/common/model/ServiceProvider;L\0subjectClaimUriq\0~\0xp\0\0\0\0\0\0\0\0\0t\0\rAPI_PUBLISHERsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xuq\0~\00\0\0\0\0sq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0\0sq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsr\0Aorg.wso2.carbon.identity.application.common.model.ServiceProviderA˚xˆ≥ÿv\0\rI\0\rapplicationIDZ\0saasAppL\0applicationNameq\0~\0L\0claimConfigq\0~\0AL\0descriptionq\0~\0L\0inboundAuthenticationConfigt\0OLorg/wso2/carbon/identity/application/common/model/InboundAuthenticationConfig;L\0inboundProvisioningConfigt\0MLorg/wso2/carbon/identity/application/common/model/InboundProvisioningConfig;L\0$localAndOutBoundAuthenticationConfigt\0XLorg/wso2/carbon/identity/application/common/model/LocalAndOutboundAuthenticationConfig;L\0\ZoutboundProvisioningConfigt\0NLorg/wso2/carbon/identity/application/common/model/OutboundProvisioningConfig;L\0ownert\08Lorg/wso2/carbon/identity/application/common/model/User;L\0permissionAndRoleConfigq\0~\0D[\0requestPathAuthenticatorConfigst\0S[Lorg/wso2/carbon/identity/application/common/model/RequestPathAuthenticatorConfig;[\0spPropertiest\0L[Lorg/wso2/carbon/identity/application/common/model/ServiceProviderProperty;xp\0\0\0\0q\0~7sq\0~\0F\0uq\0~\0J\0\0\0\0uq\0~\0L\0\0\0\0q\0~<pt\0\0sr\0Morg.wso2.carbon.identity.application.common.model.InboundAuthenticationConfig&lNwd=\0[\0#inboundAuthenticationRequestConfigst\0W[Lorg/wso2/carbon/identity/application/common/model/InboundAuthenticationRequestConfig;xpur\0W[Lorg.wso2.carbon.identity.application.common.model.InboundAuthenticationRequestConfig;5Œ≠¢£«–\0\0xp\0\0\0sr\0Torg.wso2.carbon.identity.application.common.model.InboundAuthenticationRequestConfigˇ!ˇÁÌ¥\0L\0friendlyNameq\0~\0L\0inboundAuthKeyq\0~\0L\0inboundAuthTypeq\0~\0L\0inboundConfigTypeq\0~\0[\0\npropertiesq\0~\0Yxppt\0\rAPI_PUBLISHERt\0\npassivestst\0standardAPPuq\0~\0\\\0\0\0\0sq\0~Ppt\0\rAPI_PUBLISHERt\0samlssot\0standardAPPuq\0~\0\\\0\0\0\0sq\0~Ppt\0\rAPI_PUBLISHERt\0openidt\0standardAPPuq\0~\0\\\0\0\0\0sq\0~\0\0t\0\0sr\0Vorg.wso2.carbon.identity.application.common.model.LocalAndOutboundAuthenticationConfigZÌ”â∂*s\0	Z\0%alwaysSendBackAuthenticatedListOfIdPsZ\0enableAuthorizationZ\0\'useTenantDomainInLocalSubjectIdentifierZ\0*useUserstoreDomainInLocalSubjectIdentifierL\0authenticationStepForAttributest\0FLorg/wso2/carbon/identity/application/common/model/AuthenticationStep;L\0authenticationStepForSubjectq\0~c[\0authenticationStepst\0G[Lorg/wso2/carbon/identity/application/common/model/AuthenticationStep;L\0authenticationTypeq\0~\0L\0subjectClaimUriq\0~\0xp\0\0\0\0ppur\0G[Lorg.wso2.carbon.identity.application.common.model.AuthenticationStep;“áéâ4ÎN\0\0xp\0\0\0sr\0Dorg.wso2.carbon.identity.application.common.model.AuthenticationStepÁˇ≈ö~p\0Z\0\rattributeStepI\0	stepOrderZ\0subjectStep[\0\ZfederatedIdentityProviderst\0E[Lorg/wso2/carbon/identity/application/common/model/IdentityProvider;[\0localAuthenticatorConfigst\0M[Lorg/wso2/carbon/identity/application/common/model/LocalAuthenticatorConfig;xp\0\0\0ur\0E[Lorg.wso2.carbon.identity.application.common.model.IdentityProvider;‡-;˚Êæ\0\0xp\0\0\0\0ur\0M[Lorg.wso2.carbon.identity.application.common.model.LocalAuthenticatorConfig;j\Zzé¿éœd\0\0xp\0\0\0sr\0Jorg.wso2.carbon.identity.application.common.model.LocalAuthenticatorConfig.¨÷.ŒWÉ;\0Z\0enabledL\0displayNameq\0~\0L\0nameq\0~\0[\0\npropertiesq\0~\0Yxpt\0	basicautht\0BasicAuthenticatoruq\0~\0\\\0\0\0\0t\0defaultpsr\0Lorg.wso2.carbon.identity.application.common.model.OutboundProvisioningConfig2ÎºLj∑ıµ\0[\0provisionByRoleListq\0~[\0provisioningIdentityProvidersq\0~ixppuq\0~l\0\0\0\0sr\06org.wso2.carbon.identity.application.common.model.User·˝fﬁ°\0L\0tenantDomainq\0~\0L\0userNameq\0~\0L\0userStoreDomainq\0~\0xpq\0~\09t\0admint\0PRIMARYsq\0~uq\0~\00\0\0\0\0uq\0~\0\0\0\0uq\0~\Z\0\0\0\0ur\0S[Lorg.wso2.carbon.identity.application.common.model.RequestPathAuthenticatorConfig;∑eÇ2\"£\0\0xp\0\0\0\0ur\0L[Lorg.wso2.carbon.identity.application.common.model.ServiceProviderProperty;πuufEÍ\0\0xp\0\0\0\0pq\0~7ppppsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0\0w\0\0\0\0xsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0sr\0Uorg.wso2.carbon.identity.application.authentication.framework.config.model.StepConfigdËIù]fô\0Z\0	completedZ\0multiOptionI\0orderZ\0retryingZ\0subjectAttributeStepZ\0subjectIdentifierStepL\0authenticatedAutenticatorq\0~1L\0authenticatedIdPq\0~\0L\0authenticatedUserq\0~\0L\0authenticatorListq\0~2L\0authenticatorMappingsq\0~2L\0	loginPageq\0~\0xp\0\0\0\0\0\0pppsq\0~Ö\0\0\0w\0\0\0sr\0^org.wso2.carbon.identity.application.authentication.framework.config.model.AuthenticatorConfig<Òq$M∫ZP\0Z\0enabledL\0applicationAuthenticatort\0XLorg/wso2/carbon/identity/application/authentication/framework/ApplicationAuthenticator;L\0authenticatorStateInfoq\0~\0L\0idpNamesq\0~2L\0idpsq\0~\0L\0nameq\0~\0L\0parameterMapq\0~\0xp\0sr\0Oorg.wso2.carbon.identity.application.authenticator.basicauth.BasicAuthenticator@øAÚDjY\0\0xr\0^org.wso2.carbon.identity.application.authentication.framework.AbstractApplicationAuthenticator¬◊ünÔ]Ï\0\0xppsq\0~Ö\0\0\0w\0\0\0q\0~\0~xsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0~sq\0~\0N\0\0\0ppppppuq\0~\0V\0\0\0\0ppq\0~\0~uq\0~\0\0\0\0\0ppuq\0~\0\0\0\0pxq\0~spxsq\0~Ö\0\0\0\0w\0\0\0\0xpxq\0~7pppq\0~\09p',1512981275708520763,-1234),('1635957e-9e63-4cb1-a723-4ba86ffc1b14','AuthenticationContextCache','DELETE',NULL,1512981282467983496,-1),('1635957e-9e63-4cb1-a723-4ba86ffc1b14','SAMLSSOSessionDataCache','DELETE',NULL,1512981282783151137,-1),('1c2ebdae-9a9f-4b7d-b24f-aed6d24aed37','AuthenticationRequestCache','DELETE',NULL,1512981275515971367,-1),('1c2ebdae-9a9f-4b7d-b24f-aed6d24aed37','AuthenticationResultCache','DELETE',NULL,1512981282790076274,-1),('1c2ebdae-9a9f-4b7d-b24f-aed6d24aed37','SAMLSSOSessionDataCache','STORE','¨Ì\0sr\0=org.wso2.carbon.identity.sso.saml.cache.SessionDataCacheEntry∞\'Oµ-„¶à\0L\0\nsessionDTOt\09Lorg/wso2/carbon/identity/sso/saml/dto/SAMLSSOSessionDTO;xr\02org.wso2.carbon.identity.sso.saml.cache.CacheEntry¸BCS∫À„\0\0xpsr\07org.wso2.carbon.identity.sso.saml.dto.SAMLSSOSessionDTO˙FJ⁄¶ﬁ\0I\0attributeConsumingServiceIndexZ\0	forceAuthZ\0\rinvalidLogoutZ\0isIdPInitSLOZ\0isIdPInitSSOZ\0	logoutReqZ\0passiveAuthL\0assertionConsumerURLt\0Ljava/lang/String;L\0customLoginPageq\0~\0L\0destinationq\0~\0L\0httpQueryStringq\0~\0L\0issuerq\0~\0L\0\nrelayStateq\0~\0L\0relyingPartySessionIdq\0~\0L\0	requestIDq\0~\0L\0requestMessageStringq\0~\0L\0	sessionIdq\0~\0L\0subjectq\0~\0L\0tenantDomainq\0~\0L\0validationRespDTOt\0GLorg/wso2/carbon/identity/sso/saml/dto/SAMLSSOReqValidationResponseDTO;xp\0\0\0\0\0\0\0\0\0\0ppt\0https://localhost:9444/samlssopt\0\rAPI_PUBLISHERt\0$557fba78-1f30-430a-be67-f0b7179404b0t\02B58F3DB5ADD96277C007E75C21FC9226FF0015EBB973E5A7B0FBDD130357440B9A5F0E6F4474357B0870B620DE1A9BFAAC8FFE342737F3A3D32825F8E769D12BC9DF033991E87784C9FE311FEE0EEBC5C3988794DE9C7893AE600A09F97BF637CC6180E8DDF23413DC536C86C7CFC5E7C478391C4B1FB43D696A189F853B148t\0(gpklemomkabopmmgiljefdjjiabanndphkjjnfaotåPD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHNhbWwycDpBdXRoblJlcXVlc3QgRGVzdGluYXRpb249Imh0dHBzOi8vbG9jYWxob3N0Ojk0NDQvc2FtbHNzbyIgSUQ9Imdwa2xlbW9ta2Fib3BtbWdpbGplZmRqamlhYmFubmRwaGtqam5mYW8iIElzc3VlSW5zdGFudD0iMjAxNy0xMi0xMVQwODozNDozMy4yNzJaIiBWZXJzaW9uPSIyLjAiIHhtbG5zOnNhbWwycD0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOnByb3RvY29sIj48c2FtbDI6SXNzdWVyIHhtbG5zOnNhbWwyPSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoyLjA6YXNzZXJ0aW9uIj5BUElfUFVCTElTSEVSPC9zYW1sMjpJc3N1ZXI+PGRzOlNpZ25hdHVyZSB4bWxuczpkcz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC8wOS94bWxkc2lnIyI+CjxkczpTaWduZWRJbmZvPgo8ZHM6Q2Fub25pY2FsaXphdGlvbk1ldGhvZCBBbGdvcml0aG09Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvMTAveG1sLWV4Yy1jMTRuIyIvPgo8ZHM6U2lnbmF0dXJlTWV0aG9kIEFsZ29yaXRobT0iaHR0cDovL3d3dy53My5vcmcvMjAwMC8wOS94bWxkc2lnI3JzYS1zaGExIi8+CjxkczpSZWZlcmVuY2UgVVJJPSIjZ3BrbGVtb21rYWJvcG1tZ2lsamVmZGpqaWFiYW5uZHBoa2pqbmZhbyI+CjxkczpUcmFuc2Zvcm1zPgo8ZHM6VHJhbnNmb3JtIEFsZ29yaXRobT0iaHR0cDovL3d3dy53My5vcmcvMjAwMC8wOS94bWxkc2lnI2VudmVsb3BlZC1zaWduYXR1cmUiLz4KPGRzOlRyYW5zZm9ybSBBbGdvcml0aG09Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvMTAveG1sLWV4Yy1jMTRuIyIvPgo8L2RzOlRyYW5zZm9ybXM+CjxkczpEaWdlc3RNZXRob2QgQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwLzA5L3htbGRzaWcjc2hhMSIvPgo8ZHM6RGlnZXN0VmFsdWU+KzJrRUdXa282N21HaDdxemNOM2R3ZDdGZmdNPTwvZHM6RGlnZXN0VmFsdWU+CjwvZHM6UmVmZXJlbmNlPgo8L2RzOlNpZ25lZEluZm8+CjxkczpTaWduYXR1cmVWYWx1ZT4KYUVQZHR0RnE3UmtOYXhTY256WjlOUmYyTG8rVGw1b3dBNWIzTFdibmdKYkJFSkJFV014QnRRWUxramIydEtBUW0xaGIvNWh2L3JsUQpCZFZBWVJSY0xINkw3cnJkQ1EveVdMN3NsNHlSUTBjWEY5WmdoUnV3Z0pRMkM1eGFIdzBEYjd2ME1iSFNMVmVNS2NqWFg2SVl0MDRxCmQ1eFVUUGtsbG8rZktxRDlLTVk9CjwvZHM6U2lnbmF0dXJlVmFsdWU+CjxkczpLZXlJbmZvPjxkczpYNTA5RGF0YT48ZHM6WDUwOUNlcnRpZmljYXRlPk1JSUNOVENDQVo2Z0F3SUJBZ0lFUzM0M2dqQU5CZ2txaGtpRzl3MEJBUVVGQURCVk1Rc3dDUVlEVlFRR0V3SlZVekVMTUFrR0ExVUUKQ0F3Q1EwRXhGakFVQmdOVkJBY01EVTF2ZFc1MFlXbHVJRlpwWlhjeERUQUxCZ05WQkFvTUJGZFRUekl4RWpBUUJnTlZCQU1NQ1d4dgpZMkZzYUc5emREQWVGdzB4TURBeU1Ua3dOekF5TWpaYUZ3MHpOVEF5TVRNd056QXlNalphTUZVeEN6QUpCZ05WQkFZVEFsVlRNUXN3CkNRWURWUVFJREFKRFFURVdNQlFHQTFVRUJ3d05UVzkxYm5SaGFXNGdWbWxsZHpFTk1Bc0dBMVVFQ2d3RVYxTlBNakVTTUJBR0ExVUUKQXd3SmJHOWpZV3hvYjNOME1JR2ZNQTBHQ1NxR1NJYjNEUUVCQVFVQUE0R05BRENCaVFLQmdRQ1VwL29WMXZXYzgvVGtRU2lBdlRvdQpzTXpPTTRhc0IyaWx0cjJRS296bmk1YVZGdTgxOE1wT0xaSXI4TE1uVHpXbGxKdnZhQTVSQUFkcGJFQ2IrNDhGamJCZTBoc2VVZE41Ckhwd3ZuSC9EVzhaY2NHdms1M0k2T3JxN2hMQ3YxWkh0dU9Db2tnaHovQVRyaHlQcStRa3RNZlhuUlM0SHJLR0pUenhhQ2NVN09RSUQKQVFBQm94SXdFREFPQmdOVkhROEJBZjhFQkFNQ0JQQXdEUVlKS29aSWh2Y05BUUVGQlFBRGdZRUFXNXdQUjdjcjFMQWRxK0lyUjQ0aQpRbFJHNUlUQ1pYWTloSTBQeWdMUDJySEFOaCtQWWZUbXhidU9ueWtOR3loTTZGakZMYlcydVpIUVRZMWpNclBwcmpPcm15SzVzakpSCk80ZDFEZUdIVC9ZbklqczlKb2dSS3Y0WEhFQ3dMdElWZEFiSWRXSEV0VlpKeU1Ta3RjeXlzRmN2dWhQUUs4UWMvRS9XcTh1SFNDbz08L2RzOlg1MDlDZXJ0aWZpY2F0ZT48L2RzOlg1MDlEYXRhPjwvZHM6S2V5SW5mbz48L2RzOlNpZ25hdHVyZT48c2FtbDJwOk5hbWVJRFBvbGljeSBBbGxvd0NyZWF0ZT0idHJ1ZSIgRm9ybWF0PSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoxLjE6bmFtZWlkLWZvcm1hdDp1bnNwZWNpZmllZCIvPjwvc2FtbDJwOkF1dGhuUmVxdWVzdD4=ppt\0carbon.supersr\0Eorg.wso2.carbon.identity.sso.saml.dto.SAMLSSOReqValidationResponseDTO›â2ÊQ∫zY\0I\0attributeConsumingServiceIndexZ\0doSignResponseZ\0doSingleLogoutZ\0isForceAuthnZ\0isIdPInitSLOZ\0isIdPInitSSOZ\0isLogOutReqZ\0	isPassiveZ\0isValidZ\0logoutFromAuthFrameworkL\0assertionConsumerURLq\0~\0L\0destinationq\0~\0L\0digestAlgorithmUriq\0~\0L\0idq\0~\0L\0issuerq\0~\0L\0loginPageURLq\0~\0[\0\rlogoutRespDTOt\0?[Lorg/wso2/carbon/identity/sso/saml/dto/SingleLogoutRequestDTO;L\0logoutResponseq\0~\0L\0queryStringq\0~\0L\0requestMessageStringq\0~\0L\0responseq\0~\0L\0returnToURLq\0~\0L\0rpSessionIdq\0~\0L\0signingAlgorithmUriq\0~\0L\0subjectq\0~\0xp\0\0\0\0\0\0\0\0\0\0\0\0pq\0~\0pq\0~\0q\0~\0	ppppq\0~\0\rppq\0~\0pp',1512981275463684451,-1),('1eb8e157-e8a2-4e62-bb5f-a9db15400b06','AuthenticationContextCache','DELETE',NULL,1512981296165957413,-1),('8764344d-3c6c-4f55-a84f-006872fc951b','SAMLSSOParticipantCache','STORE','¨Ì\0sr\0Dorg.wso2.carbon.identity.sso.saml.cache.SAMLSSOParticipantCacheEntryyÌ	5+0\0L\0sessionInfoDatat\0;Lorg/wso2/carbon/identity/sso/saml/session/SessionInfoData;xr\02org.wso2.carbon.identity.sso.saml.cache.CacheEntry¸BCS∫À„\0\0xpsr\09org.wso2.carbon.identity.sso.saml.session.SessionInfoDataõ–ÆÒ≈‚ßt\0L\0issuerSubjectMapt\0Ljava/util/Map;L\0\rrpSessionListq\0~\0L\0serviceProviderListq\0~\0xpsr\0&java.util.concurrent.ConcurrentHashMapdôﬁùá)=\0I\0segmentMaskI\0segmentShift[\0segmentst\01[Ljava/util/concurrent/ConcurrentHashMap$Segment;xp\0\0\0\0\0\0ur\01[Ljava.util.concurrent.ConcurrentHashMap$Segment;Rw?A2õ9t\0\0xp\0\0\0sr\0.java.util.concurrent.ConcurrentHashMap$Segment6LêXì)=\0F\0\nloadFactorxr\0(java.util.concurrent.locks.ReentrantLockfU®,,»jÎ\0L\0synct\0/Ljava/util/concurrent/locks/ReentrantLock$Sync;xpsr\04java.util.concurrent.locks.ReentrantLock$NonfairSynceà2ÁS{ø\0\0xr\0-java.util.concurrent.locks.ReentrantLock$Sync∏¢î™DZ|\0\0xr\05java.util.concurrent.locks.AbstractQueuedSynchronizerfU®Cu?R„\0I\0statexr\06java.util.concurrent.locks.AbstractOwnableSynchronizer3ﬂØπ≠mo©\0\0xp\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0t\0\rAPI_PUBLISHERt\0adminppxsq\0~\0\0\0\0\0\0\0uq\0~\0\n\0\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0q\0~\03t\02B58F3DB5ADD96277C007E75C21FC9226FF0015EBB973E5A7B0FBDD130357440B9A5F0E6F4474357B0870B620DE1A9BFAAC8FFE342737F3A3D32825F8E769D12BC9DF033991E87784C9FE311FEE0EEBC5C3988794DE9C7893AE600A09F97BF637CC6180E8DDF23413DC536C86C7CFC5E7C478391C4B1FB43D696A189F853B148ppxsq\0~\0\0\0\0\0\0\0uq\0~\0\n\0\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0q\0~\03sr\0<org.wso2.carbon.identity.core.model.SAMLSSOServiceProviderDOo-∆œ¿÷ÿ\0$Z\0\ZdoEnableEncryptedAssertionZ\0doSignAssertionsZ\0doSignResponseZ\0doSingleLogoutZ\0doValidateSignatureInRequestsZ\0enableAttributesByDefaultZ\0idPInitSLOEnabledZ\0%isAssertionQueryRequestProfileEnabledZ\0isIdPInitSSOEnabledL\0assertionConsumerUrlt\0Ljava/lang/String;L\0assertionConsumerUrlListt\0Ljava/util/List;[\0assertionConsumerUrlst\0[Ljava/lang/String;L\0attributeConsumingServiceIndexq\0~\0{L\0	certAliasq\0~\0{L\0defaultAssertionConsumerUrlq\0~\0{L\0digestAlgorithmUriq\0~\0{L\0encryptionCertificateq\0~\0{L\0idpInitSLOReturnToURLListq\0~\0|[\0idpInitSLOReturnToURLsq\0~\0}L\0issuerq\0~\0{L\0loginPageURLq\0~\0{L\0nameIDFormatq\0~\0{L\0nameIdClaimUriq\0~\0{[\0requestedAudiencesq\0~\0}L\0requestedAudiencesListq\0~\0|[\0requestedClaimsq\0~\0}L\0requestedClaimsListq\0~\0|[\0requestedRecipientsq\0~\0}L\0requestedRecipientsListq\0~\0|L\0signingAlgorithmUriq\0~\0{L\0signingCertificateq\0~\0{L\0\rsloRequestURLq\0~\0{L\0sloResponseURLq\0~\0{L\0#supportedAssertionQueryRequestTypesq\0~\0{L\0tenantDomainq\0~\0{L\0x509Certificatet\0$Ljava/security/cert/X509Certificate;xp\0\0\0\0\0\0\0t\05https://localhost:9443/publisher/jagg/jaggery_acs.jagsr\0\Zjava.util.Arrays$ArrayListŸ§<æÕà“\0[\0at\0[Ljava/lang/Object;xpur\0[Ljava.lang.String;≠“VÁÈ{G\0\0xp\0\0\0t\05https://localhost:9443/publisher/jagg/jaggery_acs.jaguq\0~\0Ñ\0\0\0q\0~\0Üpppt\0&http://www.w3.org/2000/09/xmldsig#sha1psq\0~\0Åuq\0~\0Ñ\0\0\0\0uq\0~\0Ñ\0\0\0\0q\0~\03pt\06urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddresspppppppt\0*http://www.w3.org/2000/09/xmldsig#rsa-sha1ppppt\0carbon.superpppx',1512981282496927394,-1),('8764344d-3c6c-4f55-a84f-006872fc951b','SAMLSSOParticipantCache','STORE','¨Ì\0sr\0Dorg.wso2.carbon.identity.sso.saml.cache.SAMLSSOParticipantCacheEntryyÌ	5+0\0L\0sessionInfoDatat\0;Lorg/wso2/carbon/identity/sso/saml/session/SessionInfoData;xr\02org.wso2.carbon.identity.sso.saml.cache.CacheEntry¸BCS∫À„\0\0xpsr\09org.wso2.carbon.identity.sso.saml.session.SessionInfoDataõ–ÆÒ≈‚ßt\0L\0issuerSubjectMapt\0Ljava/util/Map;L\0\rrpSessionListq\0~\0L\0serviceProviderListq\0~\0xpsr\0&java.util.concurrent.ConcurrentHashMapdôﬁùá)=\0I\0segmentMaskI\0segmentShift[\0segmentst\01[Ljava/util/concurrent/ConcurrentHashMap$Segment;xp\0\0\0\0\0\0ur\01[Ljava.util.concurrent.ConcurrentHashMap$Segment;Rw?A2õ9t\0\0xp\0\0\0sr\0.java.util.concurrent.ConcurrentHashMap$Segment6LêXì)=\0F\0\nloadFactorxr\0(java.util.concurrent.locks.ReentrantLockfU®,,»jÎ\0L\0synct\0/Ljava/util/concurrent/locks/ReentrantLock$Sync;xpsr\04java.util.concurrent.locks.ReentrantLock$NonfairSynceà2ÁS{ø\0\0xr\0-java.util.concurrent.locks.ReentrantLock$Sync∏¢î™DZ|\0\0xr\05java.util.concurrent.locks.AbstractQueuedSynchronizerfU®Cu?R„\0I\0statexr\06java.util.concurrent.locks.AbstractOwnableSynchronizer3ﬂØπ≠mo©\0\0xp\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0t\0	API_STOREt\0admint\0\rAPI_PUBLISHERq\0~\04ppxsq\0~\0\0\0\0\0\0\0uq\0~\0\n\0\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0q\0~\03t\090CE79AB08D37D011F8D72E21633D80BA31E55A31525651DAC41F6983BBEFAAA6ADCE2B041C6479B70605BF8693E16DA825E2CAFEE011A72F9D5AB767EA47C7F3BA71EFE2F90476C337D79A152F2E2062EFCC7EC812169B68259C47D7F4C198CF31F2BB0BCEB53A8C032BDC449034B3440D6EAC1510E79436578B2134564DFAAq\0~\05t\02B58F3DB5ADD96277C007E75C21FC9226FF0015EBB973E5A7B0FBDD130357440B9A5F0E6F4474357B0870B620DE1A9BFAAC8FFE342737F3A3D32825F8E769D12BC9DF033991E87784C9FE311FEE0EEBC5C3988794DE9C7893AE600A09F97BF637CC6180E8DDF23413DC536C86C7CFC5E7C478391C4B1FB43D696A189F853B148ppxsq\0~\0\0\0\0\0\0\0uq\0~\0\n\0\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0sq\0~\0sq\0~\0\0\0\0\0?@\0\0q\0~\03sr\0<org.wso2.carbon.identity.core.model.SAMLSSOServiceProviderDOo-∆œ¿÷ÿ\0$Z\0\ZdoEnableEncryptedAssertionZ\0doSignAssertionsZ\0doSignResponseZ\0doSingleLogoutZ\0doValidateSignatureInRequestsZ\0enableAttributesByDefaultZ\0idPInitSLOEnabledZ\0%isAssertionQueryRequestProfileEnabledZ\0isIdPInitSSOEnabledL\0assertionConsumerUrlt\0Ljava/lang/String;L\0assertionConsumerUrlListt\0Ljava/util/List;[\0assertionConsumerUrlst\0[Ljava/lang/String;L\0attributeConsumingServiceIndexq\0~\0}L\0	certAliasq\0~\0}L\0defaultAssertionConsumerUrlq\0~\0}L\0digestAlgorithmUriq\0~\0}L\0encryptionCertificateq\0~\0}L\0idpInitSLOReturnToURLListq\0~\0~[\0idpInitSLOReturnToURLsq\0~\0L\0issuerq\0~\0}L\0loginPageURLq\0~\0}L\0nameIDFormatq\0~\0}L\0nameIdClaimUriq\0~\0}[\0requestedAudiencesq\0~\0L\0requestedAudiencesListq\0~\0~[\0requestedClaimsq\0~\0L\0requestedClaimsListq\0~\0~[\0requestedRecipientsq\0~\0L\0requestedRecipientsListq\0~\0~L\0signingAlgorithmUriq\0~\0}L\0signingCertificateq\0~\0}L\0\rsloRequestURLq\0~\0}L\0sloResponseURLq\0~\0}L\0#supportedAssertionQueryRequestTypesq\0~\0}L\0tenantDomainq\0~\0}L\0x509Certificatet\0$Ljava/security/cert/X509Certificate;xp\0\0\0\0\0\0\0t\01https://localhost:9443/store/jagg/jaggery_acs.jagsr\0\Zjava.util.Arrays$ArrayListŸ§<æÕà“\0[\0at\0[Ljava/lang/Object;xpur\0[Ljava.lang.String;≠“VÁÈ{G\0\0xp\0\0\0t\01https://localhost:9443/store/jagg/jaggery_acs.jaguq\0~\0Ü\0\0\0q\0~\0àpppt\0&http://www.w3.org/2000/09/xmldsig#sha1psq\0~\0Éuq\0~\0Ü\0\0\0\0uq\0~\0Ü\0\0\0\0q\0~\03pt\06urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddresspppppppt\0*http://www.w3.org/2000/09/xmldsig#rsa-sha1ppppt\0carbon.superpq\0~\05sq\0~\0|\0\0\0\0\0\0\0t\05https://localhost:9443/publisher/jagg/jaggery_acs.jagsq\0~\0Éuq\0~\0Ü\0\0\0t\05https://localhost:9443/publisher/jagg/jaggery_acs.jaguq\0~\0Ü\0\0\0q\0~\0ïpppt\0&http://www.w3.org/2000/09/xmldsig#sha1psq\0~\0Éq\0~\0åuq\0~\0Ü\0\0\0\0q\0~\05pt\06urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddresspppppppt\0*http://www.w3.org/2000/09/xmldsig#rsa-sha1ppppq\0~\0êpppx',1512981296178270999,-1),('c2b996e5-c52b-49ca-8f30-f4e4cf1c4e2f','AuthenticationRequestCache','DELETE',NULL,1512981296009061983,-1),('c2b996e5-c52b-49ca-8f30-f4e4cf1c4e2f','AuthenticationResultCache','DELETE',NULL,1512981296229858739,-1),('c2b996e5-c52b-49ca-8f30-f4e4cf1c4e2f','SAMLSSOSessionDataCache','STORE','¨Ì\0sr\0=org.wso2.carbon.identity.sso.saml.cache.SessionDataCacheEntry∞\'Oµ-„¶à\0L\0\nsessionDTOt\09Lorg/wso2/carbon/identity/sso/saml/dto/SAMLSSOSessionDTO;xr\02org.wso2.carbon.identity.sso.saml.cache.CacheEntry¸BCS∫À„\0\0xpsr\07org.wso2.carbon.identity.sso.saml.dto.SAMLSSOSessionDTO˙FJ⁄¶ﬁ\0I\0attributeConsumingServiceIndexZ\0	forceAuthZ\0\rinvalidLogoutZ\0isIdPInitSLOZ\0isIdPInitSSOZ\0	logoutReqZ\0passiveAuthL\0assertionConsumerURLt\0Ljava/lang/String;L\0customLoginPageq\0~\0L\0destinationq\0~\0L\0httpQueryStringq\0~\0L\0issuerq\0~\0L\0\nrelayStateq\0~\0L\0relyingPartySessionIdq\0~\0L\0	requestIDq\0~\0L\0requestMessageStringq\0~\0L\0	sessionIdq\0~\0L\0subjectq\0~\0L\0tenantDomainq\0~\0L\0validationRespDTOt\0GLorg/wso2/carbon/identity/sso/saml/dto/SAMLSSOReqValidationResponseDTO;xp\0\0\0\0\0\0\0\0\0t\01https://localhost:9443/store/jagg/jaggery_acs.jagpt\0https://localhost:9444/samlssopt\0	API_STOREt\0$e8283e27-0274-4168-b122-b52dd92a1081t\090CE79AB08D37D011F8D72E21633D80BA31E55A31525651DAC41F6983BBEFAAA6ADCE2B041C6479B70605BF8693E16DA825E2CAFEE011A72F9D5AB767EA47C7F3BA71EFE2F90476C337D79A152F2E2062EFCC7EC812169B68259C47D7F4C198CF31F2BB0BCEB53A8C032BDC449034B3440D6EAC1510E79436578B2134564DFAAt\0(eldljdoncjkhglcglkigmnjkjefgfnfhcfhonmhftPD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHNhbWwycDpBdXRoblJlcXVlc3QgQXNzZXJ0aW9uQ29uc3VtZXJTZXJ2aWNlVVJMPSJodHRwczovL2xvY2FsaG9zdDo5NDQzL3N0b3JlL2phZ2cvamFnZ2VyeV9hY3MuamFnIiBEZXN0aW5hdGlvbj0iaHR0cHM6Ly9sb2NhbGhvc3Q6OTQ0NC9zYW1sc3NvIiBJRD0iZWxkbGpkb25jamtoZ2xjZ2xraWdtbmpramVmZ2ZuZmhjZmhvbm1oZiIgSXNQYXNzaXZlPSJ0cnVlIiBJc3N1ZUluc3RhbnQ9IjIwMTctMTItMTFUMDg6MzQ6NTQuOTg2WiIgVmVyc2lvbj0iMi4wIiB4bWxuczpzYW1sMnA9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDpwcm90b2NvbCI+PHNhbWwyOklzc3VlciB4bWxuczpzYW1sMj0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOmFzc2VydGlvbiI+QVBJX1NUT1JFPC9zYW1sMjpJc3N1ZXI+PGRzOlNpZ25hdHVyZSB4bWxuczpkcz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC8wOS94bWxkc2lnIyI+CjxkczpTaWduZWRJbmZvPgo8ZHM6Q2Fub25pY2FsaXphdGlvbk1ldGhvZCBBbGdvcml0aG09Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvMTAveG1sLWV4Yy1jMTRuIyIvPgo8ZHM6U2lnbmF0dXJlTWV0aG9kIEFsZ29yaXRobT0iaHR0cDovL3d3dy53My5vcmcvMjAwMC8wOS94bWxkc2lnI3JzYS1zaGExIi8+CjxkczpSZWZlcmVuY2UgVVJJPSIjZWxkbGpkb25jamtoZ2xjZ2xraWdtbmpramVmZ2ZuZmhjZmhvbm1oZiI+CjxkczpUcmFuc2Zvcm1zPgo8ZHM6VHJhbnNmb3JtIEFsZ29yaXRobT0iaHR0cDovL3d3dy53My5vcmcvMjAwMC8wOS94bWxkc2lnI2VudmVsb3BlZC1zaWduYXR1cmUiLz4KPGRzOlRyYW5zZm9ybSBBbGdvcml0aG09Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvMTAveG1sLWV4Yy1jMTRuIyIvPgo8L2RzOlRyYW5zZm9ybXM+CjxkczpEaWdlc3RNZXRob2QgQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwLzA5L3htbGRzaWcjc2hhMSIvPgo8ZHM6RGlnZXN0VmFsdWU+RzI1Y1JHOTRzSmxyMnZaWlhmSW9sQmNZYVJ3PTwvZHM6RGlnZXN0VmFsdWU+CjwvZHM6UmVmZXJlbmNlPgo8L2RzOlNpZ25lZEluZm8+CjxkczpTaWduYXR1cmVWYWx1ZT4KT2tRaE5XbE9pbmdQT213eUJJdXVseHUwcW9ZdUliOFdNM2dZWkZzZjRQQ1RoQk1VdFZXQmdvWGIvcVVBWEtSOWhjK0dNRWQ4UUhtaApQOExReHRkdzVlY2ZwaFNMNGVNR1BSY2RscjJvVmtMcm1hSjN5c3czNW5aK2xIeUZoT1ZpYmR6VzRQZ3h0bXkva2JwK2xhdWtROHFCClV6bWhjY2tpUm9FOVNvRTNTNUE9CjwvZHM6U2lnbmF0dXJlVmFsdWU+CjxkczpLZXlJbmZvPjxkczpYNTA5RGF0YT48ZHM6WDUwOUNlcnRpZmljYXRlPk1JSUNOVENDQVo2Z0F3SUJBZ0lFUzM0M2dqQU5CZ2txaGtpRzl3MEJBUVVGQURCVk1Rc3dDUVlEVlFRR0V3SlZVekVMTUFrR0ExVUUKQ0F3Q1EwRXhGakFVQmdOVkJBY01EVTF2ZFc1MFlXbHVJRlpwWlhjeERUQUxCZ05WQkFvTUJGZFRUekl4RWpBUUJnTlZCQU1NQ1d4dgpZMkZzYUc5emREQWVGdzB4TURBeU1Ua3dOekF5TWpaYUZ3MHpOVEF5TVRNd056QXlNalphTUZVeEN6QUpCZ05WQkFZVEFsVlRNUXN3CkNRWURWUVFJREFKRFFURVdNQlFHQTFVRUJ3d05UVzkxYm5SaGFXNGdWbWxsZHpFTk1Bc0dBMVVFQ2d3RVYxTlBNakVTTUJBR0ExVUUKQXd3SmJHOWpZV3hvYjNOME1JR2ZNQTBHQ1NxR1NJYjNEUUVCQVFVQUE0R05BRENCaVFLQmdRQ1VwL29WMXZXYzgvVGtRU2lBdlRvdQpzTXpPTTRhc0IyaWx0cjJRS296bmk1YVZGdTgxOE1wT0xaSXI4TE1uVHpXbGxKdnZhQTVSQUFkcGJFQ2IrNDhGamJCZTBoc2VVZE41Ckhwd3ZuSC9EVzhaY2NHdms1M0k2T3JxN2hMQ3YxWkh0dU9Db2tnaHovQVRyaHlQcStRa3RNZlhuUlM0SHJLR0pUenhhQ2NVN09RSUQKQVFBQm94SXdFREFPQmdOVkhROEJBZjhFQkFNQ0JQQXdEUVlKS29aSWh2Y05BUUVGQlFBRGdZRUFXNXdQUjdjcjFMQWRxK0lyUjQ0aQpRbFJHNUlUQ1pYWTloSTBQeWdMUDJySEFOaCtQWWZUbXhidU9ueWtOR3loTTZGakZMYlcydVpIUVRZMWpNclBwcmpPcm15SzVzakpSCk80ZDFEZUdIVC9ZbklqczlKb2dSS3Y0WEhFQ3dMdElWZEFiSWRXSEV0VlpKeU1Ta3RjeXlzRmN2dWhQUUs4UWMvRS9XcTh1SFNDbz08L2RzOlg1MDlDZXJ0aWZpY2F0ZT48L2RzOlg1MDlEYXRhPjwvZHM6S2V5SW5mbz48L2RzOlNpZ25hdHVyZT48c2FtbDJwOk5hbWVJRFBvbGljeSBBbGxvd0NyZWF0ZT0idHJ1ZSIgRm9ybWF0PSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoxLjE6bmFtZWlkLWZvcm1hdDp1bnNwZWNpZmllZCIvPjwvc2FtbDJwOkF1dGhuUmVxdWVzdD4=ppt\0carbon.supersr\0Eorg.wso2.carbon.identity.sso.saml.dto.SAMLSSOReqValidationResponseDTO›â2ÊQ∫zY\0I\0attributeConsumingServiceIndexZ\0doSignResponseZ\0doSingleLogoutZ\0isForceAuthnZ\0isIdPInitSLOZ\0isIdPInitSSOZ\0isLogOutReqZ\0	isPassiveZ\0isValidZ\0logoutFromAuthFrameworkL\0assertionConsumerURLq\0~\0L\0destinationq\0~\0L\0digestAlgorithmUriq\0~\0L\0idq\0~\0L\0issuerq\0~\0L\0loginPageURLq\0~\0[\0\rlogoutRespDTOt\0?[Lorg/wso2/carbon/identity/sso/saml/dto/SingleLogoutRequestDTO;L\0logoutResponseq\0~\0L\0queryStringq\0~\0L\0requestMessageStringq\0~\0L\0responseq\0~\0L\0returnToURLq\0~\0L\0rpSessionIdq\0~\0L\0signingAlgorithmUriq\0~\0L\0subjectq\0~\0xp\0\0\0\0\0\0\0\0\0\0\0q\0~\0q\0~\0	pq\0~\0\rq\0~\0\nppppq\0~\0ppq\0~\0pp',1512981295997451679,-1),('c2b996e5-c52b-49ca-8f30-f4e4cf1c4e2f','SAMLSSOSessionDataCache','DELETE',NULL,1512981296222851014,-1),('d9fea9199fc18c9bcf627d0051864b00de9e7533883927c57479208cfc602c28','AppAuthFrameworkSessionContextCache','STORE','¨Ì\0sr\0\\org.wso2.carbon.identity.application.authentication.framework.cache.SessionContextCacheEntry\0ïÕe\r·sπ\0J\0accessedTimeL\0contextt\0VLorg/wso2/carbon/identity/application/authentication/framework/context/SessionContext;L\0loggedInUsert\0Ljava/lang/String;xr\0<org.wso2.carbon.identity.application.common.cache.CacheEntryö£|Mf,\0\0xp\0\0`D∂>tsr\0Torg.wso2.carbon.identity.application.authentication.framework.context.SessionContextﬁÚºi?®πG\0Z\0isRememberMeL\0authenticatedIdPst\0Ljava/util/Map;L\0authenticatedSequencesq\0~\0L\0\npropertiesq\0~\0xp\0sr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0LOCALsr\0Xorg.wso2.carbon.identity.application.authentication.framework.model.AuthenticatedIdPDataMd°¬eL\0L\0\rauthenticatort\0`Lorg/wso2/carbon/identity/application/authentication/framework/config/model/AuthenticatorConfig;L\0idpNameq\0~\0L\0usert\0WLorg/wso2/carbon/identity/application/authentication/framework/model/AuthenticatedUser;xpsr\0^org.wso2.carbon.identity.application.authentication.framework.config.model.AuthenticatorConfig<Òq$M∫ZP\0Z\0enabledL\0applicationAuthenticatort\0XLorg/wso2/carbon/identity/application/authentication/framework/ApplicationAuthenticator;L\0authenticatorStateInfot\0VLorg/wso2/carbon/identity/application/authentication/framework/AuthenticatorStateInfo;L\0idpNamest\0Ljava/util/List;L\0idpsq\0~\0L\0nameq\0~\0L\0parameterMapq\0~\0xp\0sr\0Oorg.wso2.carbon.identity.application.authenticator.basicauth.BasicAuthenticator@øAÚDjY\0\0xr\0^org.wso2.carbon.identity.application.authentication.framework.AbstractApplicationAuthenticator¬◊ünÔ]Ï\0\0xppsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0q\0~\0\nxsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0\nsr\0Borg.wso2.carbon.identity.application.common.model.IdentityProviderÑó\\_Óü\0Z\0enableZ\0\rfederationHubZ\0primaryL\0aliasq\0~\0L\0certificateq\0~\0L\0claimConfigt\0?Lorg/wso2/carbon/identity/application/common/model/ClaimConfig;L\0\ZdefaultAuthenticatorConfigt\0PLorg/wso2/carbon/identity/application/common/model/FederatedAuthenticatorConfig;L\0\"defaultProvisioningConnectorConfigt\0OLorg/wso2/carbon/identity/application/common/model/ProvisioningConnectorConfig;L\0displayNameq\0~\0[\0federatedAuthenticatorConfigst\0Q[Lorg/wso2/carbon/identity/application/common/model/FederatedAuthenticatorConfig;L\0homeRealmIdq\0~\0L\0identityProviderDescriptionq\0~\0L\0identityProviderNameq\0~\0[\0\ridpPropertiest\0M[Lorg/wso2/carbon/identity/application/common/model/IdentityProviderProperty;L\0justInTimeProvisioningConfigt\0PLorg/wso2/carbon/identity/application/common/model/JustInTimeProvisioningConfig;L\0permissionAndRoleConfigt\0LLorg/wso2/carbon/identity/application/common/model/PermissionsAndRoleConfig;[\0provisioningConnectorConfigst\0P[Lorg/wso2/carbon/identity/application/common/model/ProvisioningConnectorConfig;L\0provisioningRoleq\0~\0xp\0\0\0ppppppur\0Q[Lorg.wso2.carbon.identity.application.common.model.FederatedAuthenticatorConfig;Ö°¡,	ﬁ™Å\0\0xp\0\0\0\0ppq\0~\0\nur\0M[Lorg.wso2.carbon.identity.application.common.model.IdentityProviderProperty;¥Å⁄®û•S\0\0xp\0\0\0\0ppur\0P[Lorg.wso2.carbon.identity.application.common.model.ProvisioningConnectorConfig;≤97ä]x„œ\0\0xp\0\0\0\0pxt\0BasicAuthenticatorpq\0~\0\nsr\0Uorg.wso2.carbon.identity.application.authentication.framework.model.AuthenticatedUserü¯ã€>Ÿ$\0Z\0isFederatedUserL\0authenticatedSubjectIdentifierq\0~\0L\0federatedIdPNameq\0~\0L\0userAttributesq\0~\0xr\06org.wso2.carbon.identity.application.common.model.User·˝fﬁ°\0L\0tenantDomainq\0~\0L\0userNameq\0~\0L\0userStoreDomainq\0~\0xpt\0carbon.supert\0admint\0PRIMARY\0q\0~\0/psq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xxsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rAPI_PUBLISHERsr\0Yorg.wso2.carbon.identity.application.authentication.framework.config.model.SequenceConfig^≠Í^»Ëd+\0Z\0	completedZ\0isCheckAuthnZ\0isForceAuthnL\0applicationConfigt\0^Lorg/wso2/carbon/identity/application/authentication/framework/config/model/ApplicationConfig;L\0\rapplicationIdq\0~\0L\0authenticatedIdPsq\0~\0L\0!authenticatedReqPathAuthenticatorq\0~\0L\0authenticatedUserq\0~\0\rL\0nameq\0~\0L\0reqPathAuthenticatorsq\0~\0L\0stepMapq\0~\0xp\0\0\0sr\0\\org.wso2.carbon.identity.application.authentication.framework.config.model.ApplicationConfigp*ª~HBÂ(\0Z\0alwaysSendMappedLocalSubjectIdI\0\rapplicationIDZ\0enableAuthorizationZ\0	isSaaSAppZ\0mappedSubjectIDSelectedZ\0\'useTenantDomainInLocalSubjectIdentifierZ\0*useUserstoreDomainInLocalSubjectIdentifierL\0applicationNameq\0~\0L\0\rclaimMappingsq\0~\0L\0mandatoryClaimsq\0~\0[\0permissionst\0[Ljava/lang/String;L\0requestedClaimsq\0~\0L\0	roleClaimq\0~\0L\0roleMappingsq\0~\0L\0serviceProvidert\0CLorg/wso2/carbon/identity/application/common/model/ServiceProvider;L\0subjectClaimUriq\0~\0xp\0\0\0\0\0\0\0\0\0q\0~\03sq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xur\0[Ljava.lang.String;≠“VÁÈ{G\0\0xp\0\0\0\0sq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0\0sq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsr\0Aorg.wso2.carbon.identity.application.common.model.ServiceProviderA˚xˆ≥ÿv\0\rI\0\rapplicationIDZ\0saasAppL\0applicationNameq\0~\0L\0claimConfigq\0~\0L\0descriptionq\0~\0L\0inboundAuthenticationConfigt\0OLorg/wso2/carbon/identity/application/common/model/InboundAuthenticationConfig;L\0inboundProvisioningConfigt\0MLorg/wso2/carbon/identity/application/common/model/InboundProvisioningConfig;L\0$localAndOutBoundAuthenticationConfigt\0XLorg/wso2/carbon/identity/application/common/model/LocalAndOutboundAuthenticationConfig;L\0\ZoutboundProvisioningConfigt\0NLorg/wso2/carbon/identity/application/common/model/OutboundProvisioningConfig;L\0ownert\08Lorg/wso2/carbon/identity/application/common/model/User;L\0permissionAndRoleConfigq\0~\0![\0requestPathAuthenticatorConfigst\0S[Lorg/wso2/carbon/identity/application/common/model/RequestPathAuthenticatorConfig;[\0spPropertiest\0L[Lorg/wso2/carbon/identity/application/common/model/ServiceProviderProperty;xp\0\0\0\0q\0~\03sr\0=org.wso2.carbon.identity.application.common.model.ClaimConfigPgB∫B7b\0Z\0alwaysSendMappedLocalSubjectIdZ\0localClaimDialect[\0\rclaimMappingst\0A[Lorg/wso2/carbon/identity/application/common/model/ClaimMapping;[\0	idpClaimst\0:[Lorg/wso2/carbon/identity/application/common/model/Claim;L\0roleClaimURIq\0~\0L\0userClaimURIq\0~\0xp\0ur\0A[Lorg.wso2.carbon.identity.application.common.model.ClaimMapping;ƒ>ûÙjb¶†\0\0xp\0\0\0\0ur\0:[Lorg.wso2.carbon.identity.application.common.model.Claim;‹•Ä˙u‚G\0\0xp\0\0\0\0q\0~\0@pt\0\0sr\0Morg.wso2.carbon.identity.application.common.model.InboundAuthenticationConfig&lNwd=\0[\0#inboundAuthenticationRequestConfigst\0W[Lorg/wso2/carbon/identity/application/common/model/InboundAuthenticationRequestConfig;xpur\0W[Lorg.wso2.carbon.identity.application.common.model.InboundAuthenticationRequestConfig;5Œ≠¢£«–\0\0xp\0\0\0sr\0Torg.wso2.carbon.identity.application.common.model.InboundAuthenticationRequestConfigˇ!ˇÁÌ¥\0L\0friendlyNameq\0~\0L\0inboundAuthKeyq\0~\0L\0inboundAuthTypeq\0~\0L\0inboundConfigTypeq\0~\0[\0\npropertiest\0=[Lorg/wso2/carbon/identity/application/common/model/Property;xppt\0\rAPI_PUBLISHERt\0\npassivestst\0standardAPPur\0=[Lorg.wso2.carbon.identity.application.common.model.Property;ÓØÚSR@=\0\0xp\0\0\0\0sq\0~\0Ypt\0\rAPI_PUBLISHERt\0samlssot\0standardAPPuq\0~\0_\0\0\0\0sq\0~\0Ypt\0\rAPI_PUBLISHERt\0openidt\0standardAPPuq\0~\0_\0\0\0\0sr\0Korg.wso2.carbon.identity.application.common.model.InboundProvisioningConfigöh◊¥\0^9\0Z\0\nisDumbModeZ\0provisioningEnabledL\0provisioningUserStoreq\0~\0xp\0\0t\0\0sr\0Vorg.wso2.carbon.identity.application.common.model.LocalAndOutboundAuthenticationConfigZÌ”â∂*s\0	Z\0%alwaysSendBackAuthenticatedListOfIdPsZ\0enableAuthorizationZ\0\'useTenantDomainInLocalSubjectIdentifierZ\0*useUserstoreDomainInLocalSubjectIdentifierL\0authenticationStepForAttributest\0FLorg/wso2/carbon/identity/application/common/model/AuthenticationStep;L\0authenticationStepForSubjectq\0~\0o[\0authenticationStepst\0G[Lorg/wso2/carbon/identity/application/common/model/AuthenticationStep;L\0authenticationTypeq\0~\0L\0subjectClaimUriq\0~\0xp\0\0\0\0ppur\0G[Lorg.wso2.carbon.identity.application.common.model.AuthenticationStep;“áéâ4ÎN\0\0xp\0\0\0sr\0Dorg.wso2.carbon.identity.application.common.model.AuthenticationStepÁˇ≈ö~p\0Z\0\rattributeStepI\0	stepOrderZ\0subjectStep[\0\ZfederatedIdentityProviderst\0E[Lorg/wso2/carbon/identity/application/common/model/IdentityProvider;[\0localAuthenticatorConfigst\0M[Lorg/wso2/carbon/identity/application/common/model/LocalAuthenticatorConfig;xp\0\0\0ur\0E[Lorg.wso2.carbon.identity.application.common.model.IdentityProvider;‡-;˚Êæ\0\0xp\0\0\0\0ur\0M[Lorg.wso2.carbon.identity.application.common.model.LocalAuthenticatorConfig;j\Zzé¿éœd\0\0xp\0\0\0sr\0Jorg.wso2.carbon.identity.application.common.model.LocalAuthenticatorConfig.¨÷.ŒWÉ;\0Z\0enabledL\0displayNameq\0~\0L\0nameq\0~\0[\0\npropertiesq\0~\0Zxpt\0	basicauthq\0~\0*uq\0~\0_\0\0\0\0t\0defaultpsr\0Lorg.wso2.carbon.identity.application.common.model.OutboundProvisioningConfig2ÎºLj∑ıµ\0[\0provisionByRoleListq\0~\08[\0provisioningIdentityProvidersq\0~\0uxppuq\0~\0x\0\0\0\0sq\0~\0,q\0~\0.t\0admint\0PRIMARYsr\0Jorg.wso2.carbon.identity.application.common.model.PermissionsAndRoleConfig\n„#f±d—\0[\0idpRolesq\0~\08[\0permissionst\0J[Lorg/wso2/carbon/identity/application/common/model/ApplicationPermission;[\0roleMappingst\0@[Lorg/wso2/carbon/identity/application/common/model/RoleMapping;xpuq\0~\0=\0\0\0\0ur\0J[Lorg.wso2.carbon.identity.application.common.model.ApplicationPermission;´˛òu-f⁄\0\0xp\0\0\0\0ur\0@[Lorg.wso2.carbon.identity.application.common.model.RoleMapping;∑ú¸πq≤™G\0\0xp\0\0\0\0ur\0S[Lorg.wso2.carbon.identity.application.common.model.RequestPathAuthenticatorConfig;∑eÇ2\"£\0\0xp\0\0\0\0ur\0L[Lorg.wso2.carbon.identity.application.common.model.ServiceProviderProperty;πuufEÍ\0\0xp\0\0\0\0pq\0~\03t\0∆eyJ0eXAiOiJKV1QiLCAiYWxnIjoibm9uZSJ9.eyJpc3MiOiJ3c28yIiwiZXhwIjoxNTEyOTgxMjgyMzY0MzAwMCwiaWF0IjoxNTEyOTgxMjgyMzY0LCJpZHBzIjpbeyJpZHAiOiJMT0NBTCIsImF1dGhlbnRpY2F0b3IiOiJCYXNpY0F1dGhlbnRpY2F0b3IifV19.psq\0~\0+q\0~\0.q\0~\0/q\0~\00\0q\0~\0/pppsq\0~\0\0\0\0\0w\0\0\0\0xsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0sr\0Uorg.wso2.carbon.identity.application.authentication.framework.config.model.StepConfigdËIù]fô\0Z\0	completedZ\0multiOptionI\0orderZ\0retryingZ\0subjectAttributeStepZ\0subjectIdentifierStepL\0authenticatedAutenticatorq\0~\0L\0authenticatedIdPq\0~\0L\0authenticatedUserq\0~\0\rL\0authenticatorListq\0~\0L\0authenticatorMappingsq\0~\0L\0	loginPageq\0~\0xp\0\0\0\0\0\0q\0~\0q\0~\0\nq\0~\0-sq\0~\0\0\0\0w\0\0\0q\0~\0xsq\0~\0\0\0\0\0w\0\0\0\0xpxxsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0t\0CreatedTimestampsr\0java.lang.Long;ã‰êÃè#ﬂ\0J\0valuexq\0~\0ô\0\0`D∂>it\0AuthenticatedUsersq\0~\0+q\0~\0.q\0~\0/q\0~\00\0q\0~\0/psq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xxq\0~\0/',1512981282420554268,-1),('d9fea9199fc18c9bcf627d0051864b00de9e7533883927c57479208cfc602c28','AppAuthFrameworkSessionContextCache','STORE','¨Ì\0sr\0\\org.wso2.carbon.identity.application.authentication.framework.cache.SessionContextCacheEntry\0ïÕe\r·sπ\0J\0accessedTimeL\0contextt\0VLorg/wso2/carbon/identity/application/authentication/framework/context/SessionContext;L\0loggedInUsert\0Ljava/lang/String;xr\0<org.wso2.carbon.identity.application.common.cache.CacheEntryö£|Mf,\0\0xp\0\0`D∂tsr\0Torg.wso2.carbon.identity.application.authentication.framework.context.SessionContextﬁÚºi?®πG\0Z\0isRememberMeL\0authenticatedIdPst\0Ljava/util/Map;L\0authenticatedSequencesq\0~\0L\0\npropertiesq\0~\0xp\0sr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0LOCALsr\0Xorg.wso2.carbon.identity.application.authentication.framework.model.AuthenticatedIdPDataMd°¬eL\0L\0\rauthenticatort\0`Lorg/wso2/carbon/identity/application/authentication/framework/config/model/AuthenticatorConfig;L\0idpNameq\0~\0L\0usert\0WLorg/wso2/carbon/identity/application/authentication/framework/model/AuthenticatedUser;xpsr\0^org.wso2.carbon.identity.application.authentication.framework.config.model.AuthenticatorConfig<Òq$M∫ZP\0Z\0enabledL\0applicationAuthenticatort\0XLorg/wso2/carbon/identity/application/authentication/framework/ApplicationAuthenticator;L\0authenticatorStateInfot\0VLorg/wso2/carbon/identity/application/authentication/framework/AuthenticatorStateInfo;L\0idpNamest\0Ljava/util/List;L\0idpsq\0~\0L\0nameq\0~\0L\0parameterMapq\0~\0xp\0sr\0Oorg.wso2.carbon.identity.application.authenticator.basicauth.BasicAuthenticator@øAÚDjY\0\0xr\0^org.wso2.carbon.identity.application.authentication.framework.AbstractApplicationAuthenticator¬◊ünÔ]Ï\0\0xppsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0q\0~\0\nxsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0\nsr\0Borg.wso2.carbon.identity.application.common.model.IdentityProviderÑó\\_Óü\0Z\0enableZ\0\rfederationHubZ\0primaryL\0aliasq\0~\0L\0certificateq\0~\0L\0claimConfigt\0?Lorg/wso2/carbon/identity/application/common/model/ClaimConfig;L\0\ZdefaultAuthenticatorConfigt\0PLorg/wso2/carbon/identity/application/common/model/FederatedAuthenticatorConfig;L\0\"defaultProvisioningConnectorConfigt\0OLorg/wso2/carbon/identity/application/common/model/ProvisioningConnectorConfig;L\0displayNameq\0~\0[\0federatedAuthenticatorConfigst\0Q[Lorg/wso2/carbon/identity/application/common/model/FederatedAuthenticatorConfig;L\0homeRealmIdq\0~\0L\0identityProviderDescriptionq\0~\0L\0identityProviderNameq\0~\0[\0\ridpPropertiest\0M[Lorg/wso2/carbon/identity/application/common/model/IdentityProviderProperty;L\0justInTimeProvisioningConfigt\0PLorg/wso2/carbon/identity/application/common/model/JustInTimeProvisioningConfig;L\0permissionAndRoleConfigt\0LLorg/wso2/carbon/identity/application/common/model/PermissionsAndRoleConfig;[\0provisioningConnectorConfigst\0P[Lorg/wso2/carbon/identity/application/common/model/ProvisioningConnectorConfig;L\0provisioningRoleq\0~\0xp\0\0\0ppppppur\0Q[Lorg.wso2.carbon.identity.application.common.model.FederatedAuthenticatorConfig;Ö°¡,	ﬁ™Å\0\0xp\0\0\0\0ppq\0~\0\nur\0M[Lorg.wso2.carbon.identity.application.common.model.IdentityProviderProperty;¥Å⁄®û•S\0\0xp\0\0\0\0ppur\0P[Lorg.wso2.carbon.identity.application.common.model.ProvisioningConnectorConfig;≤97ä]x„œ\0\0xp\0\0\0\0pxt\0BasicAuthenticatorpq\0~\0\nsr\0Uorg.wso2.carbon.identity.application.authentication.framework.model.AuthenticatedUserü¯ã€>Ÿ$\0Z\0isFederatedUserL\0authenticatedSubjectIdentifierq\0~\0L\0federatedIdPNameq\0~\0L\0userAttributesq\0~\0xr\06org.wso2.carbon.identity.application.common.model.User·˝fﬁ°\0L\0tenantDomainq\0~\0L\0userNameq\0~\0L\0userStoreDomainq\0~\0xpt\0carbon.supert\0admint\0PRIMARY\0q\0~\0/psq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xxsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0t\0	API_STOREsr\0Yorg.wso2.carbon.identity.application.authentication.framework.config.model.SequenceConfig^≠Í^»Ëd+\0Z\0	completedZ\0isCheckAuthnZ\0isForceAuthnL\0applicationConfigt\0^Lorg/wso2/carbon/identity/application/authentication/framework/config/model/ApplicationConfig;L\0\rapplicationIdq\0~\0L\0authenticatedIdPsq\0~\0L\0!authenticatedReqPathAuthenticatorq\0~\0L\0authenticatedUserq\0~\0\rL\0nameq\0~\0L\0reqPathAuthenticatorsq\0~\0L\0stepMapq\0~\0xp\0\0\0sr\0\\org.wso2.carbon.identity.application.authentication.framework.config.model.ApplicationConfigp*ª~HBÂ(\0Z\0alwaysSendMappedLocalSubjectIdI\0\rapplicationIDZ\0enableAuthorizationZ\0	isSaaSAppZ\0mappedSubjectIDSelectedZ\0\'useTenantDomainInLocalSubjectIdentifierZ\0*useUserstoreDomainInLocalSubjectIdentifierL\0applicationNameq\0~\0L\0\rclaimMappingsq\0~\0L\0mandatoryClaimsq\0~\0[\0permissionst\0[Ljava/lang/String;L\0requestedClaimsq\0~\0L\0	roleClaimq\0~\0L\0roleMappingsq\0~\0L\0serviceProvidert\0CLorg/wso2/carbon/identity/application/common/model/ServiceProvider;L\0subjectClaimUriq\0~\0xp\0\0\0\0\0\0\0\0\0q\0~\03sq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xur\0[Ljava.lang.String;≠“VÁÈ{G\0\0xp\0\0\0\0sq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0\0sq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsr\0Aorg.wso2.carbon.identity.application.common.model.ServiceProviderA˚xˆ≥ÿv\0\rI\0\rapplicationIDZ\0saasAppL\0applicationNameq\0~\0L\0claimConfigq\0~\0L\0descriptionq\0~\0L\0inboundAuthenticationConfigt\0OLorg/wso2/carbon/identity/application/common/model/InboundAuthenticationConfig;L\0inboundProvisioningConfigt\0MLorg/wso2/carbon/identity/application/common/model/InboundProvisioningConfig;L\0$localAndOutBoundAuthenticationConfigt\0XLorg/wso2/carbon/identity/application/common/model/LocalAndOutboundAuthenticationConfig;L\0\ZoutboundProvisioningConfigt\0NLorg/wso2/carbon/identity/application/common/model/OutboundProvisioningConfig;L\0ownert\08Lorg/wso2/carbon/identity/application/common/model/User;L\0permissionAndRoleConfigq\0~\0![\0requestPathAuthenticatorConfigst\0S[Lorg/wso2/carbon/identity/application/common/model/RequestPathAuthenticatorConfig;[\0spPropertiest\0L[Lorg/wso2/carbon/identity/application/common/model/ServiceProviderProperty;xp\0\0\0\0q\0~\03sr\0=org.wso2.carbon.identity.application.common.model.ClaimConfigPgB∫B7b\0Z\0alwaysSendMappedLocalSubjectIdZ\0localClaimDialect[\0\rclaimMappingst\0A[Lorg/wso2/carbon/identity/application/common/model/ClaimMapping;[\0	idpClaimst\0:[Lorg/wso2/carbon/identity/application/common/model/Claim;L\0roleClaimURIq\0~\0L\0userClaimURIq\0~\0xp\0ur\0A[Lorg.wso2.carbon.identity.application.common.model.ClaimMapping;ƒ>ûÙjb¶†\0\0xp\0\0\0\0ur\0:[Lorg.wso2.carbon.identity.application.common.model.Claim;‹•Ä˙u‚G\0\0xp\0\0\0\0q\0~\0@pt\0\0sr\0Morg.wso2.carbon.identity.application.common.model.InboundAuthenticationConfig&lNwd=\0[\0#inboundAuthenticationRequestConfigst\0W[Lorg/wso2/carbon/identity/application/common/model/InboundAuthenticationRequestConfig;xpur\0W[Lorg.wso2.carbon.identity.application.common.model.InboundAuthenticationRequestConfig;5Œ≠¢£«–\0\0xp\0\0\0sr\0Torg.wso2.carbon.identity.application.common.model.InboundAuthenticationRequestConfigˇ!ˇÁÌ¥\0L\0friendlyNameq\0~\0L\0inboundAuthKeyq\0~\0L\0inboundAuthTypeq\0~\0L\0inboundConfigTypeq\0~\0[\0\npropertiest\0=[Lorg/wso2/carbon/identity/application/common/model/Property;xppt\0	API_STOREt\0samlssot\0standardAPPur\0=[Lorg.wso2.carbon.identity.application.common.model.Property;ÓØÚSR@=\0\0xp\0\0\0\0sq\0~\0Ypt\0	API_STOREt\0openidt\0standardAPPuq\0~\0_\0\0\0\0sq\0~\0Ypt\0	API_STOREt\0\npassivestst\0standardAPPuq\0~\0_\0\0\0\0sr\0Korg.wso2.carbon.identity.application.common.model.InboundProvisioningConfigöh◊¥\0^9\0Z\0\nisDumbModeZ\0provisioningEnabledL\0provisioningUserStoreq\0~\0xp\0\0t\0\0sr\0Vorg.wso2.carbon.identity.application.common.model.LocalAndOutboundAuthenticationConfigZÌ”â∂*s\0	Z\0%alwaysSendBackAuthenticatedListOfIdPsZ\0enableAuthorizationZ\0\'useTenantDomainInLocalSubjectIdentifierZ\0*useUserstoreDomainInLocalSubjectIdentifierL\0authenticationStepForAttributest\0FLorg/wso2/carbon/identity/application/common/model/AuthenticationStep;L\0authenticationStepForSubjectq\0~\0o[\0authenticationStepst\0G[Lorg/wso2/carbon/identity/application/common/model/AuthenticationStep;L\0authenticationTypeq\0~\0L\0subjectClaimUriq\0~\0xp\0\0\0\0ppur\0G[Lorg.wso2.carbon.identity.application.common.model.AuthenticationStep;“áéâ4ÎN\0\0xp\0\0\0sr\0Dorg.wso2.carbon.identity.application.common.model.AuthenticationStepÁˇ≈ö~p\0Z\0\rattributeStepI\0	stepOrderZ\0subjectStep[\0\ZfederatedIdentityProviderst\0E[Lorg/wso2/carbon/identity/application/common/model/IdentityProvider;[\0localAuthenticatorConfigst\0M[Lorg/wso2/carbon/identity/application/common/model/LocalAuthenticatorConfig;xp\0\0\0ur\0E[Lorg.wso2.carbon.identity.application.common.model.IdentityProvider;‡-;˚Êæ\0\0xp\0\0\0\0ur\0M[Lorg.wso2.carbon.identity.application.common.model.LocalAuthenticatorConfig;j\Zzé¿éœd\0\0xp\0\0\0sr\0Jorg.wso2.carbon.identity.application.common.model.LocalAuthenticatorConfig.¨÷.ŒWÉ;\0Z\0enabledL\0displayNameq\0~\0L\0nameq\0~\0[\0\npropertiesq\0~\0Zxpt\0	basicauthq\0~\0*uq\0~\0_\0\0\0\0t\0defaultpsr\0Lorg.wso2.carbon.identity.application.common.model.OutboundProvisioningConfig2ÎºLj∑ıµ\0[\0provisionByRoleListq\0~\08[\0provisioningIdentityProvidersq\0~\0uxppuq\0~\0x\0\0\0\0sq\0~\0,q\0~\0.t\0admint\0PRIMARYsr\0Jorg.wso2.carbon.identity.application.common.model.PermissionsAndRoleConfig\n„#f±d—\0[\0idpRolesq\0~\08[\0permissionst\0J[Lorg/wso2/carbon/identity/application/common/model/ApplicationPermission;[\0roleMappingst\0@[Lorg/wso2/carbon/identity/application/common/model/RoleMapping;xpuq\0~\0=\0\0\0\0ur\0J[Lorg.wso2.carbon.identity.application.common.model.ApplicationPermission;´˛òu-f⁄\0\0xp\0\0\0\0ur\0@[Lorg.wso2.carbon.identity.application.common.model.RoleMapping;∑ú¸πq≤™G\0\0xp\0\0\0\0ur\0S[Lorg.wso2.carbon.identity.application.common.model.RequestPathAuthenticatorConfig;∑eÇ2\"£\0\0xp\0\0\0\0ur\0L[Lorg.wso2.carbon.identity.application.common.model.ServiceProviderProperty;πuufEÍ\0\0xp\0\0\0\0pq\0~\03t\0∆eyJ0eXAiOiJKV1QiLCAiYWxnIjoibm9uZSJ9.eyJpc3MiOiJ3c28yIiwiZXhwIjoxNTEyOTgxMjk2MDYwMzAwMCwiaWF0IjoxNTEyOTgxMjk2MDYwLCJpZHBzIjpbeyJpZHAiOiJMT0NBTCIsImF1dGhlbnRpY2F0b3IiOiJCYXNpY0F1dGhlbnRpY2F0b3IifV19.psq\0~\0+q\0~\0.q\0~\0/q\0~\00\0q\0~\0/pppsq\0~\0\0\0\0\0w\0\0\0\0xsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0sr\0Uorg.wso2.carbon.identity.application.authentication.framework.config.model.StepConfigdËIù]fô\0Z\0	completedZ\0multiOptionI\0orderZ\0retryingZ\0subjectAttributeStepZ\0subjectIdentifierStepL\0authenticatedAutenticatorq\0~\0L\0authenticatedIdPq\0~\0L\0authenticatedUserq\0~\0\rL\0authenticatorListq\0~\0L\0authenticatorMappingsq\0~\0L\0	loginPageq\0~\0xp\0\0\0\0\0\0q\0~\0q\0~\0\nq\0~\0-sq\0~\0\0\0\0w\0\0\0sq\0~\0\0q\0~\0psq\0~\0\0\0\0w\0\0\0q\0~\0\nxsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0\nsq\0~\0\Z\0\0\0ppppppuq\0~\0$\0\0\0\0ppq\0~\0\nuq\0~\0&\0\0\0\0ppuq\0~\0(\0\0\0\0pxq\0~\0*pxsq\0~\0\0\0\0\0w\0\0\0\0xpxt\0\rAPI_PUBLISHERsq\0~\04\0\0\0sq\0~\07\0\0\0\0\0\0\0\0\0q\0~\0¶sq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xuq\0~\0=\0\0\0\0sq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0\0sq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0B\0\0\0\0q\0~\0¶sq\0~\0K\0uq\0~\0O\0\0\0\0uq\0~\0Q\0\0\0\0q\0~\0≠pt\0\0sq\0~\0Tuq\0~\0W\0\0\0sq\0~\0Ypt\0\rAPI_PUBLISHERt\0\npassivestst\0standardAPPuq\0~\0_\0\0\0\0sq\0~\0Ypt\0\rAPI_PUBLISHERt\0samlssot\0standardAPPuq\0~\0_\0\0\0\0sq\0~\0Ypt\0\rAPI_PUBLISHERt\0openidt\0standardAPPuq\0~\0_\0\0\0\0sq\0~\0k\0\0t\0\0sq\0~\0n\0\0\0\0ppq\0~\0st\0defaultpsq\0~\0Åpuq\0~\0x\0\0\0\0sq\0~\0,q\0~\0.t\0admint\0PRIMARYsq\0~\0áuq\0~\0=\0\0\0\0uq\0~\0å\0\0\0\0uq\0~\0é\0\0\0\0uq\0~\0ê\0\0\0\0uq\0~\0í\0\0\0\0pq\0~\0¶t\0∆eyJ0eXAiOiJKV1QiLCAiYWxnIjoibm9uZSJ9.eyJpc3MiOiJ3c28yIiwiZXhwIjoxNTEyOTgxMjgyMzY0MzAwMCwiaWF0IjoxNTEyOTgxMjgyMzY0LCJpZHBzIjpbeyJpZHAiOiJMT0NBTCIsImF1dGhlbnRpY2F0b3IiOiJCYXNpY0F1dGhlbnRpY2F0b3IifV19.psq\0~\0+q\0~\0.q\0~\0/q\0~\00\0q\0~\0/pppsq\0~\0\0\0\0\0w\0\0\0\0xsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0ösq\0~\0õ\0\0\0\0\0\0q\0~\0q\0~\0\nq\0~\0-sq\0~\0\0\0\0w\0\0\0q\0~\0xsq\0~\0\0\0\0\0w\0\0\0\0xpxxsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0t\0UpdatedTimestampsr\0java.lang.Long;ã‰êÃè#ﬂ\0J\0valuexq\0~\0ô\0\0`D∂tt\0CreatedTimestampsq\0~\0›\0\0`D∂>it\0AuthenticatedUsersq\0~\0+q\0~\0.q\0~\0/q\0~\00\0q\0~\0/psq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xxq\0~\0/',1512981296146207247,-1),('f64cec64-7927-42a7-aa77-e85451c4addd','SAMLSSOSessionIndexCache','STORE','¨Ì\0sr\0Eorg.wso2.carbon.identity.sso.saml.cache.SAMLSSOSessionIndexCacheEntryB¢ü y\r\0L\0sessionIndext\0Ljava/lang/String;xr\02org.wso2.carbon.identity.sso.saml.cache.CacheEntry¸BCS∫À„\0\0xpt\0$8764344d-3c6c-4f55-a84f-006872fc951b',1512981282478594452,-1);
/*!40000 ALTER TABLE `IDN_AUTH_SESSION_STORE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_BASE_TABLE`
--

DROP TABLE IF EXISTS `IDN_BASE_TABLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_BASE_TABLE` (
  `PRODUCT_NAME` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`PRODUCT_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_BASE_TABLE`
--

LOCK TABLES `IDN_BASE_TABLE` WRITE;
/*!40000 ALTER TABLE `IDN_BASE_TABLE` DISABLE KEYS */;
INSERT INTO `IDN_BASE_TABLE` VALUES ('WSO2 Identity Server');
/*!40000 ALTER TABLE `IDN_BASE_TABLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_CLAIM`
--

DROP TABLE IF EXISTS `IDN_CLAIM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_CLAIM` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DIALECT_ID` int(11) DEFAULT NULL,
  `CLAIM_URI` varchar(255) NOT NULL,
  `TENANT_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CLAIM_URI_CONSTRAINT` (`DIALECT_ID`,`CLAIM_URI`,`TENANT_ID`),
  CONSTRAINT `IDN_CLAIM_ibfk_1` FOREIGN KEY (`DIALECT_ID`) REFERENCES `IDN_CLAIM_DIALECT` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_CLAIM`
--

LOCK TABLES `IDN_CLAIM` WRITE;
/*!40000 ALTER TABLE `IDN_CLAIM` DISABLE KEYS */;
INSERT INTO `IDN_CLAIM` VALUES (53,1,'http://wso2.org/claims/active',-1234),(1,1,'http://wso2.org/claims/addresses',-1234),(40,1,'http://wso2.org/claims/addresses.formatted',-1234),(11,1,'http://wso2.org/claims/addresses.locality',-1234),(12,1,'http://wso2.org/claims/challengeQuestion1',-1234),(10,1,'http://wso2.org/claims/challengeQuestion2',-1234),(15,1,'http://wso2.org/claims/challengeQuestionUris',-1234),(20,1,'http://wso2.org/claims/country',-1234),(56,1,'http://wso2.org/claims/created',-1234),(72,1,'http://wso2.org/claims/displayName',-1234),(35,1,'http://wso2.org/claims/dob',-1234),(58,1,'http://wso2.org/claims/emailaddress',-1234),(23,1,'http://wso2.org/claims/emails.home',-1234),(41,1,'http://wso2.org/claims/emails.other',-1234),(24,1,'http://wso2.org/claims/emails.work',-1234),(19,1,'http://wso2.org/claims/entitlements',-1234),(8,1,'http://wso2.org/claims/externalid',-1234),(28,1,'http://wso2.org/claims/formattedName',-1234),(21,1,'http://wso2.org/claims/fullname',-1234),(60,1,'http://wso2.org/claims/gender',-1234),(67,1,'http://wso2.org/claims/givenname',-1234),(38,1,'http://wso2.org/claims/groups',-1234),(66,1,'http://wso2.org/claims/gtalk',-1234),(62,1,'http://wso2.org/claims/honorificPrefix',-1234),(69,1,'http://wso2.org/claims/honorificSuffix',-1234),(50,1,'http://wso2.org/claims/identity/accountDisabled',-1234),(32,1,'http://wso2.org/claims/identity/accountLocked',-1234),(51,1,'http://wso2.org/claims/identity/adminForcedPasswordReset',-1234),(55,1,'http://wso2.org/claims/identity/askPassword',-1234),(30,1,'http://wso2.org/claims/identity/emailVerified',-1234),(37,1,'http://wso2.org/claims/identity/failedLoginAttempts',-1234),(42,1,'http://wso2.org/claims/identity/failedLoginLockoutCount',-1234),(64,1,'http://wso2.org/claims/identity/failedPasswordRecoveryAttempts',-1234),(25,1,'http://wso2.org/claims/identity/lastLogonTime',-1234),(18,1,'http://wso2.org/claims/identity/lastPasswordUpdateTime',-1234),(2,1,'http://wso2.org/claims/identity/unlockTime',-1234),(29,1,'http://wso2.org/claims/identity/verifyEmail',-1234),(70,1,'http://wso2.org/claims/im',-1234),(68,1,'http://wso2.org/claims/lastLoginTime',-1234),(5,1,'http://wso2.org/claims/lastname',-1234),(71,1,'http://wso2.org/claims/local',-1234),(6,1,'http://wso2.org/claims/locality',-1234),(45,1,'http://wso2.org/claims/location',-1234),(54,1,'http://wso2.org/claims/middleName',-1234),(16,1,'http://wso2.org/claims/mobile',-1234),(49,1,'http://wso2.org/claims/modified',-1234),(13,1,'http://wso2.org/claims/nickname',-1234),(14,1,'http://wso2.org/claims/oneTimePassword',-1234),(52,1,'http://wso2.org/claims/organization',-1234),(7,1,'http://wso2.org/claims/otherphone',-1234),(75,1,'http://wso2.org/claims/phoneNumbers',-1234),(46,1,'http://wso2.org/claims/phoneNumbers.fax',-1234),(74,1,'http://wso2.org/claims/phoneNumbers.home',-1234),(65,1,'http://wso2.org/claims/phoneNumbers.other',-1234),(47,1,'http://wso2.org/claims/phoneNumbers.pager',-1234),(48,1,'http://wso2.org/claims/phoneNumbers.work',-1234),(44,1,'http://wso2.org/claims/photos',-1234),(9,1,'http://wso2.org/claims/photourl',-1234),(3,1,'http://wso2.org/claims/postalcode',-1234),(31,1,'http://wso2.org/claims/preferredLanguage',-1234),(26,1,'http://wso2.org/claims/primaryChallengeQuestion',-1234),(73,1,'http://wso2.org/claims/region',-1234),(34,1,'http://wso2.org/claims/role',-1234),(57,1,'http://wso2.org/claims/skype',-1234),(36,1,'http://wso2.org/claims/stateorprovince',-1234),(59,1,'http://wso2.org/claims/streetaddress',-1234),(17,1,'http://wso2.org/claims/telephone',-1234),(4,1,'http://wso2.org/claims/thumbnail',-1234),(63,1,'http://wso2.org/claims/timeZone',-1234),(22,1,'http://wso2.org/claims/title',-1234),(33,1,'http://wso2.org/claims/url',-1234),(61,1,'http://wso2.org/claims/userid',-1234),(43,1,'http://wso2.org/claims/username',-1234),(39,1,'http://wso2.org/claims/userType',-1234),(27,1,'http://wso2.org/claims/x509Certificates',-1234),(112,2,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/country',-1234),(105,2,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/dateofbirth',-1234),(81,2,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress',-1234),(133,2,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/gender',-1234),(166,2,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/givenname',-1234),(140,2,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/homephone',-1234),(162,2,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/locality',-1234),(139,2,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/mobile',-1234),(82,2,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nickname',-1234),(160,2,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/otherphone',-1234),(158,2,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/postalcode',-1234),(94,2,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/privatepersonalidentifier',-1234),(83,2,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/stateorprovince',-1234),(138,2,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/streetaddress',-1234),(136,2,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/surname',-1234),(170,3,'urn:scim:schemas:core:1.0:active',-1234),(157,3,'urn:scim:schemas:core:1.0:addresses',-1234),(161,3,'urn:scim:schemas:core:1.0:addresses.country',-1234),(164,3,'urn:scim:schemas:core:1.0:addresses.formatted',-1234),(96,3,'urn:scim:schemas:core:1.0:addresses.locality',-1234),(79,3,'urn:scim:schemas:core:1.0:addresses.postalCode',-1234),(145,3,'urn:scim:schemas:core:1.0:addresses.region',-1234),(85,3,'urn:scim:schemas:core:1.0:addresses.streetAddress',-1234),(141,3,'urn:scim:schemas:core:1.0:displayName',-1234),(132,3,'urn:scim:schemas:core:1.0:emails',-1234),(106,3,'urn:scim:schemas:core:1.0:emails.home',-1234),(86,3,'urn:scim:schemas:core:1.0:emails.other',-1234),(135,3,'urn:scim:schemas:core:1.0:emails.work',-1234),(151,3,'urn:scim:schemas:core:1.0:entitlements',-1234),(130,3,'urn:scim:schemas:core:1.0:externalId',-1234),(142,3,'urn:scim:schemas:core:1.0:groups',-1234),(109,3,'urn:scim:schemas:core:1.0:id',-1234),(129,3,'urn:scim:schemas:core:1.0:ims',-1234),(121,3,'urn:scim:schemas:core:1.0:ims.gtalk',-1234),(111,3,'urn:scim:schemas:core:1.0:ims.skype',-1234),(126,3,'urn:scim:schemas:core:1.0:locale',-1234),(91,3,'urn:scim:schemas:core:1.0:meta.created',-1234),(176,3,'urn:scim:schemas:core:1.0:meta.lastModified',-1234),(77,3,'urn:scim:schemas:core:1.0:meta.location',-1234),(78,3,'urn:scim:schemas:core:1.0:name.familyName',-1234),(100,3,'urn:scim:schemas:core:1.0:name.formatted',-1234),(171,3,'urn:scim:schemas:core:1.0:name.givenName',-1234),(173,3,'urn:scim:schemas:core:1.0:name.honorificPrefix',-1234),(155,3,'urn:scim:schemas:core:1.0:name.honorificSuffix',-1234),(97,3,'urn:scim:schemas:core:1.0:name.middleName',-1234),(84,3,'urn:scim:schemas:core:1.0:nickName',-1234),(108,3,'urn:scim:schemas:core:1.0:phoneNumbers',-1234),(104,3,'urn:scim:schemas:core:1.0:phoneNumbers.fax',-1234),(87,3,'urn:scim:schemas:core:1.0:phoneNumbers.home',-1234),(128,3,'urn:scim:schemas:core:1.0:phoneNumbers.mobile',-1234),(165,3,'urn:scim:schemas:core:1.0:phoneNumbers.other',-1234),(125,3,'urn:scim:schemas:core:1.0:phoneNumbers.pager',-1234),(123,3,'urn:scim:schemas:core:1.0:phoneNumbers.work',-1234),(95,3,'urn:scim:schemas:core:1.0:photos',-1234),(167,3,'urn:scim:schemas:core:1.0:photos.photo',-1234),(174,3,'urn:scim:schemas:core:1.0:photos.thumbnail',-1234),(150,3,'urn:scim:schemas:core:1.0:preferredLanguage',-1234),(169,3,'urn:scim:schemas:core:1.0:profileUrl',-1234),(89,3,'urn:scim:schemas:core:1.0:roles',-1234),(147,3,'urn:scim:schemas:core:1.0:timeZone',-1234),(134,3,'urn:scim:schemas:core:1.0:title',-1234),(114,3,'urn:scim:schemas:core:1.0:userName',-1234),(93,3,'urn:scim:schemas:core:1.0:userType',-1234),(98,3,'urn:scim:schemas:core:1.0:x509Certificates',-1234),(116,4,'address',-1234),(76,4,'birthdate',-1234),(124,4,'country',-1234),(113,4,'email',-1234),(168,4,'email_verified',-1234),(178,4,'family_name',-1234),(103,4,'formatted',-1234),(101,4,'gender',-1234),(118,4,'given_name',-1234),(159,4,'locale',-1234),(90,4,'locality',-1234),(172,4,'middle_name',-1234),(148,4,'name',-1234),(110,4,'nickname',-1234),(149,4,'phone_number',-1234),(117,4,'phone_number_verified',-1234),(119,4,'picture',-1234),(122,4,'postal_code',-1234),(80,4,'preferred_username',-1234),(88,4,'profile',-1234),(152,4,'region',-1234),(153,4,'street_address',-1234),(99,4,'sub',-1234),(107,4,'updated_at',-1234),(115,4,'website',-1234),(154,4,'zoneinfo',-1234),(92,5,'dob',-1234),(175,5,'fullname',-1234),(127,5,'language',-1234),(143,5,'postcode',-1234),(156,5,'timezone',-1234),(144,6,'http://axschema.org/birthDate',-1234),(177,6,'http://axschema.org/contact/country/home',-1234),(179,6,'http://axschema.org/contact/email',-1234),(120,6,'http://axschema.org/contact/postalCode/home',-1234),(163,6,'http://axschema.org/namePerson/first',-1234),(146,6,'http://axschema.org/namePerson/last',-1234),(137,6,'http://axschema.org/person/gender',-1234),(131,6,'http://axschema.org/pref/language',-1234),(102,6,'http://axschema.org/pref/timezone',-1234);
/*!40000 ALTER TABLE `IDN_CLAIM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_CLAIM_DIALECT`
--

DROP TABLE IF EXISTS `IDN_CLAIM_DIALECT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_CLAIM_DIALECT` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DIALECT_URI` varchar(255) NOT NULL,
  `TENANT_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `DIALECT_URI_CONSTRAINT` (`DIALECT_URI`,`TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_CLAIM_DIALECT`
--

LOCK TABLES `IDN_CLAIM_DIALECT` WRITE;
/*!40000 ALTER TABLE `IDN_CLAIM_DIALECT` DISABLE KEYS */;
INSERT INTO `IDN_CLAIM_DIALECT` VALUES (6,'http://axschema.org',-1234),(5,'http://schema.openid.net/2007/05/claims',-1234),(2,'http://schemas.xmlsoap.org/ws/2005/05/identity',-1234),(1,'http://wso2.org/claims',-1234),(4,'http://wso2.org/oidc/claim',-1234),(3,'urn:scim:schemas:core:1.0',-1234);
/*!40000 ALTER TABLE `IDN_CLAIM_DIALECT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_CLAIM_MAPPED_ATTRIBUTE`
--

DROP TABLE IF EXISTS `IDN_CLAIM_MAPPED_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_CLAIM_MAPPED_ATTRIBUTE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOCAL_CLAIM_ID` int(11) DEFAULT NULL,
  `USER_STORE_DOMAIN_NAME` varchar(255) NOT NULL,
  `ATTRIBUTE_NAME` varchar(255) NOT NULL,
  `TENANT_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `USER_STORE_DOMAIN_CONSTRAINT` (`LOCAL_CLAIM_ID`,`USER_STORE_DOMAIN_NAME`,`TENANT_ID`),
  CONSTRAINT `IDN_CLAIM_MAPPED_ATTRIBUTE_ibfk_1` FOREIGN KEY (`LOCAL_CLAIM_ID`) REFERENCES `IDN_CLAIM` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_CLAIM_MAPPED_ATTRIBUTE`
--

LOCK TABLES `IDN_CLAIM_MAPPED_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `IDN_CLAIM_MAPPED_ATTRIBUTE` DISABLE KEYS */;
INSERT INTO `IDN_CLAIM_MAPPED_ATTRIBUTE` VALUES (1,1,'PRIMARY','addresses',-1234),(2,2,'PRIMARY','unlockTime',-1234),(3,3,'PRIMARY','postalcode',-1234),(4,4,'PRIMARY','thumbnail',-1234),(5,5,'PRIMARY','sn',-1234),(6,6,'PRIMARY','local',-1234),(7,7,'PRIMARY','otherPhone',-1234),(8,8,'PRIMARY','externalId',-1234),(9,9,'PRIMARY','photoUrl',-1234),(10,10,'PRIMARY','secondChallenge',-1234),(11,11,'PRIMARY','localityAddress',-1234),(12,12,'PRIMARY','firstChallenge',-1234),(13,13,'PRIMARY','nickName',-1234),(14,14,'PRIMARY','oneTimePassword',-1234),(15,15,'PRIMARY','stateOrProvinceName',-1234),(16,16,'PRIMARY','mobile',-1234),(17,17,'PRIMARY','telephoneNumber',-1234),(18,18,'PRIMARY','businessCategory',-1234),(19,19,'PRIMARY','entitlements',-1234),(20,20,'PRIMARY','country',-1234),(21,21,'PRIMARY','cn',-1234),(22,22,'PRIMARY','title',-1234),(23,23,'PRIMARY','homeEmail',-1234),(24,24,'PRIMARY','workEmail',-1234),(25,25,'PRIMARY','carLicense',-1234),(26,26,'PRIMARY','title',-1234),(27,27,'PRIMARY','x509Certificates',-1234),(28,28,'PRIMARY','formattedName',-1234),(29,29,'PRIMARY','manager',-1234),(30,30,'PRIMARY','postalAddress',-1234),(31,31,'PRIMARY','preferredLanguage',-1234),(32,32,'PRIMARY','accountLock',-1234),(33,33,'PRIMARY','url',-1234),(34,34,'PRIMARY','role',-1234),(35,35,'PRIMARY','dateOfBirth',-1234),(36,36,'PRIMARY','stateOrProvinceName',-1234),(37,37,'PRIMARY','failedLoginAttempts',-1234),(38,38,'PRIMARY','groups',-1234),(39,39,'PRIMARY','userType',-1234),(40,40,'PRIMARY','formattedAddress',-1234),(41,41,'PRIMARY','otherEmail',-1234),(42,42,'PRIMARY','employeeNumber',-1234),(43,43,'PRIMARY','uid',-1234),(44,44,'PRIMARY','photos',-1234),(45,45,'PRIMARY','location',-1234),(46,46,'PRIMARY','fax',-1234),(47,47,'PRIMARY','pager',-1234),(48,48,'PRIMARY','workPhone',-1234),(49,49,'PRIMARY','lastModifiedDate',-1234),(50,50,'PRIMARY','ref',-1234),(51,51,'PRIMARY','departmentNumber',-1234),(52,52,'PRIMARY','organizationName',-1234),(53,53,'PRIMARY','active',-1234),(54,54,'PRIMARY','middleName',-1234),(55,55,'PRIMARY','postOfficeBox',-1234),(56,56,'PRIMARY','createdDate',-1234),(57,57,'PRIMARY','imSkype',-1234),(58,58,'PRIMARY','mail',-1234),(59,59,'PRIMARY','streetAddress',-1234),(60,60,'PRIMARY','gender',-1234),(61,61,'PRIMARY','scimId',-1234),(62,62,'PRIMARY','honoricPrefix',-1234),(63,63,'PRIMARY','timeZone',-1234),(64,64,'PRIMARY','postalCode',-1234),(65,65,'PRIMARY','otherPhoneNumber',-1234),(66,66,'PRIMARY','imGtalk',-1234),(67,67,'PRIMARY','givenName',-1234),(68,68,'PRIMARY','lastLogonTime',-1234),(69,69,'PRIMARY','honoricSuffix',-1234),(70,70,'PRIMARY','im',-1234),(71,71,'PRIMARY','local',-1234),(72,72,'PRIMARY','displayName',-1234),(73,73,'PRIMARY','region',-1234),(74,74,'PRIMARY','homePhone',-1234),(75,75,'PRIMARY','phoneNumbers',-1234);
/*!40000 ALTER TABLE `IDN_CLAIM_MAPPED_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_CLAIM_MAPPING`
--

DROP TABLE IF EXISTS `IDN_CLAIM_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_CLAIM_MAPPING` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EXT_CLAIM_ID` int(11) NOT NULL,
  `MAPPED_LOCAL_CLAIM_ID` int(11) NOT NULL,
  `TENANT_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `EXT_TO_LOC_MAPPING_CONSTRN` (`EXT_CLAIM_ID`,`TENANT_ID`),
  KEY `MAPPED_LOCAL_CLAIM_ID` (`MAPPED_LOCAL_CLAIM_ID`),
  CONSTRAINT `IDN_CLAIM_MAPPING_ibfk_1` FOREIGN KEY (`EXT_CLAIM_ID`) REFERENCES `IDN_CLAIM` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `IDN_CLAIM_MAPPING_ibfk_2` FOREIGN KEY (`MAPPED_LOCAL_CLAIM_ID`) REFERENCES `IDN_CLAIM` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_CLAIM_MAPPING`
--

LOCK TABLES `IDN_CLAIM_MAPPING` WRITE;
/*!40000 ALTER TABLE `IDN_CLAIM_MAPPING` DISABLE KEYS */;
INSERT INTO `IDN_CLAIM_MAPPING` VALUES (1,76,20,-1234),(2,77,45,-1234),(3,78,5,-1234),(4,79,3,-1234),(5,80,21,-1234),(6,81,58,-1234),(7,82,13,-1234),(8,83,36,-1234),(9,84,13,-1234),(10,85,59,-1234),(11,86,41,-1234),(12,87,74,-1234),(13,88,33,-1234),(14,89,34,-1234),(15,90,6,-1234),(16,91,56,-1234),(17,92,35,-1234),(18,93,39,-1234),(19,94,20,-1234),(20,95,44,-1234),(21,96,11,-1234),(22,97,54,-1234),(23,98,27,-1234),(24,99,43,-1234),(25,100,28,-1234),(26,101,60,-1234),(27,102,20,-1234),(28,103,20,-1234),(29,104,46,-1234),(30,105,35,-1234),(31,106,23,-1234),(32,107,20,-1234),(33,108,75,-1234),(34,109,61,-1234),(35,110,13,-1234),(36,111,57,-1234),(37,112,20,-1234),(38,113,58,-1234),(39,114,43,-1234),(40,115,33,-1234),(41,116,20,-1234),(42,117,20,-1234),(43,118,21,-1234),(44,119,20,-1234),(45,120,20,-1234),(46,121,66,-1234),(47,122,3,-1234),(48,123,48,-1234),(49,124,20,-1234),(50,125,47,-1234),(51,126,71,-1234),(52,127,20,-1234),(53,128,16,-1234),(54,129,70,-1234),(55,130,8,-1234),(56,131,20,-1234),(57,132,58,-1234),(58,133,60,-1234),(59,134,22,-1234),(60,135,24,-1234),(61,136,5,-1234),(62,137,60,-1234),(63,138,59,-1234),(64,139,16,-1234),(65,140,20,-1234),(66,141,72,-1234),(67,142,38,-1234),(68,143,20,-1234),(69,144,35,-1234),(70,145,73,-1234),(71,146,5,-1234),(72,147,63,-1234),(73,148,21,-1234),(74,149,17,-1234),(75,150,31,-1234),(76,151,19,-1234),(77,152,73,-1234),(78,153,20,-1234),(79,154,20,-1234),(80,155,69,-1234),(81,156,20,-1234),(82,157,1,-1234),(83,158,3,-1234),(84,159,20,-1234),(85,160,7,-1234),(86,161,20,-1234),(87,162,6,-1234),(88,163,13,-1234),(89,164,40,-1234),(90,165,65,-1234),(91,166,67,-1234),(92,167,9,-1234),(93,168,20,-1234),(94,169,33,-1234),(95,170,53,-1234),(96,171,67,-1234),(97,172,20,-1234),(98,173,62,-1234),(99,174,4,-1234),(100,175,21,-1234),(101,176,49,-1234),(102,177,20,-1234),(103,178,5,-1234),(104,179,58,-1234);
/*!40000 ALTER TABLE `IDN_CLAIM_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_CLAIM_PROPERTY`
--

DROP TABLE IF EXISTS `IDN_CLAIM_PROPERTY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_CLAIM_PROPERTY` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOCAL_CLAIM_ID` int(11) DEFAULT NULL,
  `PROPERTY_NAME` varchar(255) NOT NULL,
  `PROPERTY_VALUE` varchar(255) NOT NULL,
  `TENANT_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `PROPERTY_NAME_CONSTRAINT` (`LOCAL_CLAIM_ID`,`PROPERTY_NAME`,`TENANT_ID`),
  CONSTRAINT `IDN_CLAIM_PROPERTY_ibfk_1` FOREIGN KEY (`LOCAL_CLAIM_ID`) REFERENCES `IDN_CLAIM` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_CLAIM_PROPERTY`
--

LOCK TABLES `IDN_CLAIM_PROPERTY` WRITE;
/*!40000 ALTER TABLE `IDN_CLAIM_PROPERTY` DISABLE KEYS */;
INSERT INTO `IDN_CLAIM_PROPERTY` VALUES (1,1,'Description','Address',-1234),(2,1,'DisplayName','Address',-1234),(3,2,'Description','Unlock Time',-1234),(4,2,'DisplayName','Unlock Time',-1234),(5,3,'Description','Postal Code',-1234),(6,3,'DisplayName','Postal Code',-1234),(7,4,'Description','Photo - Thumbnail',-1234),(8,4,'DisplayName','Photo - Thumbnail',-1234),(9,5,'Description','Last Name',-1234),(10,5,'DisplayOrder','2',-1234),(11,5,'Required','true',-1234),(12,5,'SupportedByDefault','true',-1234),(13,5,'DisplayName','Last Name',-1234),(14,6,'Description','Locality',-1234),(15,6,'DisplayName','Locality',-1234),(16,7,'Description','Other Phone',-1234),(17,7,'DisplayName','Other Phone',-1234),(18,8,'ReadOnly','true',-1234),(19,8,'Description','Unique ID of the user used in external systems',-1234),(20,8,'DisplayName','External User ID',-1234),(21,9,'Description','Photo URL',-1234),(22,9,'DisplayName','Photo URIL',-1234),(23,10,'Description','Challenge Question2',-1234),(24,10,'DisplayName','Challenge Question2',-1234),(25,11,'Description','Address - Locality',-1234),(26,11,'DisplayName','Address - Locality',-1234),(27,12,'Description','Challenge Question1',-1234),(28,12,'DisplayName','Challenge Question1',-1234),(29,13,'Description','Nick Name',-1234),(30,13,'DisplayName','Nick Name',-1234),(31,14,'Description','One Time Password',-1234),(32,14,'DisplayName','One Time Password',-1234),(33,15,'Description','Challenge Question',-1234),(34,15,'DisplayName','Challenge Question',-1234),(35,16,'Description','Mobile',-1234),(36,16,'DisplayOrder','8',-1234),(37,16,'SupportedByDefault','true',-1234),(38,16,'DisplayName','Mobile',-1234),(39,17,'Description','Telephone',-1234),(40,17,'DisplayOrder','7',-1234),(41,17,'SupportedByDefault','true',-1234),(42,17,'DisplayName','Telephone',-1234),(43,18,'Description','Last Password Update Time',-1234),(44,18,'DisplayName','Last Password Update',-1234),(45,19,'Description','Entitlements',-1234),(46,19,'DisplayName','Entitlements',-1234),(47,20,'Description','Country',-1234),(48,20,'DisplayOrder','5',-1234),(49,20,'SupportedByDefault','true',-1234),(50,20,'DisplayName','Country',-1234),(51,21,'Description','Full Name',-1234),(52,21,'DisplayName','Full Name',-1234),(53,22,'Description','Title',-1234),(54,22,'DisplayName','Title',-1234),(55,23,'Description','Home Email',-1234),(56,23,'DisplayName','Emails - Home Email',-1234),(57,24,'Description','Work Email',-1234),(58,24,'DisplayName','Emails - Work Email',-1234),(59,25,'Description','Last Logon Time',-1234),(60,25,'DisplayName','Last Logon',-1234),(61,26,'Description','Primary Challenge Question',-1234),(62,26,'DisplayName','Primary Challenge Question',-1234),(63,27,'Description','X509Certificates',-1234),(64,27,'DisplayName','X509Certificates',-1234),(65,28,'Description','Formatted Name',-1234),(66,28,'DisplayName','Name - Formatted Name',-1234),(67,29,'Description','Temporary claim to invoke email verified feature',-1234),(68,29,'DisplayName','Verify Email',-1234),(69,30,'Description','Email Verified',-1234),(70,30,'DisplayName','Email Verified',-1234),(71,31,'Description','Preferred Language',-1234),(72,31,'DisplayName','Preferred Language',-1234),(73,32,'Description','Account Locked',-1234),(74,32,'DisplayName','Account Locked',-1234),(75,33,'Description','URL',-1234),(76,33,'DisplayOrder','10',-1234),(77,33,'SupportedByDefault','true',-1234),(78,33,'DisplayName','URL',-1234),(79,34,'ReadOnly','true',-1234),(80,34,'Description','Role',-1234),(81,34,'SupportedByDefault','true',-1234),(82,34,'DisplayName','Role',-1234),(83,35,'Description','Birth Date',-1234),(84,35,'DisplayName','Birth Date',-1234),(85,36,'Description','State',-1234),(86,36,'DisplayName','State',-1234),(87,37,'Description','Failed Login Attempts',-1234),(88,37,'DisplayName','Failed Login Attempts',-1234),(89,38,'Description','Groups',-1234),(90,38,'DisplayName','Groups',-1234),(91,39,'Description','User Type',-1234),(92,39,'DisplayName','User Type',-1234),(93,40,'Description','Address - Formatted',-1234),(94,40,'DisplayName','Address - Formatted',-1234),(95,41,'Description','Other Email',-1234),(96,41,'DisplayName','Emails - Other Email',-1234),(97,42,'Description','Failed Lockout Count',-1234),(98,42,'DisplayName','Failed Lockout Count',-1234),(99,43,'Description','Username',-1234),(100,43,'DisplayName','Username',-1234),(101,44,'Description','Photo',-1234),(102,44,'DisplayName','Photo',-1234),(103,45,'Description','Location',-1234),(104,45,'DisplayName','Location',-1234),(105,46,'Description','Fax Number',-1234),(106,46,'DisplayName','Phone Numbers - Fax Number',-1234),(107,47,'Description','Pager Number',-1234),(108,47,'DisplayName','Phone Numbers - Pager Number',-1234),(109,48,'Description','Work Phone',-1234),(110,48,'DisplayName','Phone Numbers - Work Phone Number',-1234),(111,49,'ReadOnly','true',-1234),(112,49,'Description','Last Modified timestamp of the user',-1234),(113,49,'DisplayName','Last Modified Time',-1234),(114,50,'Description','Account Disabled',-1234),(115,50,'DisplayName','Account Disabled',-1234),(116,51,'Description','Temporary claim to invoke email force password feature',-1234),(117,51,'DisplayName','Force Password Reset',-1234),(118,52,'Description','Organization',-1234),(119,52,'DisplayOrder','3',-1234),(120,52,'SupportedByDefault','true',-1234),(121,52,'DisplayName','Organization',-1234),(122,53,'Description','Status of the account',-1234),(123,53,'DisplayName','Active',-1234),(124,54,'Description','Middle Name',-1234),(125,54,'DisplayName','Middle Name',-1234),(126,55,'Description','Temporary claim to invoke email ask Password feature',-1234),(127,55,'DisplayName','Ask Password',-1234),(128,56,'ReadOnly','true',-1234),(129,56,'Description','Created timestamp of the user',-1234),(130,56,'DisplayName','Created Time',-1234),(131,57,'Description','IM - Skype',-1234),(132,57,'DisplayName','IM - Skype',-1234),(133,58,'Description','Email Address',-1234),(134,58,'DisplayOrder','6',-1234),(135,58,'Required','true',-1234),(136,58,'RegEx','^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+$',-1234),(137,58,'SupportedByDefault','true',-1234),(138,58,'DisplayName','Email',-1234),(139,59,'Description','Address - Street',-1234),(140,59,'DisplayOrder','5',-1234),(141,59,'DisplayName','Address - Street',-1234),(142,60,'Description','Gender',-1234),(143,60,'DisplayName','Gender',-1234),(144,61,'ReadOnly','true',-1234),(145,61,'Description','Unique ID of the user',-1234),(146,61,'DisplayName','User ID',-1234),(147,62,'Description','Honoric Prefix',-1234),(148,62,'DisplayName','Name - Honoric Prefix',-1234),(149,63,'Description','Time Zone',-1234),(150,63,'DisplayName','Time Zone',-1234),(151,64,'Description','Number of consecutive failed attempts done for password recovery',-1234),(152,64,'DisplayName','Failed Password Recovery Attempts',-1234),(153,65,'Description','Other Phone Number',-1234),(154,65,'DisplayName','Phone Numbers - Other',-1234),(155,66,'Description','IM - Gtalk',-1234),(156,66,'DisplayName','IM - Gtalk',-1234),(157,67,'Description','First Name',-1234),(158,67,'DisplayOrder','1',-1234),(159,67,'Required','true',-1234),(160,67,'SupportedByDefault','true',-1234),(161,67,'DisplayName','First Name',-1234),(162,68,'Description','Last Login Time',-1234),(163,68,'DisplayName','Last Login',-1234),(164,69,'Description','Honoric Suffix',-1234),(165,69,'DisplayName','Name - Honoric Suffix',-1234),(166,70,'Description','IM',-1234),(167,70,'DisplayOrder','9',-1234),(168,70,'SupportedByDefault','true',-1234),(169,70,'DisplayName','IM',-1234),(170,71,'Description','Local',-1234),(171,71,'DisplayName','Local',-1234),(172,72,'Description','Display Name',-1234),(173,72,'DisplayName','Display Name',-1234),(174,73,'Description','Region',-1234),(175,73,'DisplayName','Region',-1234),(176,74,'Description','Home Phone',-1234),(177,74,'DisplayName','Phone Numbers - Home Phone Number',-1234),(178,75,'Description','Phone Numbers',-1234),(179,75,'RegEx','^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+$',-1234),(180,75,'DisplayName','Phone Numbers',-1234);
/*!40000 ALTER TABLE `IDN_CLAIM_PROPERTY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_IDENTITY_META_DATA`
--

DROP TABLE IF EXISTS `IDN_IDENTITY_META_DATA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_IDENTITY_META_DATA` (
  `USER_NAME` varchar(255) NOT NULL,
  `TENANT_ID` int(11) NOT NULL DEFAULT '-1234',
  `METADATA_TYPE` varchar(255) NOT NULL,
  `METADATA` varchar(255) NOT NULL,
  `VALID` varchar(255) NOT NULL,
  PRIMARY KEY (`TENANT_ID`,`USER_NAME`,`METADATA_TYPE`,`METADATA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_IDENTITY_META_DATA`
--

LOCK TABLES `IDN_IDENTITY_META_DATA` WRITE;
/*!40000 ALTER TABLE `IDN_IDENTITY_META_DATA` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDN_IDENTITY_META_DATA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_IDENTITY_USER_DATA`
--

DROP TABLE IF EXISTS `IDN_IDENTITY_USER_DATA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_IDENTITY_USER_DATA` (
  `TENANT_ID` int(11) NOT NULL DEFAULT '-1234',
  `USER_NAME` varchar(255) NOT NULL,
  `DATA_KEY` varchar(255) NOT NULL,
  `DATA_VALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TENANT_ID`,`USER_NAME`,`DATA_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_IDENTITY_USER_DATA`
--

LOCK TABLES `IDN_IDENTITY_USER_DATA` WRITE;
/*!40000 ALTER TABLE `IDN_IDENTITY_USER_DATA` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDN_IDENTITY_USER_DATA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_OAUTH1A_ACCESS_TOKEN`
--

DROP TABLE IF EXISTS `IDN_OAUTH1A_ACCESS_TOKEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_OAUTH1A_ACCESS_TOKEN` (
  `ACCESS_TOKEN` varchar(255) NOT NULL DEFAULT '',
  `ACCESS_TOKEN_SECRET` varchar(512) DEFAULT NULL,
  `CONSUMER_KEY_ID` int(11) DEFAULT NULL,
  `SCOPE` varchar(2048) DEFAULT NULL,
  `AUTHZ_USER` varchar(512) DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT '-1',
  PRIMARY KEY (`ACCESS_TOKEN`),
  KEY `CONSUMER_KEY_ID` (`CONSUMER_KEY_ID`),
  CONSTRAINT `IDN_OAUTH1A_ACCESS_TOKEN_ibfk_1` FOREIGN KEY (`CONSUMER_KEY_ID`) REFERENCES `IDN_OAUTH_CONSUMER_APPS` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_OAUTH1A_ACCESS_TOKEN`
--

LOCK TABLES `IDN_OAUTH1A_ACCESS_TOKEN` WRITE;
/*!40000 ALTER TABLE `IDN_OAUTH1A_ACCESS_TOKEN` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDN_OAUTH1A_ACCESS_TOKEN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_OAUTH1A_REQUEST_TOKEN`
--

DROP TABLE IF EXISTS `IDN_OAUTH1A_REQUEST_TOKEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_OAUTH1A_REQUEST_TOKEN` (
  `REQUEST_TOKEN` varchar(255) NOT NULL DEFAULT '',
  `REQUEST_TOKEN_SECRET` varchar(512) DEFAULT NULL,
  `CONSUMER_KEY_ID` int(11) DEFAULT NULL,
  `CALLBACK_URL` varchar(1024) DEFAULT NULL,
  `SCOPE` varchar(2048) DEFAULT NULL,
  `AUTHORIZED` varchar(128) DEFAULT NULL,
  `OAUTH_VERIFIER` varchar(512) DEFAULT NULL,
  `AUTHZ_USER` varchar(512) DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT '-1',
  PRIMARY KEY (`REQUEST_TOKEN`),
  KEY `CONSUMER_KEY_ID` (`CONSUMER_KEY_ID`),
  CONSTRAINT `IDN_OAUTH1A_REQUEST_TOKEN_ibfk_1` FOREIGN KEY (`CONSUMER_KEY_ID`) REFERENCES `IDN_OAUTH_CONSUMER_APPS` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_OAUTH1A_REQUEST_TOKEN`
--

LOCK TABLES `IDN_OAUTH1A_REQUEST_TOKEN` WRITE;
/*!40000 ALTER TABLE `IDN_OAUTH1A_REQUEST_TOKEN` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDN_OAUTH1A_REQUEST_TOKEN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_OAUTH2_ACCESS_TOKEN`
--

DROP TABLE IF EXISTS `IDN_OAUTH2_ACCESS_TOKEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_OAUTH2_ACCESS_TOKEN` (
  `TOKEN_ID` varchar(255) NOT NULL DEFAULT '',
  `ACCESS_TOKEN` varchar(255) DEFAULT NULL,
  `REFRESH_TOKEN` varchar(255) DEFAULT NULL,
  `CONSUMER_KEY_ID` int(11) DEFAULT NULL,
  `AUTHZ_USER` varchar(100) DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  `USER_DOMAIN` varchar(50) DEFAULT NULL,
  `USER_TYPE` varchar(25) DEFAULT NULL,
  `GRANT_TYPE` varchar(50) DEFAULT NULL,
  `TIME_CREATED` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `REFRESH_TOKEN_TIME_CREATED` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `VALIDITY_PERIOD` bigint(20) DEFAULT NULL,
  `REFRESH_TOKEN_VALIDITY_PERIOD` bigint(20) DEFAULT NULL,
  `TOKEN_SCOPE_HASH` varchar(32) DEFAULT NULL,
  `TOKEN_STATE` varchar(25) DEFAULT 'ACTIVE',
  `TOKEN_STATE_ID` varchar(128) DEFAULT 'NONE',
  `SUBJECT_IDENTIFIER` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TOKEN_ID`),
  UNIQUE KEY `CON_APP_KEY` (`CONSUMER_KEY_ID`,`AUTHZ_USER`,`TENANT_ID`,`USER_DOMAIN`,`USER_TYPE`,`TOKEN_SCOPE_HASH`,`TOKEN_STATE`,`TOKEN_STATE_ID`),
  KEY `IDX_AT_CK_AU` (`CONSUMER_KEY_ID`,`AUTHZ_USER`,`TOKEN_STATE`,`USER_TYPE`),
  KEY `IDX_TC` (`TIME_CREATED`),
  KEY `IDX_AT` (`ACCESS_TOKEN`),
  KEY `IDX_IOAT_AT` (`ACCESS_TOKEN`),
  KEY `IDX_IOAT_UT` (`USER_TYPE`),
  CONSTRAINT `IDN_OAUTH2_ACCESS_TOKEN_ibfk_1` FOREIGN KEY (`CONSUMER_KEY_ID`) REFERENCES `IDN_OAUTH_CONSUMER_APPS` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_OAUTH2_ACCESS_TOKEN`
--

LOCK TABLES `IDN_OAUTH2_ACCESS_TOKEN` WRITE;
/*!40000 ALTER TABLE `IDN_OAUTH2_ACCESS_TOKEN` DISABLE KEYS */;
INSERT INTO `IDN_OAUTH2_ACCESS_TOKEN` VALUES ('683120ae-f345-4ad4-9dc7-dfef16ede8e1','54232386-ab7f-3d87-933f-a0a4fd759546','47758628-a92e-3c9d-9a26-9cab3633f93c',1,'admin',-1234,'PRIMARY','APPLICATION','client_credentials','2017-12-11 08:50:03','2017-12-11 08:50:03',-2000,84600000,'15703966c63ae7da301cd656ef647fa6','ACTIVE','NONE',NULL);
/*!40000 ALTER TABLE `IDN_OAUTH2_ACCESS_TOKEN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_OAUTH2_ACCESS_TOKEN_SCOPE`
--

DROP TABLE IF EXISTS `IDN_OAUTH2_ACCESS_TOKEN_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_OAUTH2_ACCESS_TOKEN_SCOPE` (
  `TOKEN_ID` varchar(255) NOT NULL DEFAULT '',
  `TOKEN_SCOPE` varchar(60) NOT NULL DEFAULT '',
  `TENANT_ID` int(11) DEFAULT '-1',
  PRIMARY KEY (`TOKEN_ID`,`TOKEN_SCOPE`),
  CONSTRAINT `IDN_OAUTH2_ACCESS_TOKEN_SCOPE_ibfk_1` FOREIGN KEY (`TOKEN_ID`) REFERENCES `IDN_OAUTH2_ACCESS_TOKEN` (`TOKEN_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_OAUTH2_ACCESS_TOKEN_SCOPE`
--

LOCK TABLES `IDN_OAUTH2_ACCESS_TOKEN_SCOPE` WRITE;
/*!40000 ALTER TABLE `IDN_OAUTH2_ACCESS_TOKEN_SCOPE` DISABLE KEYS */;
INSERT INTO `IDN_OAUTH2_ACCESS_TOKEN_SCOPE` VALUES ('683120ae-f345-4ad4-9dc7-dfef16ede8e1','am_application_scope',-1234),('683120ae-f345-4ad4-9dc7-dfef16ede8e1','default',-1234);
/*!40000 ALTER TABLE `IDN_OAUTH2_ACCESS_TOKEN_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_OAUTH2_AUTHORIZATION_CODE`
--

DROP TABLE IF EXISTS `IDN_OAUTH2_AUTHORIZATION_CODE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_OAUTH2_AUTHORIZATION_CODE` (
  `CODE_ID` varchar(255) NOT NULL DEFAULT '',
  `AUTHORIZATION_CODE` varchar(512) DEFAULT NULL,
  `CONSUMER_KEY_ID` int(11) DEFAULT NULL,
  `CALLBACK_URL` varchar(1024) DEFAULT NULL,
  `SCOPE` varchar(2048) DEFAULT NULL,
  `AUTHZ_USER` varchar(100) DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  `USER_DOMAIN` varchar(50) DEFAULT NULL,
  `TIME_CREATED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `VALIDITY_PERIOD` bigint(20) DEFAULT NULL,
  `STATE` varchar(25) DEFAULT 'ACTIVE',
  `TOKEN_ID` varchar(255) DEFAULT NULL,
  `SUBJECT_IDENTIFIER` varchar(255) DEFAULT NULL,
  `PKCE_CODE_CHALLENGE` varchar(255) DEFAULT NULL,
  `PKCE_CODE_CHALLENGE_METHOD` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`CODE_ID`),
  KEY `CONSUMER_KEY_ID` (`CONSUMER_KEY_ID`),
  KEY `IDX_AUTHORIZATION_CODE` (`AUTHORIZATION_CODE`,`CONSUMER_KEY_ID`),
  CONSTRAINT `IDN_OAUTH2_AUTHORIZATION_CODE_ibfk_1` FOREIGN KEY (`CONSUMER_KEY_ID`) REFERENCES `IDN_OAUTH_CONSUMER_APPS` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_OAUTH2_AUTHORIZATION_CODE`
--

LOCK TABLES `IDN_OAUTH2_AUTHORIZATION_CODE` WRITE;
/*!40000 ALTER TABLE `IDN_OAUTH2_AUTHORIZATION_CODE` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDN_OAUTH2_AUTHORIZATION_CODE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_OAUTH2_RESOURCE_SCOPE`
--

DROP TABLE IF EXISTS `IDN_OAUTH2_RESOURCE_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_OAUTH2_RESOURCE_SCOPE` (
  `RESOURCE_PATH` varchar(255) NOT NULL,
  `SCOPE_ID` int(11) NOT NULL,
  `TENANT_ID` int(11) DEFAULT '-1',
  PRIMARY KEY (`RESOURCE_PATH`),
  KEY `SCOPE_ID` (`SCOPE_ID`),
  CONSTRAINT `IDN_OAUTH2_RESOURCE_SCOPE_ibfk_1` FOREIGN KEY (`SCOPE_ID`) REFERENCES `IDN_OAUTH2_SCOPE` (`SCOPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_OAUTH2_RESOURCE_SCOPE`
--

LOCK TABLES `IDN_OAUTH2_RESOURCE_SCOPE` WRITE;
/*!40000 ALTER TABLE `IDN_OAUTH2_RESOURCE_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDN_OAUTH2_RESOURCE_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_OAUTH2_SCOPE`
--

DROP TABLE IF EXISTS `IDN_OAUTH2_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_OAUTH2_SCOPE` (
  `SCOPE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SCOPE_KEY` varchar(100) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(512) DEFAULT NULL,
  `TENANT_ID` int(11) NOT NULL DEFAULT '0',
  `ROLES` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`SCOPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_OAUTH2_SCOPE`
--

LOCK TABLES `IDN_OAUTH2_SCOPE` WRITE;
/*!40000 ALTER TABLE `IDN_OAUTH2_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDN_OAUTH2_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_OAUTH_CONSUMER_APPS`
--

DROP TABLE IF EXISTS `IDN_OAUTH_CONSUMER_APPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_OAUTH_CONSUMER_APPS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CONSUMER_KEY` varchar(255) DEFAULT NULL,
  `CONSUMER_SECRET` varchar(512) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT '0',
  `USER_DOMAIN` varchar(50) DEFAULT NULL,
  `APP_NAME` varchar(255) DEFAULT NULL,
  `OAUTH_VERSION` varchar(128) DEFAULT NULL,
  `CALLBACK_URL` varchar(1024) DEFAULT NULL,
  `GRANT_TYPES` varchar(1024) DEFAULT NULL,
  `PKCE_MANDATORY` char(1) DEFAULT '0',
  `PKCE_SUPPORT_PLAIN` char(1) DEFAULT '0',
  `APP_STATE` varchar(25) DEFAULT 'ACTIVE',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CONSUMER_KEY_CONSTRAINT` (`CONSUMER_KEY`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_OAUTH_CONSUMER_APPS`
--

LOCK TABLES `IDN_OAUTH_CONSUMER_APPS` WRITE;
/*!40000 ALTER TABLE `IDN_OAUTH_CONSUMER_APPS` DISABLE KEYS */;
INSERT INTO `IDN_OAUTH_CONSUMER_APPS` VALUES (1,'IB1oHexsRG2IzA9S0fz5xZnwaWIa','wSOE0MJvaOA7fy8OmiwCJD8jpLAa','admin',-1234,'PRIMARY','admin_TestApp_PRODUCTION','OAuth-2.0',NULL,'refresh_token urn:ietf:params:oauth:grant-type:saml2-bearer password iwa:ntlm client_credentials','0','0','ACTIVE');
/*!40000 ALTER TABLE `IDN_OAUTH_CONSUMER_APPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_OPENID_ASSOCIATIONS`
--

DROP TABLE IF EXISTS `IDN_OPENID_ASSOCIATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_OPENID_ASSOCIATIONS` (
  `HANDLE` varchar(255) NOT NULL,
  `ASSOC_TYPE` varchar(255) NOT NULL,
  `EXPIRE_IN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MAC_KEY` varchar(255) NOT NULL,
  `ASSOC_STORE` varchar(128) DEFAULT 'SHARED',
  `TENANT_ID` int(11) DEFAULT '-1',
  PRIMARY KEY (`HANDLE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_OPENID_ASSOCIATIONS`
--

LOCK TABLES `IDN_OPENID_ASSOCIATIONS` WRITE;
/*!40000 ALTER TABLE `IDN_OPENID_ASSOCIATIONS` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDN_OPENID_ASSOCIATIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_OPENID_REMEMBER_ME`
--

DROP TABLE IF EXISTS `IDN_OPENID_REMEMBER_ME`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_OPENID_REMEMBER_ME` (
  `USER_NAME` varchar(255) NOT NULL,
  `TENANT_ID` int(11) NOT NULL DEFAULT '0',
  `COOKIE_VALUE` varchar(1024) DEFAULT NULL,
  `CREATED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`USER_NAME`,`TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_OPENID_REMEMBER_ME`
--

LOCK TABLES `IDN_OPENID_REMEMBER_ME` WRITE;
/*!40000 ALTER TABLE `IDN_OPENID_REMEMBER_ME` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDN_OPENID_REMEMBER_ME` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_OPENID_USER_RPS`
--

DROP TABLE IF EXISTS `IDN_OPENID_USER_RPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_OPENID_USER_RPS` (
  `USER_NAME` varchar(255) NOT NULL,
  `TENANT_ID` int(11) NOT NULL DEFAULT '0',
  `RP_URL` varchar(255) NOT NULL,
  `TRUSTED_ALWAYS` varchar(128) DEFAULT 'FALSE',
  `LAST_VISIT` date NOT NULL,
  `VISIT_COUNT` int(11) DEFAULT '0',
  `DEFAULT_PROFILE_NAME` varchar(255) DEFAULT 'DEFAULT',
  PRIMARY KEY (`USER_NAME`,`TENANT_ID`,`RP_URL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_OPENID_USER_RPS`
--

LOCK TABLES `IDN_OPENID_USER_RPS` WRITE;
/*!40000 ALTER TABLE `IDN_OPENID_USER_RPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDN_OPENID_USER_RPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_PASSWORD_HISTORY_DATA`
--

DROP TABLE IF EXISTS `IDN_PASSWORD_HISTORY_DATA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_PASSWORD_HISTORY_DATA` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(255) NOT NULL,
  `USER_DOMAIN` varchar(127) NOT NULL,
  `TENANT_ID` int(11) DEFAULT '-1',
  `SALT_VALUE` varchar(255) DEFAULT NULL,
  `HASH` varchar(255) NOT NULL,
  `TIME_CREATED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `USER_NAME` (`USER_NAME`,`USER_DOMAIN`,`TENANT_ID`,`SALT_VALUE`,`HASH`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_PASSWORD_HISTORY_DATA`
--

LOCK TABLES `IDN_PASSWORD_HISTORY_DATA` WRITE;
/*!40000 ALTER TABLE `IDN_PASSWORD_HISTORY_DATA` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDN_PASSWORD_HISTORY_DATA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_RECOVERY_DATA`
--

DROP TABLE IF EXISTS `IDN_RECOVERY_DATA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_RECOVERY_DATA` (
  `USER_NAME` varchar(255) NOT NULL,
  `USER_DOMAIN` varchar(255) NOT NULL,
  `TENANT_ID` int(11) NOT NULL DEFAULT '-1',
  `CODE` varchar(255) NOT NULL,
  `SCENARIO` varchar(255) NOT NULL,
  `STEP` varchar(255) NOT NULL,
  `TIME_CREATED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REMAINING_SETS` varchar(2500) DEFAULT NULL,
  PRIMARY KEY (`USER_NAME`,`USER_DOMAIN`,`TENANT_ID`,`SCENARIO`,`STEP`),
  UNIQUE KEY `CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_RECOVERY_DATA`
--

LOCK TABLES `IDN_RECOVERY_DATA` WRITE;
/*!40000 ALTER TABLE `IDN_RECOVERY_DATA` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDN_RECOVERY_DATA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_SCIM_GROUP`
--

DROP TABLE IF EXISTS `IDN_SCIM_GROUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_SCIM_GROUP` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TENANT_ID` int(11) NOT NULL,
  `ROLE_NAME` varchar(255) NOT NULL,
  `ATTR_NAME` varchar(1024) NOT NULL,
  `ATTR_VALUE` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_SCIM_GROUP`
--

LOCK TABLES `IDN_SCIM_GROUP` WRITE;
/*!40000 ALTER TABLE `IDN_SCIM_GROUP` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDN_SCIM_GROUP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_STS_STORE`
--

DROP TABLE IF EXISTS `IDN_STS_STORE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_STS_STORE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TOKEN_ID` varchar(255) NOT NULL,
  `TOKEN_CONTENT` blob NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `EXPIRE_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `STATE` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_STS_STORE`
--

LOCK TABLES `IDN_STS_STORE` WRITE;
/*!40000 ALTER TABLE `IDN_STS_STORE` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDN_STS_STORE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_THRIFT_SESSION`
--

DROP TABLE IF EXISTS `IDN_THRIFT_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_THRIFT_SESSION` (
  `SESSION_ID` varchar(255) NOT NULL,
  `USER_NAME` varchar(255) NOT NULL,
  `CREATED_TIME` varchar(255) NOT NULL,
  `LAST_MODIFIED_TIME` varchar(255) NOT NULL,
  `TENANT_ID` int(11) DEFAULT '-1',
  PRIMARY KEY (`SESSION_ID`),
  KEY `IDX_ITS_LMT` (`LAST_MODIFIED_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_THRIFT_SESSION`
--

LOCK TABLES `IDN_THRIFT_SESSION` WRITE;
/*!40000 ALTER TABLE `IDN_THRIFT_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDN_THRIFT_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDN_USER_ACCOUNT_ASSOCIATION`
--

DROP TABLE IF EXISTS `IDN_USER_ACCOUNT_ASSOCIATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDN_USER_ACCOUNT_ASSOCIATION` (
  `ASSOCIATION_KEY` varchar(255) NOT NULL,
  `TENANT_ID` int(11) NOT NULL DEFAULT '0',
  `DOMAIN_NAME` varchar(255) NOT NULL,
  `USER_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`TENANT_ID`,`DOMAIN_NAME`,`USER_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDN_USER_ACCOUNT_ASSOCIATION`
--

LOCK TABLES `IDN_USER_ACCOUNT_ASSOCIATION` WRITE;
/*!40000 ALTER TABLE `IDN_USER_ACCOUNT_ASSOCIATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDN_USER_ACCOUNT_ASSOCIATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDP`
--

DROP TABLE IF EXISTS `IDP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDP` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TENANT_ID` int(11) DEFAULT NULL,
  `NAME` varchar(254) NOT NULL,
  `IS_ENABLED` char(1) NOT NULL DEFAULT '1',
  `IS_PRIMARY` char(1) NOT NULL DEFAULT '0',
  `HOME_REALM_ID` varchar(254) DEFAULT NULL,
  `IMAGE` mediumblob,
  `CERTIFICATE` blob,
  `ALIAS` varchar(254) DEFAULT NULL,
  `INBOUND_PROV_ENABLED` char(1) NOT NULL DEFAULT '0',
  `INBOUND_PROV_USER_STORE_ID` varchar(254) DEFAULT NULL,
  `USER_CLAIM_URI` varchar(254) DEFAULT NULL,
  `ROLE_CLAIM_URI` varchar(254) DEFAULT NULL,
  `DESCRIPTION` varchar(1024) DEFAULT NULL,
  `DEFAULT_AUTHENTICATOR_NAME` varchar(254) DEFAULT NULL,
  `DEFAULT_PRO_CONNECTOR_NAME` varchar(254) DEFAULT NULL,
  `PROVISIONING_ROLE` varchar(128) DEFAULT NULL,
  `IS_FEDERATION_HUB` char(1) NOT NULL DEFAULT '0',
  `IS_LOCAL_CLAIM_DIALECT` char(1) NOT NULL DEFAULT '0',
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `TENANT_ID` (`TENANT_ID`,`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDP`
--

LOCK TABLES `IDP` WRITE;
/*!40000 ALTER TABLE `IDP` DISABLE KEYS */;
INSERT INTO `IDP` VALUES (1,-1234,'LOCAL','1','1','localhost',NULL,'MIICNTCCAZ6gAwIBAgIES343gjANBgkqhkiG9w0BAQUFADBVMQswCQYDVQQGEwJVUzELMAkGA1UECAwCQ0ExFjAUBgNVBAcMDU1vdW50YWluIFZpZXcxDTALBgNVBAoMBFdTTzIxEjAQBgNVBAMMCWxvY2FsaG9zdDAeFw0xMDAyMTkwNzAyMjZaFw0zNTAyMTMwNzAyMjZaMFUxCzAJBgNVBAYTAlVTMQswCQYDVQQIDAJDQTEWMBQGA1UEBwwNTW91bnRhaW4gVmlldzENMAsGA1UECgwEV1NPMjESMBAGA1UEAwwJbG9jYWxob3N0MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCUp/oV1vWc8/TkQSiAvTousMzOM4asB2iltr2QKozni5aVFu818MpOLZIr8LMnTzWllJvvaA5RAAdpbECb+48FjbBe0hseUdN5HpwvnH/DW8ZccGvk53I6Orq7hLCv1ZHtuOCokghz/ATrhyPq+QktMfXnRS4HrKGJTzxaCcU7OQIDAQABoxIwEDAOBgNVHQ8BAf8EBAMCBPAwDQYJKoZIhvcNAQEFBQADgYEAW5wPR7cr1LAdq+IrR44iQlRG5ITCZXY9hI0PygLP2rHANh+PYfTmxbuOnykNGyhM6FjFLbW2uZHQTY1jMrPprjOrmyK5sjJRO4d1DeGHT/YnIjs9JogRKv4XHECwLtIVdAbIdWHEtVZJyMSktcyysFcvuhPQK8Qc/E/Wq8uHSCo=',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL);
/*!40000 ALTER TABLE `IDP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDP_AUTHENTICATOR`
--

DROP TABLE IF EXISTS `IDP_AUTHENTICATOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDP_AUTHENTICATOR` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TENANT_ID` int(11) DEFAULT NULL,
  `IDP_ID` int(11) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `IS_ENABLED` char(1) DEFAULT '1',
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `TENANT_ID` (`TENANT_ID`,`IDP_ID`,`NAME`),
  KEY `IDP_ID` (`IDP_ID`),
  CONSTRAINT `IDP_AUTHENTICATOR_ibfk_1` FOREIGN KEY (`IDP_ID`) REFERENCES `IDP` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDP_AUTHENTICATOR`
--

LOCK TABLES `IDP_AUTHENTICATOR` WRITE;
/*!40000 ALTER TABLE `IDP_AUTHENTICATOR` DISABLE KEYS */;
INSERT INTO `IDP_AUTHENTICATOR` VALUES (1,-1234,1,'passivests','0',NULL),(2,-1234,1,'samlsso','0',NULL),(3,-1234,1,'openidconnect','0',NULL),(4,-1234,1,'IDPProperties','0',NULL);
/*!40000 ALTER TABLE `IDP_AUTHENTICATOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDP_AUTHENTICATOR_PROPERTY`
--

DROP TABLE IF EXISTS `IDP_AUTHENTICATOR_PROPERTY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDP_AUTHENTICATOR_PROPERTY` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TENANT_ID` int(11) DEFAULT NULL,
  `AUTHENTICATOR_ID` int(11) DEFAULT NULL,
  `PROPERTY_KEY` varchar(255) NOT NULL,
  `PROPERTY_VALUE` varchar(2047) DEFAULT NULL,
  `IS_SECRET` char(1) DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `TENANT_ID` (`TENANT_ID`,`AUTHENTICATOR_ID`,`PROPERTY_KEY`),
  KEY `AUTHENTICATOR_ID` (`AUTHENTICATOR_ID`),
  CONSTRAINT `IDP_AUTHENTICATOR_PROPERTY_ibfk_1` FOREIGN KEY (`AUTHENTICATOR_ID`) REFERENCES `IDP_AUTHENTICATOR` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDP_AUTHENTICATOR_PROPERTY`
--

LOCK TABLES `IDP_AUTHENTICATOR_PROPERTY` WRITE;
/*!40000 ALTER TABLE `IDP_AUTHENTICATOR_PROPERTY` DISABLE KEYS */;
INSERT INTO `IDP_AUTHENTICATOR_PROPERTY` VALUES (1,-1234,1,'IdPEntityId','localhost','0'),(2,-1234,2,'IdPEntityId','localhost','0'),(3,-1234,3,'IdPEntityId','https://localhost:9444/oauth2/token','0'),(4,-1234,4,'CleanUpPeriod','1140','0'),(5,-1234,1,'IdentityProviderUrl','https://localhost:9444/passivests','0'),(6,-1234,2,'SSOUrl','https://localhost:9444/samlsso','0'),(7,-1234,2,'LogoutReqUrl','https://localhost:9444/samlsso','0');
/*!40000 ALTER TABLE `IDP_AUTHENTICATOR_PROPERTY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDP_CLAIM`
--

DROP TABLE IF EXISTS `IDP_CLAIM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDP_CLAIM` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDP_ID` int(11) DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  `CLAIM` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDP_ID` (`IDP_ID`,`CLAIM`),
  CONSTRAINT `IDP_CLAIM_ibfk_1` FOREIGN KEY (`IDP_ID`) REFERENCES `IDP` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDP_CLAIM`
--

LOCK TABLES `IDP_CLAIM` WRITE;
/*!40000 ALTER TABLE `IDP_CLAIM` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDP_CLAIM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDP_CLAIM_MAPPING`
--

DROP TABLE IF EXISTS `IDP_CLAIM_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDP_CLAIM_MAPPING` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDP_CLAIM_ID` int(11) DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  `LOCAL_CLAIM` varchar(253) DEFAULT NULL,
  `DEFAULT_VALUE` varchar(255) DEFAULT NULL,
  `IS_REQUESTED` varchar(128) DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDP_CLAIM_ID` (`IDP_CLAIM_ID`,`TENANT_ID`,`LOCAL_CLAIM`),
  CONSTRAINT `IDP_CLAIM_MAPPING_ibfk_1` FOREIGN KEY (`IDP_CLAIM_ID`) REFERENCES `IDP_CLAIM` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDP_CLAIM_MAPPING`
--

LOCK TABLES `IDP_CLAIM_MAPPING` WRITE;
/*!40000 ALTER TABLE `IDP_CLAIM_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDP_CLAIM_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDP_LOCAL_CLAIM`
--

DROP TABLE IF EXISTS `IDP_LOCAL_CLAIM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDP_LOCAL_CLAIM` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TENANT_ID` int(11) DEFAULT NULL,
  `IDP_ID` int(11) DEFAULT NULL,
  `CLAIM_URI` varchar(255) NOT NULL,
  `DEFAULT_VALUE` varchar(255) DEFAULT NULL,
  `IS_REQUESTED` varchar(128) DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `TENANT_ID` (`TENANT_ID`,`IDP_ID`,`CLAIM_URI`),
  KEY `IDP_ID` (`IDP_ID`),
  CONSTRAINT `IDP_LOCAL_CLAIM_ibfk_1` FOREIGN KEY (`IDP_ID`) REFERENCES `IDP` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDP_LOCAL_CLAIM`
--

LOCK TABLES `IDP_LOCAL_CLAIM` WRITE;
/*!40000 ALTER TABLE `IDP_LOCAL_CLAIM` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDP_LOCAL_CLAIM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDP_METADATA`
--

DROP TABLE IF EXISTS `IDP_METADATA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDP_METADATA` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDP_ID` int(11) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT '-1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDP_METADATA_CONSTRAINT` (`IDP_ID`,`NAME`),
  CONSTRAINT `IDP_METADATA_ibfk_1` FOREIGN KEY (`IDP_ID`) REFERENCES `IDP` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDP_METADATA`
--

LOCK TABLES `IDP_METADATA` WRITE;
/*!40000 ALTER TABLE `IDP_METADATA` DISABLE KEYS */;
INSERT INTO `IDP_METADATA` VALUES (188,1,'RememberMeTimeout','20160',NULL,-1234),(189,1,'SessionIdleTimeout','15',NULL,-1234),(190,1,'suspension.notification.account.disable.delay','90',NULL,-1234),(191,1,'suspension.notification.delays','30,45,60,75',NULL,-1234),(192,1,'suspension.notification.enable','false',NULL,-1234),(193,1,'suspension.notification.AlreadyWritten','true',NULL,-1234),(194,1,'sso.login.recaptcha.enable','false',NULL,-1234),(195,1,'sso.login.recaptcha.on.max.failed.attempts','3',NULL,-1234),(196,1,'sso.login.recaptcha.AlreadyWritten','true',NULL,-1234),(197,1,'account.lock.handler.On.Failure.Max.Attempts','5',NULL,-1234),(198,1,'account.lock.handler.login.fail.timeout.ratio','2',NULL,-1234),(199,1,'account.lock.handler.Time','5',NULL,-1234),(200,1,'account.lock.handler.enable','false',NULL,-1234),(201,1,'account.lock.handler.AlreadyWritten','true',NULL,-1234),(202,1,'passwordHistory.count','5',NULL,-1234),(203,1,'passwordHistory.enable','false',NULL,-1234),(204,1,'passwordHistory.AlreadyWritten','true',NULL,-1234),(205,1,'passwordPolicy.pattern','^((?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%&*])).{0,100}$',NULL,-1234),(206,1,'passwordPolicy.errorMsg','\'Password pattern policy violated. Password should contain a digit[0-9], a lower case letter[a-z], an upper case letter[A-Z], one of !@#$%&* characters\'',NULL,-1234),(207,1,'passwordPolicy.enable','false',NULL,-1234),(208,1,'passwordPolicy.min.length','6',NULL,-1234),(209,1,'passwordPolicy.max.length','12',NULL,-1234),(210,1,'passwordPolicy.AlreadyWritten','true',NULL,-1234),(211,1,'Recovery.Notification.InternallyManage','true',NULL,-1234),(212,1,'Recovery.Notification.Username.Enable','false',NULL,-1234),(213,1,'Recovery.Notification.Password.Enable','false',NULL,-1234),(214,1,'Recovery.ExpiryTime','1440',NULL,-1234),(215,1,'Recovery.Question.Password.Enable','false',NULL,-1234),(216,1,'Recovery.Question.Password.ReCaptcha.Enable','true',NULL,-1234),(217,1,'Recovery.Question.Password.ReCaptcha.MaxFailedAttempts','2',NULL,-1234),(218,1,'Recovery.Question.Password.MinAnswers','2',NULL,-1234),(219,1,'Recovery.Question.Password.NotifyStart','false',NULL,-1234),(220,1,'Recovery.NotifySuccess','false',NULL,-1234),(221,1,'account-recovery.AlreadyWritten','true',NULL,-1234),(222,1,'SelfRegistration.LockOnCreation','true',NULL,-1234),(223,1,'SelfRegistration.ReCaptcha','true',NULL,-1234),(224,1,'SelfRegistration.Enable','false',NULL,-1234),(225,1,'SelfRegistration.Notification.InternallyManage','true',NULL,-1234),(226,1,'self-sign-up.AlreadyWritten','true',NULL,-1234),(227,1,'EmailVerification.LockOnCreation','true',NULL,-1234),(228,1,'EmailVerification.Enable','false',NULL,-1234),(229,1,'EmailVerification.Notification.InternallyManage','true',NULL,-1234),(230,1,'user-email-verification.AlreadyWritten','true',NULL,-1234),(231,1,'Recovery.AdminPasswordReset.RecoveryLink','false',NULL,-1234),(232,1,'Recovery.AdminPasswordReset.Offline','false',NULL,-1234),(233,1,'Recovery.AdminPasswordReset.OTP','false',NULL,-1234),(234,1,'admin-forced-password-reset.AlreadyWritten','true',NULL,-1234);
/*!40000 ALTER TABLE `IDP_METADATA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDP_PROVISIONING_CONFIG`
--

DROP TABLE IF EXISTS `IDP_PROVISIONING_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDP_PROVISIONING_CONFIG` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TENANT_ID` int(11) DEFAULT NULL,
  `IDP_ID` int(11) DEFAULT NULL,
  `PROVISIONING_CONNECTOR_TYPE` varchar(255) NOT NULL,
  `IS_ENABLED` char(1) DEFAULT '0',
  `IS_BLOCKING` char(1) DEFAULT '0',
  `IS_RULES_ENABLED` char(1) DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `TENANT_ID` (`TENANT_ID`,`IDP_ID`,`PROVISIONING_CONNECTOR_TYPE`),
  KEY `IDP_ID` (`IDP_ID`),
  CONSTRAINT `IDP_PROVISIONING_CONFIG_ibfk_1` FOREIGN KEY (`IDP_ID`) REFERENCES `IDP` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDP_PROVISIONING_CONFIG`
--

LOCK TABLES `IDP_PROVISIONING_CONFIG` WRITE;
/*!40000 ALTER TABLE `IDP_PROVISIONING_CONFIG` DISABLE KEYS */;
INSERT INTO `IDP_PROVISIONING_CONFIG` VALUES (9,-1234,1,'scim','0','0','0');
/*!40000 ALTER TABLE `IDP_PROVISIONING_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDP_PROVISIONING_ENTITY`
--

DROP TABLE IF EXISTS `IDP_PROVISIONING_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDP_PROVISIONING_ENTITY` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROVISIONING_CONFIG_ID` int(11) DEFAULT NULL,
  `ENTITY_TYPE` varchar(255) NOT NULL,
  `ENTITY_LOCAL_USERSTORE` varchar(255) NOT NULL,
  `ENTITY_NAME` varchar(255) NOT NULL,
  `ENTITY_VALUE` varchar(255) DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  `ENTITY_LOCAL_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ENTITY_TYPE` (`ENTITY_TYPE`,`TENANT_ID`,`ENTITY_LOCAL_USERSTORE`,`ENTITY_NAME`,`PROVISIONING_CONFIG_ID`),
  UNIQUE KEY `PROVISIONING_CONFIG_ID` (`PROVISIONING_CONFIG_ID`,`ENTITY_TYPE`,`ENTITY_VALUE`),
  CONSTRAINT `IDP_PROVISIONING_ENTITY_ibfk_1` FOREIGN KEY (`PROVISIONING_CONFIG_ID`) REFERENCES `IDP_PROVISIONING_CONFIG` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDP_PROVISIONING_ENTITY`
--

LOCK TABLES `IDP_PROVISIONING_ENTITY` WRITE;
/*!40000 ALTER TABLE `IDP_PROVISIONING_ENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDP_PROVISIONING_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDP_PROV_CONFIG_PROPERTY`
--

DROP TABLE IF EXISTS `IDP_PROV_CONFIG_PROPERTY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDP_PROV_CONFIG_PROPERTY` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TENANT_ID` int(11) DEFAULT NULL,
  `PROVISIONING_CONFIG_ID` int(11) DEFAULT NULL,
  `PROPERTY_KEY` varchar(255) NOT NULL,
  `PROPERTY_VALUE` varchar(2048) DEFAULT NULL,
  `PROPERTY_BLOB_VALUE` blob,
  `PROPERTY_TYPE` char(32) NOT NULL,
  `IS_SECRET` char(1) DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `TENANT_ID` (`TENANT_ID`,`PROVISIONING_CONFIG_ID`,`PROPERTY_KEY`),
  KEY `PROVISIONING_CONFIG_ID` (`PROVISIONING_CONFIG_ID`),
  CONSTRAINT `IDP_PROV_CONFIG_PROPERTY_ibfk_1` FOREIGN KEY (`PROVISIONING_CONFIG_ID`) REFERENCES `IDP_PROVISIONING_CONFIG` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDP_PROV_CONFIG_PROPERTY`
--

LOCK TABLES `IDP_PROV_CONFIG_PROPERTY` WRITE;
/*!40000 ALTER TABLE `IDP_PROV_CONFIG_PROPERTY` DISABLE KEYS */;
INSERT INTO `IDP_PROV_CONFIG_PROPERTY` VALUES (17,-1234,9,'scimUserEndpoint','https://localhost:9444/wso2/scim/Users','','STRING','0'),(18,-1234,9,'scimGroupEndpoint','https://localhost:9444/wso2/scim/Groups','','STRING','0');
/*!40000 ALTER TABLE `IDP_PROV_CONFIG_PROPERTY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDP_ROLE`
--

DROP TABLE IF EXISTS `IDP_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDP_ROLE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDP_ID` int(11) DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  `ROLE` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDP_ID` (`IDP_ID`,`ROLE`),
  CONSTRAINT `IDP_ROLE_ibfk_1` FOREIGN KEY (`IDP_ID`) REFERENCES `IDP` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDP_ROLE`
--

LOCK TABLES `IDP_ROLE` WRITE;
/*!40000 ALTER TABLE `IDP_ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDP_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDP_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `IDP_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDP_ROLE_MAPPING` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDP_ROLE_ID` int(11) DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT NULL,
  `USER_STORE_ID` varchar(253) DEFAULT NULL,
  `LOCAL_ROLE` varchar(253) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IDP_ROLE_ID` (`IDP_ROLE_ID`,`TENANT_ID`,`USER_STORE_ID`,`LOCAL_ROLE`),
  CONSTRAINT `IDP_ROLE_MAPPING_ibfk_1` FOREIGN KEY (`IDP_ROLE_ID`) REFERENCES `IDP_ROLE` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDP_ROLE_MAPPING`
--

LOCK TABLES `IDP_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `IDP_ROLE_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDP_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SP_APP`
--

DROP TABLE IF EXISTS `SP_APP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SP_APP` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TENANT_ID` int(11) NOT NULL,
  `APP_NAME` varchar(255) NOT NULL,
  `USER_STORE` varchar(255) NOT NULL,
  `USERNAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(1024) DEFAULT NULL,
  `ROLE_CLAIM` varchar(512) DEFAULT NULL,
  `AUTH_TYPE` varchar(255) NOT NULL,
  `PROVISIONING_USERSTORE_DOMAIN` varchar(512) DEFAULT NULL,
  `IS_LOCAL_CLAIM_DIALECT` char(1) DEFAULT '1',
  `IS_SEND_LOCAL_SUBJECT_ID` char(1) DEFAULT '0',
  `IS_SEND_AUTH_LIST_OF_IDPS` char(1) DEFAULT '0',
  `IS_USE_TENANT_DOMAIN_SUBJECT` char(1) DEFAULT '1',
  `IS_USE_USER_DOMAIN_SUBJECT` char(1) DEFAULT '1',
  `ENABLE_AUTHORIZATION` char(1) DEFAULT '0',
  `SUBJECT_CLAIM_URI` varchar(512) DEFAULT NULL,
  `IS_SAAS_APP` char(1) DEFAULT '0',
  `IS_DUMB_MODE` char(1) DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `APPLICATION_NAME_CONSTRAINT` (`APP_NAME`,`TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SP_APP`
--

LOCK TABLES `SP_APP` WRITE;
/*!40000 ALTER TABLE `SP_APP` DISABLE KEYS */;
INSERT INTO `SP_APP` VALUES (2,-1234,'API_PUBLISHER','PRIMARY','admin','','','default','','1','0','0','0','0','0',NULL,'0','0'),(3,-1234,'API_STORE','PRIMARY','admin','','','default','','1','0','0','0','0','0',NULL,'0','0'),(4,-1234,'admin_TestApp_PRODUCTION','PRIMARY','admin','Service Provider for application admin_TestApp_PRODUCTION',NULL,'default',NULL,'1','0','0','0','0','0',NULL,'0','0');
/*!40000 ALTER TABLE `SP_APP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SP_AUTH_STEP`
--

DROP TABLE IF EXISTS `SP_AUTH_STEP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SP_AUTH_STEP` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TENANT_ID` int(11) NOT NULL,
  `STEP_ORDER` int(11) DEFAULT '1',
  `APP_ID` int(11) NOT NULL,
  `IS_SUBJECT_STEP` char(1) DEFAULT '0',
  `IS_ATTRIBUTE_STEP` char(1) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `APPLICATION_ID_CONSTRAINT_STEP` (`APP_ID`),
  CONSTRAINT `APPLICATION_ID_CONSTRAINT_STEP` FOREIGN KEY (`APP_ID`) REFERENCES `SP_APP` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SP_AUTH_STEP`
--

LOCK TABLES `SP_AUTH_STEP` WRITE;
/*!40000 ALTER TABLE `SP_AUTH_STEP` DISABLE KEYS */;
/*!40000 ALTER TABLE `SP_AUTH_STEP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SP_CLAIM_MAPPING`
--

DROP TABLE IF EXISTS `SP_CLAIM_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SP_CLAIM_MAPPING` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TENANT_ID` int(11) NOT NULL,
  `IDP_CLAIM` varchar(512) NOT NULL,
  `SP_CLAIM` varchar(512) NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `IS_REQUESTED` varchar(128) DEFAULT '0',
  `IS_MANDATORY` varchar(128) DEFAULT '0',
  `DEFAULT_VALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CLAIMID_APPID_CONSTRAINT` (`APP_ID`),
  CONSTRAINT `CLAIMID_APPID_CONSTRAINT` FOREIGN KEY (`APP_ID`) REFERENCES `SP_APP` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SP_CLAIM_MAPPING`
--

LOCK TABLES `SP_CLAIM_MAPPING` WRITE;
/*!40000 ALTER TABLE `SP_CLAIM_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `SP_CLAIM_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SP_FEDERATED_IDP`
--

DROP TABLE IF EXISTS `SP_FEDERATED_IDP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SP_FEDERATED_IDP` (
  `ID` int(11) NOT NULL,
  `TENANT_ID` int(11) NOT NULL,
  `AUTHENTICATOR_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`,`AUTHENTICATOR_ID`),
  CONSTRAINT `STEP_ID_CONSTRAINT` FOREIGN KEY (`ID`) REFERENCES `SP_AUTH_STEP` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SP_FEDERATED_IDP`
--

LOCK TABLES `SP_FEDERATED_IDP` WRITE;
/*!40000 ALTER TABLE `SP_FEDERATED_IDP` DISABLE KEYS */;
/*!40000 ALTER TABLE `SP_FEDERATED_IDP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SP_INBOUND_AUTH`
--

DROP TABLE IF EXISTS `SP_INBOUND_AUTH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SP_INBOUND_AUTH` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TENANT_ID` int(11) NOT NULL,
  `INBOUND_AUTH_KEY` varchar(255) DEFAULT NULL,
  `INBOUND_AUTH_TYPE` varchar(255) NOT NULL,
  `INBOUND_CONFIG_TYPE` varchar(255) NOT NULL,
  `PROP_NAME` varchar(255) DEFAULT NULL,
  `PROP_VALUE` varchar(1024) DEFAULT NULL,
  `APP_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `APPLICATION_ID_CONSTRAINT` (`APP_ID`),
  CONSTRAINT `APPLICATION_ID_CONSTRAINT` FOREIGN KEY (`APP_ID`) REFERENCES `SP_APP` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SP_INBOUND_AUTH`
--

LOCK TABLES `SP_INBOUND_AUTH` WRITE;
/*!40000 ALTER TABLE `SP_INBOUND_AUTH` DISABLE KEYS */;
INSERT INTO `SP_INBOUND_AUTH` VALUES (4,-1234,'API_PUBLISHER','samlsso','standardAPP',NULL,NULL,2),(5,-1234,'API_PUBLISHER','passivests','standardAPP',NULL,NULL,2),(6,-1234,'API_PUBLISHER','openid','standardAPP',NULL,NULL,2),(10,-1234,'API_STORE','samlsso','standardAPP',NULL,NULL,3),(11,-1234,'API_STORE','passivests','standardAPP',NULL,NULL,3),(12,-1234,'API_STORE','openid','standardAPP',NULL,NULL,3),(13,-1234,'IB1oHexsRG2IzA9S0fz5xZnwaWIa','oauth2','standardAPP',NULL,NULL,4);
/*!40000 ALTER TABLE `SP_INBOUND_AUTH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SP_METADATA`
--

DROP TABLE IF EXISTS `SP_METADATA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SP_METADATA` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SP_ID` int(11) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT '-1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `SP_METADATA_CONSTRAINT` (`SP_ID`,`NAME`),
  CONSTRAINT `SP_METADATA_ibfk_1` FOREIGN KEY (`SP_ID`) REFERENCES `SP_APP` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SP_METADATA`
--

LOCK TABLES `SP_METADATA` WRITE;
/*!40000 ALTER TABLE `SP_METADATA` DISABLE KEYS */;
/*!40000 ALTER TABLE `SP_METADATA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SP_PROVISIONING_CONNECTOR`
--

DROP TABLE IF EXISTS `SP_PROVISIONING_CONNECTOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SP_PROVISIONING_CONNECTOR` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TENANT_ID` int(11) NOT NULL,
  `IDP_NAME` varchar(255) NOT NULL,
  `CONNECTOR_NAME` varchar(255) NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `IS_JIT_ENABLED` char(1) NOT NULL DEFAULT '0',
  `BLOCKING` char(1) NOT NULL DEFAULT '0',
  `RULE_ENABLED` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `PRO_CONNECTOR_APPID_CONSTRAINT` (`APP_ID`),
  CONSTRAINT `PRO_CONNECTOR_APPID_CONSTRAINT` FOREIGN KEY (`APP_ID`) REFERENCES `SP_APP` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SP_PROVISIONING_CONNECTOR`
--

LOCK TABLES `SP_PROVISIONING_CONNECTOR` WRITE;
/*!40000 ALTER TABLE `SP_PROVISIONING_CONNECTOR` DISABLE KEYS */;
/*!40000 ALTER TABLE `SP_PROVISIONING_CONNECTOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SP_REQ_PATH_AUTHENTICATOR`
--

DROP TABLE IF EXISTS `SP_REQ_PATH_AUTHENTICATOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SP_REQ_PATH_AUTHENTICATOR` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TENANT_ID` int(11) NOT NULL,
  `AUTHENTICATOR_NAME` varchar(255) NOT NULL,
  `APP_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `REQ_AUTH_APPID_CONSTRAINT` (`APP_ID`),
  CONSTRAINT `REQ_AUTH_APPID_CONSTRAINT` FOREIGN KEY (`APP_ID`) REFERENCES `SP_APP` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SP_REQ_PATH_AUTHENTICATOR`
--

LOCK TABLES `SP_REQ_PATH_AUTHENTICATOR` WRITE;
/*!40000 ALTER TABLE `SP_REQ_PATH_AUTHENTICATOR` DISABLE KEYS */;
/*!40000 ALTER TABLE `SP_REQ_PATH_AUTHENTICATOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SP_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `SP_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SP_ROLE_MAPPING` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TENANT_ID` int(11) NOT NULL,
  `IDP_ROLE` varchar(255) NOT NULL,
  `SP_ROLE` varchar(255) NOT NULL,
  `APP_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ROLEID_APPID_CONSTRAINT` (`APP_ID`),
  CONSTRAINT `ROLEID_APPID_CONSTRAINT` FOREIGN KEY (`APP_ID`) REFERENCES `SP_APP` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SP_ROLE_MAPPING`
--

LOCK TABLES `SP_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `SP_ROLE_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `SP_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WF_BPS_PROFILE`
--

DROP TABLE IF EXISTS `WF_BPS_PROFILE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WF_BPS_PROFILE` (
  `PROFILE_NAME` varchar(45) NOT NULL DEFAULT '',
  `HOST_URL_MANAGER` varchar(255) DEFAULT NULL,
  `HOST_URL_WORKER` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(45) DEFAULT NULL,
  `PASSWORD` varchar(1023) DEFAULT NULL,
  `CALLBACK_HOST` varchar(45) DEFAULT NULL,
  `CALLBACK_USERNAME` varchar(45) DEFAULT NULL,
  `CALLBACK_PASSWORD` varchar(255) DEFAULT NULL,
  `TENANT_ID` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`PROFILE_NAME`,`TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WF_BPS_PROFILE`
--

LOCK TABLES `WF_BPS_PROFILE` WRITE;
/*!40000 ALTER TABLE `WF_BPS_PROFILE` DISABLE KEYS */;
INSERT INTO `WF_BPS_PROFILE` VALUES ('embeded_bps','https://localhost:9444/services','https://localhost:9444/services','admin','AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=',NULL,NULL,NULL,-1234);
/*!40000 ALTER TABLE `WF_BPS_PROFILE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WF_REQUEST`
--

DROP TABLE IF EXISTS `WF_REQUEST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WF_REQUEST` (
  `UUID` varchar(45) NOT NULL DEFAULT '',
  `CREATED_BY` varchar(255) DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT '-1',
  `OPERATION_TYPE` varchar(50) DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `STATUS` varchar(30) DEFAULT NULL,
  `REQUEST` blob,
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WF_REQUEST`
--

LOCK TABLES `WF_REQUEST` WRITE;
/*!40000 ALTER TABLE `WF_REQUEST` DISABLE KEYS */;
/*!40000 ALTER TABLE `WF_REQUEST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WF_REQUEST_ENTITY_RELATIONSHIP`
--

DROP TABLE IF EXISTS `WF_REQUEST_ENTITY_RELATIONSHIP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WF_REQUEST_ENTITY_RELATIONSHIP` (
  `REQUEST_ID` varchar(45) NOT NULL DEFAULT '',
  `ENTITY_NAME` varchar(255) NOT NULL DEFAULT '',
  `ENTITY_TYPE` varchar(50) NOT NULL DEFAULT '',
  `TENANT_ID` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`REQUEST_ID`,`ENTITY_NAME`,`ENTITY_TYPE`,`TENANT_ID`),
  CONSTRAINT `WF_REQUEST_ENTITY_RELATIONSHIP_ibfk_1` FOREIGN KEY (`REQUEST_ID`) REFERENCES `WF_REQUEST` (`UUID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WF_REQUEST_ENTITY_RELATIONSHIP`
--

LOCK TABLES `WF_REQUEST_ENTITY_RELATIONSHIP` WRITE;
/*!40000 ALTER TABLE `WF_REQUEST_ENTITY_RELATIONSHIP` DISABLE KEYS */;
/*!40000 ALTER TABLE `WF_REQUEST_ENTITY_RELATIONSHIP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WF_WORKFLOW`
--

DROP TABLE IF EXISTS `WF_WORKFLOW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WF_WORKFLOW` (
  `ID` varchar(45) NOT NULL DEFAULT '',
  `WF_NAME` varchar(45) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TEMPLATE_ID` varchar(45) DEFAULT NULL,
  `IMPL_ID` varchar(45) DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT '-1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WF_WORKFLOW`
--

LOCK TABLES `WF_WORKFLOW` WRITE;
/*!40000 ALTER TABLE `WF_WORKFLOW` DISABLE KEYS */;
/*!40000 ALTER TABLE `WF_WORKFLOW` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WF_WORKFLOW_ASSOCIATION`
--

DROP TABLE IF EXISTS `WF_WORKFLOW_ASSOCIATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WF_WORKFLOW_ASSOCIATION` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ASSOC_NAME` varchar(45) DEFAULT NULL,
  `EVENT_ID` varchar(45) DEFAULT NULL,
  `ASSOC_CONDITION` varchar(2000) DEFAULT NULL,
  `WORKFLOW_ID` varchar(45) DEFAULT NULL,
  `IS_ENABLED` char(1) DEFAULT '1',
  `TENANT_ID` int(11) DEFAULT '-1',
  PRIMARY KEY (`ID`),
  KEY `WORKFLOW_ID` (`WORKFLOW_ID`),
  CONSTRAINT `WF_WORKFLOW_ASSOCIATION_ibfk_1` FOREIGN KEY (`WORKFLOW_ID`) REFERENCES `WF_WORKFLOW` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WF_WORKFLOW_ASSOCIATION`
--

LOCK TABLES `WF_WORKFLOW_ASSOCIATION` WRITE;
/*!40000 ALTER TABLE `WF_WORKFLOW_ASSOCIATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `WF_WORKFLOW_ASSOCIATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WF_WORKFLOW_CONFIG_PARAM`
--

DROP TABLE IF EXISTS `WF_WORKFLOW_CONFIG_PARAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WF_WORKFLOW_CONFIG_PARAM` (
  `WORKFLOW_ID` varchar(45) NOT NULL DEFAULT '',
  `PARAM_NAME` varchar(45) NOT NULL DEFAULT '',
  `PARAM_VALUE` varchar(1000) DEFAULT NULL,
  `PARAM_QNAME` varchar(45) NOT NULL DEFAULT '',
  `PARAM_HOLDER` varchar(45) NOT NULL DEFAULT '',
  `TENANT_ID` int(11) DEFAULT '-1',
  PRIMARY KEY (`WORKFLOW_ID`,`PARAM_NAME`,`PARAM_QNAME`,`PARAM_HOLDER`),
  CONSTRAINT `WF_WORKFLOW_CONFIG_PARAM_ibfk_1` FOREIGN KEY (`WORKFLOW_ID`) REFERENCES `WF_WORKFLOW` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WF_WORKFLOW_CONFIG_PARAM`
--

LOCK TABLES `WF_WORKFLOW_CONFIG_PARAM` WRITE;
/*!40000 ALTER TABLE `WF_WORKFLOW_CONFIG_PARAM` DISABLE KEYS */;
/*!40000 ALTER TABLE `WF_WORKFLOW_CONFIG_PARAM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WF_WORKFLOW_REQUEST_RELATION`
--

DROP TABLE IF EXISTS `WF_WORKFLOW_REQUEST_RELATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WF_WORKFLOW_REQUEST_RELATION` (
  `RELATIONSHIP_ID` varchar(45) NOT NULL DEFAULT '',
  `WORKFLOW_ID` varchar(45) DEFAULT NULL,
  `REQUEST_ID` varchar(45) DEFAULT NULL,
  `UPDATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `STATUS` varchar(30) DEFAULT NULL,
  `TENANT_ID` int(11) DEFAULT '-1',
  PRIMARY KEY (`RELATIONSHIP_ID`),
  KEY `WORKFLOW_ID` (`WORKFLOW_ID`),
  KEY `REQUEST_ID` (`REQUEST_ID`),
  CONSTRAINT `WF_WORKFLOW_REQUEST_RELATION_ibfk_1` FOREIGN KEY (`WORKFLOW_ID`) REFERENCES `WF_WORKFLOW` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `WF_WORKFLOW_REQUEST_RELATION_ibfk_2` FOREIGN KEY (`REQUEST_ID`) REFERENCES `WF_REQUEST` (`UUID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WF_WORKFLOW_REQUEST_RELATION`
--

LOCK TABLES `WF_WORKFLOW_REQUEST_RELATION` WRITE;
/*!40000 ALTER TABLE `WF_WORKFLOW_REQUEST_RELATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `WF_WORKFLOW_REQUEST_RELATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `userstore`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `userstore` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `userstore`;

--
-- Table structure for table `REG_ASSOCIATION`
--

DROP TABLE IF EXISTS `REG_ASSOCIATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_ASSOCIATION` (
  `REG_ASSOCIATION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_SOURCEPATH` varchar(750) NOT NULL,
  `REG_TARGETPATH` varchar(750) NOT NULL,
  `REG_ASSOCIATION_TYPE` varchar(2000) NOT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_ASSOCIATION_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_ASSOCIATION`
--

LOCK TABLES `REG_ASSOCIATION` WRITE;
/*!40000 ALTER TABLE `REG_ASSOCIATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_ASSOCIATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_CLUSTER_LOCK`
--

DROP TABLE IF EXISTS `REG_CLUSTER_LOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_CLUSTER_LOCK` (
  `REG_LOCK_NAME` varchar(20) NOT NULL DEFAULT '',
  `REG_LOCK_STATUS` varchar(20) DEFAULT NULL,
  `REG_LOCKED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REG_TENANT_ID` int(11) DEFAULT '0',
  PRIMARY KEY (`REG_LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_CLUSTER_LOCK`
--

LOCK TABLES `REG_CLUSTER_LOCK` WRITE;
/*!40000 ALTER TABLE `REG_CLUSTER_LOCK` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_CLUSTER_LOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_COMMENT`
--

DROP TABLE IF EXISTS `REG_COMMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_COMMENT` (
  `REG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_COMMENT_TEXT` varchar(500) NOT NULL,
  `REG_USER_ID` varchar(31) NOT NULL,
  `REG_COMMENTED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_COMMENT`
--

LOCK TABLES `REG_COMMENT` WRITE;
/*!40000 ALTER TABLE `REG_COMMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_COMMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_CONTENT`
--

DROP TABLE IF EXISTS `REG_CONTENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_CONTENT` (
  `REG_CONTENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_CONTENT_DATA` longblob,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_CONTENT_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_CONTENT`
--

LOCK TABLES `REG_CONTENT` WRITE;
/*!40000 ALTER TABLE `REG_CONTENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_CONTENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_CONTENT_HISTORY`
--

DROP TABLE IF EXISTS `REG_CONTENT_HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_CONTENT_HISTORY` (
  `REG_CONTENT_ID` int(11) NOT NULL,
  `REG_CONTENT_DATA` longblob,
  `REG_DELETED` smallint(6) DEFAULT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_CONTENT_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_CONTENT_HISTORY`
--

LOCK TABLES `REG_CONTENT_HISTORY` WRITE;
/*!40000 ALTER TABLE `REG_CONTENT_HISTORY` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_CONTENT_HISTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_LOG`
--

DROP TABLE IF EXISTS `REG_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_LOG` (
  `REG_LOG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_PATH` varchar(750) DEFAULT NULL,
  `REG_USER_ID` varchar(31) NOT NULL,
  `REG_LOGGED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REG_ACTION` int(11) NOT NULL,
  `REG_ACTION_DATA` varchar(500) DEFAULT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_LOG_ID`,`REG_TENANT_ID`),
  KEY `REG_LOG_IND_BY_REG_LOGTIME` (`REG_LOGGED_TIME`,`REG_TENANT_ID`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_LOG`
--

LOCK TABLES `REG_LOG` WRITE;
/*!40000 ALTER TABLE `REG_LOG` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_PATH`
--

DROP TABLE IF EXISTS `REG_PATH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_PATH` (
  `REG_PATH_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_PATH_VALUE` varchar(750) NOT NULL,
  `REG_PATH_PARENT_ID` int(11) DEFAULT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_PATH_ID`,`REG_TENANT_ID`),
  KEY `REG_PATH_IND_BY_PATH_VALUE` (`REG_PATH_VALUE`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_PATH_IND_BY_PATH_PARENT_ID` (`REG_PATH_PARENT_ID`,`REG_TENANT_ID`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_PATH`
--

LOCK TABLES `REG_PATH` WRITE;
/*!40000 ALTER TABLE `REG_PATH` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_PATH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_PROPERTY`
--

DROP TABLE IF EXISTS `REG_PROPERTY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_PROPERTY` (
  `REG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_NAME` varchar(100) NOT NULL,
  `REG_VALUE` varchar(1000) DEFAULT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_PROPERTY`
--

LOCK TABLES `REG_PROPERTY` WRITE;
/*!40000 ALTER TABLE `REG_PROPERTY` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_PROPERTY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_RATING`
--

DROP TABLE IF EXISTS `REG_RATING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_RATING` (
  `REG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_RATING` int(11) NOT NULL,
  `REG_USER_ID` varchar(31) NOT NULL,
  `REG_RATED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_RATING`
--

LOCK TABLES `REG_RATING` WRITE;
/*!40000 ALTER TABLE `REG_RATING` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_RATING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_RESOURCE`
--

DROP TABLE IF EXISTS `REG_RESOURCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_RESOURCE` (
  `REG_PATH_ID` int(11) NOT NULL,
  `REG_NAME` varchar(256) DEFAULT NULL,
  `REG_VERSION` int(11) NOT NULL AUTO_INCREMENT,
  `REG_MEDIA_TYPE` varchar(500) DEFAULT NULL,
  `REG_CREATOR` varchar(31) NOT NULL,
  `REG_CREATED_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `REG_LAST_UPDATOR` varchar(31) DEFAULT NULL,
  `REG_LAST_UPDATED_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `REG_DESCRIPTION` varchar(1000) DEFAULT NULL,
  `REG_CONTENT_ID` int(11) DEFAULT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  `REG_UUID` varchar(100) NOT NULL,
  PRIMARY KEY (`REG_VERSION`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_FK_BY_PATH_ID` (`REG_PATH_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_FK_BY_CONTENT_ID` (`REG_CONTENT_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_IND_BY_NAME` (`REG_NAME`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_RESOURCE_IND_BY_PATH_ID_NAME` (`REG_PATH_ID`,`REG_NAME`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_RESOURCE_IND_BY_UUID` (`REG_UUID`) USING HASH,
  KEY `REG_RESOURCE_IND_BY_TENANT` (`REG_TENANT_ID`,`REG_UUID`) USING HASH,
  KEY `REG_RESOURCE_IND_BY_TYPE` (`REG_TENANT_ID`,`REG_MEDIA_TYPE`) USING HASH,
  KEY `REG_RESOURCE_HISTORY_IND_BY_PATH_ID_NAME` (`REG_PATH_ID`,`REG_NAME`,`REG_TENANT_ID`) USING HASH,
  CONSTRAINT `REG_RESOURCE_FK_BY_CONTENT_ID` FOREIGN KEY (`REG_CONTENT_ID`, `REG_TENANT_ID`) REFERENCES `REG_CONTENT` (`REG_CONTENT_ID`, `REG_TENANT_ID`),
  CONSTRAINT `REG_RESOURCE_FK_BY_PATH_ID` FOREIGN KEY (`REG_PATH_ID`, `REG_TENANT_ID`) REFERENCES `REG_PATH` (`REG_PATH_ID`, `REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_RESOURCE`
--

LOCK TABLES `REG_RESOURCE` WRITE;
/*!40000 ALTER TABLE `REG_RESOURCE` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_RESOURCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_RESOURCE_COMMENT`
--

DROP TABLE IF EXISTS `REG_RESOURCE_COMMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_RESOURCE_COMMENT` (
  `REG_COMMENT_ID` int(11) NOT NULL,
  `REG_VERSION` int(11) DEFAULT NULL,
  `REG_PATH_ID` int(11) DEFAULT NULL,
  `REG_RESOURCE_NAME` varchar(256) DEFAULT NULL,
  `REG_TENANT_ID` int(11) DEFAULT '0',
  KEY `REG_RESOURCE_COMMENT_FK_BY_PATH_ID` (`REG_PATH_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_COMMENT_FK_BY_COMMENT_ID` (`REG_COMMENT_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_COMMENT_IND_BY_PATH_ID_AND_RESOURCE_NAME` (`REG_PATH_ID`,`REG_RESOURCE_NAME`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_RESOURCE_COMMENT_IND_BY_VERSION` (`REG_VERSION`,`REG_TENANT_ID`) USING HASH,
  CONSTRAINT `REG_RESOURCE_COMMENT_FK_BY_COMMENT_ID` FOREIGN KEY (`REG_COMMENT_ID`, `REG_TENANT_ID`) REFERENCES `REG_COMMENT` (`REG_ID`, `REG_TENANT_ID`),
  CONSTRAINT `REG_RESOURCE_COMMENT_FK_BY_PATH_ID` FOREIGN KEY (`REG_PATH_ID`, `REG_TENANT_ID`) REFERENCES `REG_PATH` (`REG_PATH_ID`, `REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_RESOURCE_COMMENT`
--

LOCK TABLES `REG_RESOURCE_COMMENT` WRITE;
/*!40000 ALTER TABLE `REG_RESOURCE_COMMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_RESOURCE_COMMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_RESOURCE_HISTORY`
--

DROP TABLE IF EXISTS `REG_RESOURCE_HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_RESOURCE_HISTORY` (
  `REG_PATH_ID` int(11) NOT NULL,
  `REG_NAME` varchar(256) DEFAULT NULL,
  `REG_VERSION` int(11) NOT NULL,
  `REG_MEDIA_TYPE` varchar(500) DEFAULT NULL,
  `REG_CREATOR` varchar(31) NOT NULL,
  `REG_CREATED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REG_LAST_UPDATOR` varchar(31) DEFAULT NULL,
  `REG_LAST_UPDATED_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `REG_DESCRIPTION` varchar(1000) DEFAULT NULL,
  `REG_CONTENT_ID` int(11) DEFAULT NULL,
  `REG_DELETED` smallint(6) DEFAULT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  `REG_UUID` varchar(100) NOT NULL,
  PRIMARY KEY (`REG_VERSION`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_HIST_FK_BY_PATHID` (`REG_PATH_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_HIST_FK_BY_CONTENT_ID` (`REG_CONTENT_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_HISTORY_IND_BY_NAME` (`REG_NAME`,`REG_TENANT_ID`) USING HASH,
  CONSTRAINT `REG_RESOURCE_HIST_FK_BY_CONTENT_ID` FOREIGN KEY (`REG_CONTENT_ID`, `REG_TENANT_ID`) REFERENCES `REG_CONTENT_HISTORY` (`REG_CONTENT_ID`, `REG_TENANT_ID`),
  CONSTRAINT `REG_RESOURCE_HIST_FK_BY_PATHID` FOREIGN KEY (`REG_PATH_ID`, `REG_TENANT_ID`) REFERENCES `REG_PATH` (`REG_PATH_ID`, `REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_RESOURCE_HISTORY`
--

LOCK TABLES `REG_RESOURCE_HISTORY` WRITE;
/*!40000 ALTER TABLE `REG_RESOURCE_HISTORY` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_RESOURCE_HISTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_RESOURCE_PROPERTY`
--

DROP TABLE IF EXISTS `REG_RESOURCE_PROPERTY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_RESOURCE_PROPERTY` (
  `REG_PROPERTY_ID` int(11) NOT NULL,
  `REG_VERSION` int(11) DEFAULT NULL,
  `REG_PATH_ID` int(11) DEFAULT NULL,
  `REG_RESOURCE_NAME` varchar(256) DEFAULT NULL,
  `REG_TENANT_ID` int(11) DEFAULT '0',
  KEY `REG_RESOURCE_PROPERTY_FK_BY_PATH_ID` (`REG_PATH_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_PROPERTY_FK_BY_TAG_ID` (`REG_PROPERTY_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_PROPERTY_IND_BY_PATH_ID_AND_RESOURCE_NAME` (`REG_PATH_ID`,`REG_RESOURCE_NAME`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_RESOURCE_PROPERTY_IND_BY_VERSION` (`REG_VERSION`,`REG_TENANT_ID`) USING HASH,
  CONSTRAINT `REG_RESOURCE_PROPERTY_FK_BY_PATH_ID` FOREIGN KEY (`REG_PATH_ID`, `REG_TENANT_ID`) REFERENCES `REG_PATH` (`REG_PATH_ID`, `REG_TENANT_ID`),
  CONSTRAINT `REG_RESOURCE_PROPERTY_FK_BY_TAG_ID` FOREIGN KEY (`REG_PROPERTY_ID`, `REG_TENANT_ID`) REFERENCES `REG_PROPERTY` (`REG_ID`, `REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_RESOURCE_PROPERTY`
--

LOCK TABLES `REG_RESOURCE_PROPERTY` WRITE;
/*!40000 ALTER TABLE `REG_RESOURCE_PROPERTY` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_RESOURCE_PROPERTY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_RESOURCE_RATING`
--

DROP TABLE IF EXISTS `REG_RESOURCE_RATING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_RESOURCE_RATING` (
  `REG_RATING_ID` int(11) NOT NULL,
  `REG_VERSION` int(11) DEFAULT NULL,
  `REG_PATH_ID` int(11) DEFAULT NULL,
  `REG_RESOURCE_NAME` varchar(256) DEFAULT NULL,
  `REG_TENANT_ID` int(11) DEFAULT '0',
  KEY `REG_RESOURCE_RATING_FK_BY_PATH_ID` (`REG_PATH_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_RATING_FK_BY_RATING_ID` (`REG_RATING_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_RATING_IND_BY_PATH_ID_AND_RESOURCE_NAME` (`REG_PATH_ID`,`REG_RESOURCE_NAME`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_RESOURCE_RATING_IND_BY_VERSION` (`REG_VERSION`,`REG_TENANT_ID`) USING HASH,
  CONSTRAINT `REG_RESOURCE_RATING_FK_BY_PATH_ID` FOREIGN KEY (`REG_PATH_ID`, `REG_TENANT_ID`) REFERENCES `REG_PATH` (`REG_PATH_ID`, `REG_TENANT_ID`),
  CONSTRAINT `REG_RESOURCE_RATING_FK_BY_RATING_ID` FOREIGN KEY (`REG_RATING_ID`, `REG_TENANT_ID`) REFERENCES `REG_RATING` (`REG_ID`, `REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_RESOURCE_RATING`
--

LOCK TABLES `REG_RESOURCE_RATING` WRITE;
/*!40000 ALTER TABLE `REG_RESOURCE_RATING` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_RESOURCE_RATING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_RESOURCE_TAG`
--

DROP TABLE IF EXISTS `REG_RESOURCE_TAG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_RESOURCE_TAG` (
  `REG_TAG_ID` int(11) NOT NULL,
  `REG_VERSION` int(11) DEFAULT NULL,
  `REG_PATH_ID` int(11) DEFAULT NULL,
  `REG_RESOURCE_NAME` varchar(256) DEFAULT NULL,
  `REG_TENANT_ID` int(11) DEFAULT '0',
  KEY `REG_RESOURCE_TAG_FK_BY_PATH_ID` (`REG_PATH_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_TAG_FK_BY_TAG_ID` (`REG_TAG_ID`,`REG_TENANT_ID`),
  KEY `REG_RESOURCE_TAG_IND_BY_PATH_ID_AND_RESOURCE_NAME` (`REG_PATH_ID`,`REG_RESOURCE_NAME`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_RESOURCE_TAG_IND_BY_VERSION` (`REG_VERSION`,`REG_TENANT_ID`) USING HASH,
  CONSTRAINT `REG_RESOURCE_TAG_FK_BY_PATH_ID` FOREIGN KEY (`REG_PATH_ID`, `REG_TENANT_ID`) REFERENCES `REG_PATH` (`REG_PATH_ID`, `REG_TENANT_ID`),
  CONSTRAINT `REG_RESOURCE_TAG_FK_BY_TAG_ID` FOREIGN KEY (`REG_TAG_ID`, `REG_TENANT_ID`) REFERENCES `REG_TAG` (`REG_ID`, `REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_RESOURCE_TAG`
--

LOCK TABLES `REG_RESOURCE_TAG` WRITE;
/*!40000 ALTER TABLE `REG_RESOURCE_TAG` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_RESOURCE_TAG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_SNAPSHOT`
--

DROP TABLE IF EXISTS `REG_SNAPSHOT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_SNAPSHOT` (
  `REG_SNAPSHOT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_PATH_ID` int(11) NOT NULL,
  `REG_RESOURCE_NAME` varchar(255) DEFAULT NULL,
  `REG_RESOURCE_VIDS` longblob NOT NULL,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_SNAPSHOT_ID`,`REG_TENANT_ID`),
  KEY `REG_SNAPSHOT_IND_BY_PATH_ID_AND_RESOURCE_NAME` (`REG_PATH_ID`,`REG_RESOURCE_NAME`,`REG_TENANT_ID`) USING HASH,
  KEY `REG_SNAPSHOT_FK_BY_PATH_ID` (`REG_PATH_ID`,`REG_TENANT_ID`),
  CONSTRAINT `REG_SNAPSHOT_FK_BY_PATH_ID` FOREIGN KEY (`REG_PATH_ID`, `REG_TENANT_ID`) REFERENCES `REG_PATH` (`REG_PATH_ID`, `REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_SNAPSHOT`
--

LOCK TABLES `REG_SNAPSHOT` WRITE;
/*!40000 ALTER TABLE `REG_SNAPSHOT` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_SNAPSHOT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REG_TAG`
--

DROP TABLE IF EXISTS `REG_TAG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REG_TAG` (
  `REG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REG_TAG_NAME` varchar(500) NOT NULL,
  `REG_USER_ID` varchar(31) NOT NULL,
  `REG_TAGGED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REG_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REG_ID`,`REG_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REG_TAG`
--

LOCK TABLES `REG_TAG` WRITE;
/*!40000 ALTER TABLE `REG_TAG` DISABLE KEYS */;
/*!40000 ALTER TABLE `REG_TAG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_ACCOUNT_MAPPING`
--

DROP TABLE IF EXISTS `UM_ACCOUNT_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_ACCOUNT_MAPPING` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_USER_NAME` varchar(255) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL,
  `UM_USER_STORE_DOMAIN` varchar(100) DEFAULT NULL,
  `UM_ACC_LINK_ID` int(11) NOT NULL,
  PRIMARY KEY (`UM_ID`),
  UNIQUE KEY `UM_USER_NAME` (`UM_USER_NAME`,`UM_TENANT_ID`,`UM_USER_STORE_DOMAIN`,`UM_ACC_LINK_ID`),
  KEY `UM_TENANT_ID` (`UM_TENANT_ID`),
  CONSTRAINT `UM_ACCOUNT_MAPPING_ibfk_1` FOREIGN KEY (`UM_TENANT_ID`) REFERENCES `UM_TENANT` (`UM_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_ACCOUNT_MAPPING`
--

LOCK TABLES `UM_ACCOUNT_MAPPING` WRITE;
/*!40000 ALTER TABLE `UM_ACCOUNT_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_ACCOUNT_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_CLAIM`
--

DROP TABLE IF EXISTS `UM_CLAIM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_CLAIM` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_DIALECT_ID` int(11) NOT NULL,
  `UM_CLAIM_URI` varchar(255) NOT NULL,
  `UM_DISPLAY_TAG` varchar(255) DEFAULT NULL,
  `UM_DESCRIPTION` varchar(255) DEFAULT NULL,
  `UM_MAPPED_ATTRIBUTE_DOMAIN` varchar(255) DEFAULT NULL,
  `UM_MAPPED_ATTRIBUTE` varchar(255) DEFAULT NULL,
  `UM_REG_EX` varchar(255) DEFAULT NULL,
  `UM_SUPPORTED` smallint(6) DEFAULT NULL,
  `UM_REQUIRED` smallint(6) DEFAULT NULL,
  `UM_DISPLAY_ORDER` int(11) DEFAULT NULL,
  `UM_CHECKED_ATTRIBUTE` smallint(6) DEFAULT NULL,
  `UM_READ_ONLY` smallint(6) DEFAULT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_DIALECT_ID` (`UM_DIALECT_ID`,`UM_CLAIM_URI`,`UM_TENANT_ID`,`UM_MAPPED_ATTRIBUTE_DOMAIN`),
  KEY `UM_DIALECT_ID_2` (`UM_DIALECT_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_CLAIM_ibfk_1` FOREIGN KEY (`UM_DIALECT_ID`, `UM_TENANT_ID`) REFERENCES `UM_DIALECT` (`UM_ID`, `UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_CLAIM`
--

LOCK TABLES `UM_CLAIM` WRITE;
/*!40000 ALTER TABLE `UM_CLAIM` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_CLAIM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_DIALECT`
--

DROP TABLE IF EXISTS `UM_DIALECT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_DIALECT` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_DIALECT_URI` varchar(255) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_DIALECT_URI` (`UM_DIALECT_URI`,`UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_DIALECT`
--

LOCK TABLES `UM_DIALECT` WRITE;
/*!40000 ALTER TABLE `UM_DIALECT` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_DIALECT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_DOMAIN`
--

DROP TABLE IF EXISTS `UM_DOMAIN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_DOMAIN` (
  `UM_DOMAIN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_DOMAIN_NAME` varchar(255) DEFAULT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_DOMAIN_ID`,`UM_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_DOMAIN`
--

LOCK TABLES `UM_DOMAIN` WRITE;
/*!40000 ALTER TABLE `UM_DOMAIN` DISABLE KEYS */;
INSERT INTO `UM_DOMAIN` VALUES (1,'PRIMARY',-1234),(2,'SYSTEM',-1234),(3,'INTERNAL',-1234),(4,'APPLICATION',-1234),(5,'WORKFLOW',-1234);
/*!40000 ALTER TABLE `UM_DOMAIN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_HYBRID_REMEMBER_ME`
--

DROP TABLE IF EXISTS `UM_HYBRID_REMEMBER_ME`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_HYBRID_REMEMBER_ME` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_USER_NAME` varchar(255) NOT NULL,
  `UM_COOKIE_VALUE` varchar(1024) DEFAULT NULL,
  `UM_CREATED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_HYBRID_REMEMBER_ME`
--

LOCK TABLES `UM_HYBRID_REMEMBER_ME` WRITE;
/*!40000 ALTER TABLE `UM_HYBRID_REMEMBER_ME` DISABLE KEYS */;
INSERT INTO `UM_HYBRID_REMEMBER_ME` VALUES (1,'admin','afb85bd2-6694-4b93-8c0a-bfb739eb636b','2017-12-11 08:50:48',-1234);
/*!40000 ALTER TABLE `UM_HYBRID_REMEMBER_ME` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_HYBRID_ROLE`
--

DROP TABLE IF EXISTS `UM_HYBRID_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_HYBRID_ROLE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_ROLE_NAME` varchar(255) DEFAULT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_HYBRID_ROLE`
--

LOCK TABLES `UM_HYBRID_ROLE` WRITE;
/*!40000 ALTER TABLE `UM_HYBRID_ROLE` DISABLE KEYS */;
INSERT INTO `UM_HYBRID_ROLE` VALUES (1,'everyone',-1234),(2,'publisher',-1234),(3,'creator',-1234),(4,'subscriber',-1234),(6,'Application/API_PUBLISHER',-1234),(7,'Application/API_STORE',-1234),(8,'Application/admin_TestApp_PRODUCTION',-1234);
/*!40000 ALTER TABLE `UM_HYBRID_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_HYBRID_USER_ROLE`
--

DROP TABLE IF EXISTS `UM_HYBRID_USER_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_HYBRID_USER_ROLE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_USER_NAME` varchar(255) DEFAULT NULL,
  `UM_ROLE_ID` int(11) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  `UM_DOMAIN_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_USER_NAME` (`UM_USER_NAME`,`UM_ROLE_ID`,`UM_TENANT_ID`,`UM_DOMAIN_ID`),
  KEY `UM_ROLE_ID` (`UM_ROLE_ID`,`UM_TENANT_ID`),
  KEY `UM_DOMAIN_ID` (`UM_DOMAIN_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_HYBRID_USER_ROLE_ibfk_1` FOREIGN KEY (`UM_ROLE_ID`, `UM_TENANT_ID`) REFERENCES `UM_HYBRID_ROLE` (`UM_ID`, `UM_TENANT_ID`) ON DELETE CASCADE,
  CONSTRAINT `UM_HYBRID_USER_ROLE_ibfk_2` FOREIGN KEY (`UM_DOMAIN_ID`, `UM_TENANT_ID`) REFERENCES `UM_DOMAIN` (`UM_DOMAIN_ID`, `UM_TENANT_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_HYBRID_USER_ROLE`
--

LOCK TABLES `UM_HYBRID_USER_ROLE` WRITE;
/*!40000 ALTER TABLE `UM_HYBRID_USER_ROLE` DISABLE KEYS */;
INSERT INTO `UM_HYBRID_USER_ROLE` VALUES (1,'admin',2,-1234,1),(2,'admin',3,-1234,1),(3,'admin',4,-1234,1),(5,'admin',6,-1234,1),(6,'admin',7,-1234,1),(7,'admin',8,-1234,1);
/*!40000 ALTER TABLE `UM_HYBRID_USER_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_MODULE`
--

DROP TABLE IF EXISTS `UM_MODULE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_MODULE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_MODULE_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`UM_ID`),
  UNIQUE KEY `UM_MODULE_NAME` (`UM_MODULE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_MODULE`
--

LOCK TABLES `UM_MODULE` WRITE;
/*!40000 ALTER TABLE `UM_MODULE` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_MODULE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_MODULE_ACTIONS`
--

DROP TABLE IF EXISTS `UM_MODULE_ACTIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_MODULE_ACTIONS` (
  `UM_ACTION` varchar(255) NOT NULL,
  `UM_MODULE_ID` int(11) NOT NULL,
  PRIMARY KEY (`UM_ACTION`,`UM_MODULE_ID`),
  KEY `UM_MODULE_ID` (`UM_MODULE_ID`),
  CONSTRAINT `UM_MODULE_ACTIONS_ibfk_1` FOREIGN KEY (`UM_MODULE_ID`) REFERENCES `UM_MODULE` (`UM_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_MODULE_ACTIONS`
--

LOCK TABLES `UM_MODULE_ACTIONS` WRITE;
/*!40000 ALTER TABLE `UM_MODULE_ACTIONS` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_MODULE_ACTIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_PERMISSION`
--

DROP TABLE IF EXISTS `UM_PERMISSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_PERMISSION` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_RESOURCE_ID` varchar(255) NOT NULL,
  `UM_ACTION` varchar(255) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  `UM_MODULE_ID` int(11) DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  KEY `INDEX_UM_PERMISSION_UM_RESOURCE_ID_UM_ACTION` (`UM_RESOURCE_ID`,`UM_ACTION`,`UM_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_PERMISSION`
--

LOCK TABLES `UM_PERMISSION` WRITE;
/*!40000 ALTER TABLE `UM_PERMISSION` DISABLE KEYS */;
INSERT INTO `UM_PERMISSION` VALUES (1,'/permission','ui.execute',-1234,0),(2,'/','http://www.wso2.org/projects/registry/actions/get',-1234,0),(3,'/','http://www.wso2.org/projects/registry/actions/add',-1234,0),(4,'/','http://www.wso2.org/projects/registry/actions/delete',-1234,0),(5,'/','authorize',-1234,0),(6,'/_system/governance/apimgt/externalstores/external-api-stores.xml','http://www.wso2.org/projects/registry/actions/get',-1234,0),(7,'/_system/governance/apimgt/statistics/ga-config.xml','http://www.wso2.org/projects/registry/actions/get',-1234,0),(8,'/_system/governance/apimgt/applicationdata/icons','http://www.wso2.org/projects/registry/actions/get',-1234,0),(9,'/permission/admin/login','ui.execute',-1234,0),(10,'/permission/admin/manage/api/publish','ui.execute',-1234,0),(11,'/_system/governance/repository/components/org.wso2.carbon.governance/lifecycles/history','http://www.wso2.org/projects/registry/actions/get',-1234,0),(12,'/_system/governance/repository/components/org.wso2.carbon.governance/lifecycles/history','http://www.wso2.org/projects/registry/actions/add',-1234,0),(13,'/_system/governance/repository/components/org.wso2.carbon.governance/lifecycles/history','http://www.wso2.org/projects/registry/actions/delete',-1234,0),(14,'/_system/governance/apimgt/applicationdata','http://www.wso2.org/projects/registry/actions/get',-1234,0),(15,'/_system/governance/apimgt/applicationdata','http://www.wso2.org/projects/registry/actions/add',-1234,0),(16,'/_system/governance/apimgt/applicationdata','http://www.wso2.org/projects/registry/actions/delete',-1234,0),(17,'/permission/admin/manage/api/create','ui.execute',-1234,0),(18,'/_system/governance/trunk','http://www.wso2.org/projects/registry/actions/get',-1234,0),(19,'/_system/governance/trunk','http://www.wso2.org/projects/registry/actions/add',-1234,0),(20,'/_system/governance/trunk','http://www.wso2.org/projects/registry/actions/delete',-1234,0),(21,'/permission/admin/configure/governance','ui.execute',-1234,0),(22,'/permission/admin/manage/resources/govern','ui.execute',-1234,0),(23,'/permission/admin/manage/api/subscribe','ui.execute',-1234,0),(24,'/_system/config/repository/components/org.wso2.carbon.captcha-images','http://www.wso2.org/projects/registry/actions/get',-1234,0),(25,'/_system/config/repository/components/org.wso2.carbon.captcha-images','http://www.wso2.org/projects/registry/actions/add',-1234,0),(26,'/_system/config/repository/components/org.wso2.carbon.captcha-images','http://www.wso2.org/projects/registry/actions/delete',-1234,0),(27,'/_system/config/repository/components/org.wso2.carbon.captcha-images','authorize',-1234,0),(28,'/_system/governance/repository/components/org.wso2.carbon.all-themes','http://www.wso2.org/projects/registry/actions/get',-1234,0),(29,'/_system/governance/repository/components/org.wso2.carbon.all-themes','http://www.wso2.org/projects/registry/actions/add',-1234,0),(30,'/_system/governance/repository/components/org.wso2.carbon.all-themes','http://www.wso2.org/projects/registry/actions/delete',-1234,0),(31,'/_system/governance/repository/components/org.wso2.carbon.all-themes','authorize',-1234,0),(32,'/_system/governance/forumtopics','http://www.wso2.org/projects/registry/actions/get',-1234,0),(33,'/_system/governance/forumtopics','http://www.wso2.org/projects/registry/actions/add',-1234,0),(34,'/_system/config/ues/dashboards/log-analyzer','read',-1234,0),(35,'event/queues/jms/tmp_172_18_0_1_44008_1','consume',-1234,0),(36,'event/topics/throttleData','subscribe',-1234,0),(37,'event/topics/throttleData','publish',-1234,0),(38,'event/topics/throttleData','changePermission',-1234,0),(39,'event/queues/jms/tmp_172_18_0_1_44720_1','consume',-1234,0),(40,'/_system/governance/repository/components/org.wso2.carbon.governance/types/api.rxt','http://www.wso2.org/projects/registry/actions/get',-1234,0),(41,'/_system/governance/repository/components/org.wso2.carbon.governance/types/provider.rxt','http://www.wso2.org/projects/registry/actions/get',-1234,0),(42,'/_system/governance/repository/components/org.wso2.carbon.governance/types/documentation.rxt','http://www.wso2.org/projects/registry/actions/get',-1234,0),(43,'/_system/governance/repository/components/org.wso2.carbon.governance','http://www.wso2.org/projects/registry/actions/get',-1234,0),(44,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/api','http://www.wso2.org/projects/registry/actions/get',-1234,0),(45,'/_system/governance/apimgt/applicationdata/provider/admin/TestMe/1.0.0/swagger.json','http://www.wso2.org/projects/registry/actions/get',-1234,0),(46,'/_system/governance/apimgt/applicationdata/icons/admin/TestMe/1.0.0/icon','http://www.wso2.org/projects/registry/actions/get',-1234,0);
/*!40000 ALTER TABLE `UM_PERMISSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_PROFILE_CONFIG`
--

DROP TABLE IF EXISTS `UM_PROFILE_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_PROFILE_CONFIG` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_DIALECT_ID` int(11) NOT NULL,
  `UM_PROFILE_NAME` varchar(255) DEFAULT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  KEY `UM_DIALECT_ID` (`UM_DIALECT_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_PROFILE_CONFIG_ibfk_1` FOREIGN KEY (`UM_DIALECT_ID`, `UM_TENANT_ID`) REFERENCES `UM_DIALECT` (`UM_ID`, `UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_PROFILE_CONFIG`
--

LOCK TABLES `UM_PROFILE_CONFIG` WRITE;
/*!40000 ALTER TABLE `UM_PROFILE_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_PROFILE_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_ROLE`
--

DROP TABLE IF EXISTS `UM_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_ROLE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_ROLE_NAME` varchar(255) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  `UM_SHARED_ROLE` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_ROLE_NAME` (`UM_ROLE_NAME`,`UM_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_ROLE`
--

LOCK TABLES `UM_ROLE` WRITE;
/*!40000 ALTER TABLE `UM_ROLE` DISABLE KEYS */;
INSERT INTO `UM_ROLE` VALUES (1,'admin',-1234,0);
/*!40000 ALTER TABLE `UM_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_ROLE_PERMISSION`
--

DROP TABLE IF EXISTS `UM_ROLE_PERMISSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_ROLE_PERMISSION` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_PERMISSION_ID` int(11) NOT NULL,
  `UM_ROLE_NAME` varchar(255) NOT NULL,
  `UM_IS_ALLOWED` smallint(6) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  `UM_DOMAIN_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_PERMISSION_ID` (`UM_PERMISSION_ID`,`UM_ROLE_NAME`,`UM_TENANT_ID`,`UM_DOMAIN_ID`),
  KEY `UM_PERMISSION_ID_2` (`UM_PERMISSION_ID`,`UM_TENANT_ID`),
  KEY `UM_DOMAIN_ID` (`UM_DOMAIN_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_ROLE_PERMISSION_ibfk_1` FOREIGN KEY (`UM_PERMISSION_ID`, `UM_TENANT_ID`) REFERENCES `UM_PERMISSION` (`UM_ID`, `UM_TENANT_ID`) ON DELETE CASCADE,
  CONSTRAINT `UM_ROLE_PERMISSION_ibfk_2` FOREIGN KEY (`UM_DOMAIN_ID`, `UM_TENANT_ID`) REFERENCES `UM_DOMAIN` (`UM_DOMAIN_ID`, `UM_TENANT_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_ROLE_PERMISSION`
--

LOCK TABLES `UM_ROLE_PERMISSION` WRITE;
/*!40000 ALTER TABLE `UM_ROLE_PERMISSION` DISABLE KEYS */;
INSERT INTO `UM_ROLE_PERMISSION` VALUES (1,1,'admin',1,-1234,1),(2,2,'admin',1,-1234,1),(3,3,'admin',1,-1234,1),(4,4,'admin',1,-1234,1),(5,5,'admin',1,-1234,1),(6,2,'everyone',1,-1234,3),(7,6,'everyone',0,-1234,3),(8,7,'everyone',0,-1234,3),(9,8,'wso2.anonymous.role',1,-1234,2),(10,9,'publisher',1,-1234,3),(11,10,'publisher',1,-1234,3),(12,11,'publisher',1,-1234,3),(13,12,'publisher',1,-1234,3),(14,13,'publisher',1,-1234,3),(15,14,'publisher',1,-1234,3),(16,15,'publisher',1,-1234,3),(17,16,'publisher',1,-1234,3),(18,9,'creator',1,-1234,3),(19,17,'creator',1,-1234,3),(20,11,'creator',1,-1234,3),(21,12,'creator',1,-1234,3),(22,13,'creator',1,-1234,3),(23,18,'creator',1,-1234,3),(24,19,'creator',1,-1234,3),(25,20,'creator',1,-1234,3),(26,14,'creator',1,-1234,3),(27,15,'creator',1,-1234,3),(28,16,'creator',1,-1234,3),(29,21,'creator',1,-1234,3),(30,22,'creator',1,-1234,3),(31,9,'subscriber',1,-1234,3),(32,23,'subscriber',1,-1234,3),(33,24,'wso2.anonymous.role',1,-1234,2),(34,25,'wso2.anonymous.role',0,-1234,2),(35,26,'wso2.anonymous.role',0,-1234,2),(36,27,'wso2.anonymous.role',0,-1234,2),(37,28,'wso2.anonymous.role',1,-1234,2),(38,29,'wso2.anonymous.role',0,-1234,2),(39,30,'wso2.anonymous.role',0,-1234,2),(40,31,'wso2.anonymous.role',0,-1234,2),(41,32,'wso2.anonymous.role',1,-1234,2),(42,32,'everyone',1,-1234,3),(43,33,'everyone',1,-1234,3),(44,34,'everyone',0,-1234,3),(45,35,'admin',1,-1234,1),(46,36,'admin',1,-1234,1),(47,37,'admin',1,-1234,1),(48,38,'admin',1,-1234,1),(49,39,'admin',1,-1234,1),(50,40,'wso2.anonymous.role',1,-1234,2),(51,41,'wso2.anonymous.role',1,-1234,2),(52,42,'wso2.anonymous.role',1,-1234,2),(53,43,'wso2.anonymous.role',1,-1234,2),(54,44,'everyone',1,-1234,3),(55,44,'wso2.anonymous.role',1,-1234,2),(56,45,'everyone',1,-1234,3),(57,45,'wso2.anonymous.role',1,-1234,2),(58,46,'everyone',1,-1234,3),(59,46,'wso2.anonymous.role',1,-1234,2);
/*!40000 ALTER TABLE `UM_ROLE_PERMISSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_SHARED_USER_ROLE`
--

DROP TABLE IF EXISTS `UM_SHARED_USER_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_SHARED_USER_ROLE` (
  `UM_ROLE_ID` int(11) NOT NULL,
  `UM_USER_ID` int(11) NOT NULL,
  `UM_USER_TENANT_ID` int(11) NOT NULL,
  `UM_ROLE_TENANT_ID` int(11) NOT NULL,
  UNIQUE KEY `UM_USER_ID` (`UM_USER_ID`,`UM_ROLE_ID`,`UM_USER_TENANT_ID`,`UM_ROLE_TENANT_ID`),
  KEY `UM_ROLE_ID` (`UM_ROLE_ID`,`UM_ROLE_TENANT_ID`),
  KEY `UM_USER_ID_2` (`UM_USER_ID`,`UM_USER_TENANT_ID`),
  CONSTRAINT `UM_SHARED_USER_ROLE_ibfk_1` FOREIGN KEY (`UM_ROLE_ID`, `UM_ROLE_TENANT_ID`) REFERENCES `UM_ROLE` (`UM_ID`, `UM_TENANT_ID`) ON DELETE CASCADE,
  CONSTRAINT `UM_SHARED_USER_ROLE_ibfk_2` FOREIGN KEY (`UM_USER_ID`, `UM_USER_TENANT_ID`) REFERENCES `UM_USER` (`UM_ID`, `UM_TENANT_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_SHARED_USER_ROLE`
--

LOCK TABLES `UM_SHARED_USER_ROLE` WRITE;
/*!40000 ALTER TABLE `UM_SHARED_USER_ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_SHARED_USER_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_SYSTEM_ROLE`
--

DROP TABLE IF EXISTS `UM_SYSTEM_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_SYSTEM_ROLE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_ROLE_NAME` varchar(255) DEFAULT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_SYSTEM_ROLE`
--

LOCK TABLES `UM_SYSTEM_ROLE` WRITE;
/*!40000 ALTER TABLE `UM_SYSTEM_ROLE` DISABLE KEYS */;
INSERT INTO `UM_SYSTEM_ROLE` VALUES (1,'wso2.anonymous.role',-1234);
/*!40000 ALTER TABLE `UM_SYSTEM_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_SYSTEM_USER`
--

DROP TABLE IF EXISTS `UM_SYSTEM_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_SYSTEM_USER` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_USER_NAME` varchar(255) NOT NULL,
  `UM_USER_PASSWORD` varchar(255) NOT NULL,
  `UM_SALT_VALUE` varchar(31) DEFAULT NULL,
  `UM_REQUIRE_CHANGE` tinyint(1) DEFAULT '0',
  `UM_CHANGED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_USER_NAME` (`UM_USER_NAME`,`UM_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_SYSTEM_USER`
--

LOCK TABLES `UM_SYSTEM_USER` WRITE;
/*!40000 ALTER TABLE `UM_SYSTEM_USER` DISABLE KEYS */;
INSERT INTO `UM_SYSTEM_USER` VALUES (1,'wso2.anonymous.user','7C030jo0ol9cLYg2vQAbNkAOMZq85AmXaYccFNK9cgg=','1ROzQczjSr8dyotk0qVqww==',0,'2017-12-11 08:08:14',-1234);
/*!40000 ALTER TABLE `UM_SYSTEM_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_SYSTEM_USER_ROLE`
--

DROP TABLE IF EXISTS `UM_SYSTEM_USER_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_SYSTEM_USER_ROLE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_USER_NAME` varchar(255) DEFAULT NULL,
  `UM_ROLE_ID` int(11) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_USER_NAME` (`UM_USER_NAME`,`UM_ROLE_ID`,`UM_TENANT_ID`),
  KEY `UM_ROLE_ID` (`UM_ROLE_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_SYSTEM_USER_ROLE_ibfk_1` FOREIGN KEY (`UM_ROLE_ID`, `UM_TENANT_ID`) REFERENCES `UM_SYSTEM_ROLE` (`UM_ID`, `UM_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_SYSTEM_USER_ROLE`
--

LOCK TABLES `UM_SYSTEM_USER_ROLE` WRITE;
/*!40000 ALTER TABLE `UM_SYSTEM_USER_ROLE` DISABLE KEYS */;
INSERT INTO `UM_SYSTEM_USER_ROLE` VALUES (1,'wso2.anonymous.user',1,-1234);
/*!40000 ALTER TABLE `UM_SYSTEM_USER_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_TENANT`
--

DROP TABLE IF EXISTS `UM_TENANT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_TENANT` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_DOMAIN_NAME` varchar(255) NOT NULL,
  `UM_EMAIL` varchar(255) DEFAULT NULL,
  `UM_ACTIVE` tinyint(1) DEFAULT '0',
  `UM_CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UM_USER_CONFIG` longblob,
  PRIMARY KEY (`UM_ID`),
  UNIQUE KEY `UM_DOMAIN_NAME` (`UM_DOMAIN_NAME`),
  UNIQUE KEY `INDEX_UM_TENANT_UM_DOMAIN_NAME` (`UM_DOMAIN_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_TENANT`
--

LOCK TABLES `UM_TENANT` WRITE;
/*!40000 ALTER TABLE `UM_TENANT` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_TENANT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_USER`
--

DROP TABLE IF EXISTS `UM_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_USER` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_USER_NAME` varchar(255) NOT NULL,
  `UM_USER_PASSWORD` varchar(255) NOT NULL,
  `UM_SALT_VALUE` varchar(31) DEFAULT NULL,
  `UM_REQUIRE_CHANGE` tinyint(1) DEFAULT '0',
  `UM_CHANGED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_USER_NAME` (`UM_USER_NAME`,`UM_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_USER`
--

LOCK TABLES `UM_USER` WRITE;
/*!40000 ALTER TABLE `UM_USER` DISABLE KEYS */;
INSERT INTO `UM_USER` VALUES (1,'admin','t56GJMdi7VJutzDLYIROROsNlicjHPdFXxIdJB3kOik=','Rx5AuWc8uXM5zavFT8af1g==',0,'2017-12-11 08:09:23',-1234);
/*!40000 ALTER TABLE `UM_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_USER_ATTRIBUTE`
--

DROP TABLE IF EXISTS `UM_USER_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_USER_ATTRIBUTE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_ATTR_NAME` varchar(255) NOT NULL,
  `UM_ATTR_VALUE` varchar(1024) DEFAULT NULL,
  `UM_PROFILE_ID` varchar(255) DEFAULT NULL,
  `UM_USER_ID` int(11) DEFAULT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  KEY `UM_USER_ID` (`UM_USER_ID`,`UM_TENANT_ID`),
  KEY `UM_USER_ID_INDEX` (`UM_USER_ID`),
  CONSTRAINT `UM_USER_ATTRIBUTE_ibfk_1` FOREIGN KEY (`UM_USER_ID`, `UM_TENANT_ID`) REFERENCES `UM_USER` (`UM_ID`, `UM_TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_USER_ATTRIBUTE`
--

LOCK TABLES `UM_USER_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `UM_USER_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_USER_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_USER_PERMISSION`
--

DROP TABLE IF EXISTS `UM_USER_PERMISSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_USER_PERMISSION` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_PERMISSION_ID` int(11) NOT NULL,
  `UM_USER_NAME` varchar(255) NOT NULL,
  `UM_IS_ALLOWED` smallint(6) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  KEY `UM_PERMISSION_ID` (`UM_PERMISSION_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_USER_PERMISSION_ibfk_1` FOREIGN KEY (`UM_PERMISSION_ID`, `UM_TENANT_ID`) REFERENCES `UM_PERMISSION` (`UM_ID`, `UM_TENANT_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_USER_PERMISSION`
--

LOCK TABLES `UM_USER_PERMISSION` WRITE;
/*!40000 ALTER TABLE `UM_USER_PERMISSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `UM_USER_PERMISSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UM_USER_ROLE`
--

DROP TABLE IF EXISTS `UM_USER_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UM_USER_ROLE` (
  `UM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UM_ROLE_ID` int(11) NOT NULL,
  `UM_USER_ID` int(11) NOT NULL,
  `UM_TENANT_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UM_ID`,`UM_TENANT_ID`),
  UNIQUE KEY `UM_USER_ID` (`UM_USER_ID`,`UM_ROLE_ID`,`UM_TENANT_ID`),
  KEY `UM_ROLE_ID` (`UM_ROLE_ID`,`UM_TENANT_ID`),
  KEY `UM_USER_ID_2` (`UM_USER_ID`,`UM_TENANT_ID`),
  CONSTRAINT `UM_USER_ROLE_ibfk_1` FOREIGN KEY (`UM_ROLE_ID`, `UM_TENANT_ID`) REFERENCES `UM_ROLE` (`UM_ID`, `UM_TENANT_ID`),
  CONSTRAINT `UM_USER_ROLE_ibfk_2` FOREIGN KEY (`UM_USER_ID`, `UM_TENANT_ID`) REFERENCES `UM_USER` (`UM_ID`, `UM_TENANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UM_USER_ROLE`
--

LOCK TABLES `UM_USER_ROLE` WRITE;
/*!40000 ALTER TABLE `UM_USER_ROLE` DISABLE KEYS */;
INSERT INTO `UM_USER_ROLE` VALUES (1,1,1,-1234);
/*!40000 ALTER TABLE `UM_USER_ROLE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-11 15:21:21
