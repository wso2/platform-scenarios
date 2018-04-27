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

package org.demo.credit.dao;

import org.demo.credit.bean.CustomerCredit;
import org.demo.credit.util.DatabaseUtil;
import org.demo.credit.util.SQLQueries;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class CreditDAO {

    private static final Logger logger = LoggerFactory.getLogger(CreditDAO.class);

    /**
     * Get customer's total credit amount
     *
     * @param customerId - Customer Id
     * @return - Total credit amount
     */
    public double getTotalCreditAmount(String customerId) throws SQLException {
        Connection dbConnection = null;
        PreparedStatement prepStmt = null;
        ResultSet resultSet = null;
        double totalCreditAmount = 0;
        try {
            dbConnection = DatabaseUtil.getDBConnection();
            prepStmt = dbConnection.prepareStatement(SQLQueries.QUERY_GET_CUSTOMER_CREDIT_AMOUNT);
            prepStmt.setString(1, customerId);
            resultSet = prepStmt.executeQuery();
            while (resultSet.next()) {
                totalCreditAmount += resultSet.getDouble("AMOUNT");
            }
            return totalCreditAmount;
        } catch (SQLException e) {
            String errorMessage = "Error occurred while getting customer's total credit amount";
            logger.error(errorMessage, e);
            throw e;
        } finally {
            DatabaseUtil.closeAllConnections(dbConnection, resultSet, prepStmt);
        }
    }

    /**
     * Create customer credit record
     *
     * @param customerCredit - Customer credit
     */
    public void createCustomerCredit(CustomerCredit customerCredit) throws SQLException {
        Connection dbConnection = null;
        PreparedStatement prepStmt = null;
        ResultSet resultSet = null;
        try {
            dbConnection = DatabaseUtil.getDBConnection();
            prepStmt = dbConnection.prepareStatement(SQLQueries.QUERY_INSERT_CUSTOMER_CREDIT, Statement.RETURN_GENERATED_KEYS);
            prepStmt.setString(1, customerCredit.getCustomerId());
            prepStmt.setString(2, customerCredit.getReferenceNumber());
            prepStmt.setDouble(3, customerCredit.getAmount());
            prepStmt.executeUpdate();
            ResultSet rs = prepStmt.getGeneratedKeys();
            rs.next();
            int id = rs.getInt(1);
            customerCredit.setId(id);
            dbConnection.commit();
        } catch (SQLException e) {
            try {
                if (dbConnection != null) {
                    dbConnection.rollback();
                }
            } catch (SQLException e1) {
                logger.error("Error occurred while rolling back customer credit create transaction");
            }
            String errorMessage = "Error occurred while creating customer credit";
            logger.error(errorMessage, e);
            throw e;
        } finally {
            DatabaseUtil.closeAllConnections(dbConnection, resultSet, prepStmt);
        }
    }
}
