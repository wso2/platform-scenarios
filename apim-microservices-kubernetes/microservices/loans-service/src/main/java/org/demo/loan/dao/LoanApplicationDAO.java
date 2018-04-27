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

package org.demo.loan.dao;

import org.demo.loan.ApplicationStatus;
import org.demo.loan.bean.LoanApplication;
import org.demo.loan.util.DatabaseUtil;
import org.demo.loan.util.SQLQueries;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class LoanApplicationDAO {

    private static final Logger logger = LoggerFactory.getLogger(LoanApplicationDAO.class);

    /**
     * Create application
     * @param application - Application
     * @return reference number
     */
    public String createLoanApplication(LoanApplication application) {
        Connection dbConnection = null;
        PreparedStatement prepStmt = null;
        ResultSet resultSet = null;
        try {
            dbConnection = DatabaseUtil.getDBConnection();
            prepStmt = dbConnection.prepareStatement(SQLQueries.QUERY_INSERT_APPLICATION);
            String referenceNumber = generateReferenceNumber(application.getType());
            prepStmt.setString(1, referenceNumber);
            prepStmt.setString(2, application.getCustomerId());
            prepStmt.setString(3, application.getType());
            prepStmt.setDouble(4, application.getAmount());
            prepStmt.setDouble(5, application.getPeriod());
            prepStmt.setString(6, ApplicationStatus.NEW.toString());
            prepStmt.executeUpdate();
            ResultSet rs = prepStmt.getGeneratedKeys();
            rs.next();
            int id = rs.getInt(1);
            application.setId(id);
            dbConnection.commit();
            return referenceNumber;
        } catch (SQLException e) {
            try {
                if(dbConnection != null) {
                    dbConnection.rollback();
                }
            } catch (SQLException e1) {
                logger.error("Error occurred while rolling back application create transaction");
            }
            String errorMessage = "Error occurred while creating application";
            logger.error(errorMessage, e);
        } finally {
            DatabaseUtil.closeAllConnections(dbConnection, resultSet, prepStmt);
        }
        return null;
    }

    private String generateReferenceNumber(String type) {
        int postfix = getMaxApplicationId() + 1;
        return type.toUpperCase() + Calendar.getInstance().get(Calendar.YEAR) + String.format("%0" + 6 + "d", postfix);
    }

    /**
     * Check application status
     * @return Highest Application Id
     */
    private int getMaxApplicationId() {
        Connection dbConnection = null;
        PreparedStatement prepStmt = null;
        ResultSet resultSet = null;
        int id = 0;
        try {
            dbConnection = DatabaseUtil.getDBConnection();
            prepStmt = dbConnection.prepareStatement(SQLQueries.QUERY_CHECK_MAX_APPLICATIONID);
            resultSet = prepStmt.executeQuery();
            if (resultSet.next()) {
                id = resultSet.getInt("ID");
            }
        } catch (SQLException e) {
            String errorMessage = "Error occurred while checking max application id";
            logger.error(errorMessage, e);
        } finally {
            DatabaseUtil.closeAllConnections(dbConnection, resultSet, prepStmt);
        }
        return id;
    }

    /**
     * Get all loan applications
     * @return Application list
     */
    public List<LoanApplication> getAllLaonApplications() {
        Connection dbConnection = null;
        PreparedStatement prepStmt = null;
        ResultSet resultSet = null;
        List<LoanApplication> applicationBeanList = new ArrayList<>();
        try {
            dbConnection = DatabaseUtil.getDBConnection();
            prepStmt = dbConnection.prepareStatement(SQLQueries.QUERY_GET_ALL_APPLICATION);
            resultSet = prepStmt.executeQuery();
            while (resultSet.next()) {
                LoanApplication applicationBean = new LoanApplication();
                applicationBean.setAmount(resultSet.getDouble("AMOUNT"));
                applicationBean.setCustomerId(resultSet.getString("CUSTOMER_ID"));
                applicationBean.setId(resultSet.getInt("ID"));
                applicationBean.setPeriod(resultSet.getDouble("PERIOD"));
                applicationBean.setReferenceNo(resultSet.getString("REFERENCE_NO"));
                applicationBean.setType(resultSet.getString("TYPE"));
                applicationBean.setStatus(resultSet.getString("STATUS"));
                applicationBeanList.add(applicationBean);
            }
        } catch (SQLException e) {
            String errorMessage = "Error occurred while getting all loan applications";
            logger.error(errorMessage, e);
        } finally {
            DatabaseUtil.closeAllConnections(dbConnection, resultSet, prepStmt);
        }
        return applicationBeanList;
    }

    /**
     * Check application status
     * @param referenceNumber - Application reference number
     * @return status
     */
    public String getApplicationStatus(String referenceNumber) {
        Connection dbConnection = null;
        PreparedStatement prepStmt = null;
        ResultSet resultSet = null;
        String status = null;
        try {
            dbConnection = DatabaseUtil.getDBConnection();
            prepStmt = dbConnection.prepareStatement(SQLQueries.QUERY_CHECK_APPLICATION_STATUS);
            prepStmt.setString(1, referenceNumber);
            resultSet = prepStmt.executeQuery();
            if (resultSet.next()) {
                status = resultSet.getString("STATUS");
            }
        } catch (SQLException e) {
            String errorMessage = "Error occurred while checking application status";
            logger.error(errorMessage, e);
        } finally {
            DatabaseUtil.closeAllConnections(dbConnection, resultSet, prepStmt);
        }
        return status;
    }

    /**
     * Update status
     * @param referenceNumber - Application reference number
     * @param status - Status
     * @return Status
     */
    public boolean UpdateStatus(String referenceNumber, String status) {
        Connection dbConnection = null;
        PreparedStatement prepStmt = null;
        ResultSet resultSet = null;
        try {
            dbConnection = DatabaseUtil.getDBConnection();
            prepStmt = dbConnection.prepareStatement(SQLQueries.QUERY_UPDATE_APPLICATION_STATUS);
            prepStmt.setString(1, status);
            prepStmt.setString(2, referenceNumber);
            prepStmt.executeUpdate();
            dbConnection.commit();
            return true;
        } catch (SQLException e) {
            try {
                if(dbConnection != null) {
                    dbConnection.rollback();
                }
            } catch (SQLException e1) {
                logger.error("Error occurred while rolling back application status update");
            }
            String errorMessage = "Error occurred while updating application status";
            logger.error(errorMessage, e);
        } finally {
            DatabaseUtil.closeAllConnections(dbConnection, resultSet, prepStmt);
        }
        return false;
    }
}
