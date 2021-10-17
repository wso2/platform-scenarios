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
import HappyPetPaw from "../assets/images/paw.svg";
import AsgardeoLogo from "../assets/images/asgardeo-logo.svg";

export const LoginView = (props) => {

    const {
        isAuthenticated,
        loginButton
    } = props;

    if (isAuthenticated === true) {
        return null;
    }

    return (
        <div className="login-card-wrapper">
            <h1>Insure your Pet's Health</h1>
            <h2>Happy pet, happy life</h2>
            <div className="card login-card">
                <img alt="" className="happy-pet-logo" src={ HappyPetPaw }/>
                {
                    isAuthenticated !== undefined
                        ? (
                            <React.Fragment>
                                <h3>Login to your Account</h3>
                                <p className="login-helper-text">
                                    Click on the button bellow login to the account using{ " " }
                                    <img alt="" className="asgardeo-logo" src={ AsgardeoLogo }/>
                                </p>
                                { loginButton }
                            </React.Fragment>
                        )
                        : (
                            <React.Fragment>
                                <h3>No Authentication provider configured</h3>
                            </React.Fragment>
                        )
                }
            </div>
        </div>
    );
};
