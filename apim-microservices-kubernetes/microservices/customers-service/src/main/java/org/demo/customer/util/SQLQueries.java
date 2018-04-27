/*
 * Copyright (c) 2017, WSO2 Inc. (http://wso2.com) All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.demo.customer.util;

public final class SQLQueries {

    public final static String QUERY_GET_CUSTOMERS = "SELECT * FROM CUSTOMER";
    public final static String QUERY_GET_CUSTOMER = "SELECT * FROM CUSTOMER WHERE ID = ?";
    public final static String QUERY_INSERT_CUSTOMER = "INSERT INTO CUSTOMER (FNAME, LNAME, ADDRESS, STATE, POSTAL_CODE, " +
            "COUNTRY) VALUES (?, ?, ?, ?, ?, ?)";

}
