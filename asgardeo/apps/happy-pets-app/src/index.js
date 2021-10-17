/**
 * Copyright (c) 2021, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
 *
 * WSO2 Inc. licenses this file to you under the Apache License,
 * Version 2.0 (the "License"); you may not use this file except
 * in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

import React from "react";
import { render } from "react-dom";
import "./index.css";
import "react-loader-spinner/dist/loader/css/react-spinner-loader.css";
import App from "./App";
import { AuthProvider } from "@asgardeo/auth-react";

const Index = () => (
    <AuthProvider
        config={ {
            signInRedirectURL: "<SIGN_IN_REDIRECT_URL>",
            signOutRedirectURL: "<SIGN_OUT_REDIRECT_URL>",
            clientID: "<CLIENT_ID>",
            serverOrigin: "<SERVER_ORIGIN>",
            scope: [ "openid","profile" ]
        } }
    >
        <App/>
    </AuthProvider>
);

render((<Index/>), document.getElementById("root"));
