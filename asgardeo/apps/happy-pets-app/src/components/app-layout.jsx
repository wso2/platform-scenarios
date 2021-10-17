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
import { Footer } from "./footer";
import { Header } from "./header";
import Loader from "react-loader-spinner";

export const AppLayout = (props) => {

    const {
        isAuthenticated,
        isLoading,
        children
    } = props;

    return (
        <div className="container">
            { isAuthenticated && <Header/> }
            <div className="main">
                {
                    !isLoading
                        ? children
                        : (
                            <Loader
                                type="BallTriangle"
                                color="#a660e4"
                                height={ 100 }
                                width={ 100 }
                                timeout={ 3000 }
                            />
                        )
                }
            </div>
            { isAuthenticated && <Footer/> }
        </div>
    );
};
