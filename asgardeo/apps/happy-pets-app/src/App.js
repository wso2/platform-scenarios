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

import "./App.css";
import { useAuthContext } from "@asgardeo/auth-react";
import React from "react";
import { AppLayout, DashboardView, LoginView } from "./components";

function App() {

    /** Use the authentication context hook from the  Asgardeo React SDK */
    const { state, signIn, signOut } = useAuthContext();

    return (
        <AppLayout
            isLoading={ state.isLoading }
            isAuthenticated={ state.isAuthenticated }
        >
            <LoginView
                isAuthenticated={ state.isAuthenticated }
                loginButton={
                    <button onClick={ () => signIn() }>Login</button>
                }
            />

            <DashboardView
                isAuthenticated={ state.isAuthenticated }
                username={ state.email || state.username }
                logoutButton={
                    <button onClick={ () => signOut() }>Logout</button>
                }
            />
        </AppLayout>
    );
}

export default App;
