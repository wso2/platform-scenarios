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

package org.demo.customer.dao;

import org.demo.customer.bean.Customer;
import org.demo.customer.util.DatabaseUtil;
import org.demo.customer.util.SQLQueries;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDAO {

    private static final Logger logger = LoggerFactory.getLogger(CustomerDAO.class);

    /**
     * Get customers
     * @return Customers
     */
    public List<Customer> getCustomers() {
        Connection dbConnection = null;
        PreparedStatement prepStmt = null;
        ResultSet resultSet = null;
        try {
            dbConnection = DatabaseUtil.getDBConnection();
            prepStmt = dbConnection.prepareStatement(SQLQueries.QUERY_GET_CUSTOMERS);
            resultSet = prepStmt.executeQuery();
            List<Customer> customers = new ArrayList<>();
            while (resultSet.next()) {
                Customer customer = new Customer();
                customer.setId(resultSet.getInt("ID"));
                customer.setFname(resultSet.getString("FNAME"));
                customer.setLname(resultSet.getString("LNAME"));
                customer.setAddress(resultSet.getString("ADDRESS"));
                customer.setState(resultSet.getString("STATE"));
                customer.setPostalCode(resultSet.getString("POSTAL_CODE"));
                customer.setCountry(resultSet.getString("COUNTRY"));
                customers.add(customer);
            }
            return customers;
        } catch (SQLException e) {
            String errorMessage = "Error occurred while getting customer information";
            logger.error(errorMessage, e);
        } finally {
            DatabaseUtil.closeAllConnections(dbConnection, resultSet, prepStmt);
        }
        return null;
    }

    /**
     * Get Customer details
     * @param id - Customer ID
     * @return Customer
     */
    public Customer getCustomer(String id) {
        Connection dbConnection = null;
        PreparedStatement prepStmt = null;
        ResultSet resultSet = null;
        try {
            dbConnection = DatabaseUtil.getDBConnection();
            prepStmt = dbConnection.prepareStatement(SQLQueries.QUERY_GET_CUSTOMER);
            prepStmt.setString(1, id);
            resultSet = prepStmt.executeQuery();
            if (resultSet.next()) {
                Customer customer = new Customer();
                customer.setId(resultSet.getInt("ID"));
                customer.setFname(resultSet.getString("FNAME"));
                customer.setLname(resultSet.getString("LNAME"));
                customer.setAddress(resultSet.getString("ADDRESS"));
                customer.setState(resultSet.getString("STATE"));
                customer.setPostalCode(resultSet.getString("POSTAL_CODE"));
                customer.setCountry(resultSet.getString("COUNTRY"));
                return customer;
            }
        } catch (SQLException e) {
            String errorMessage = "Error occurred while getting customer information";
            logger.error(errorMessage, e);
        } finally {
            DatabaseUtil.closeAllConnections(dbConnection, resultSet, prepStmt);
        }
        return null;
    }

    /**
     * Create customer
     *
     * @param customer - Customer
     */
    public void createCustomer(Customer customer) throws SQLException {
        Connection dbConnection = null;
        PreparedStatement prepStmt = null;
        ResultSet resultSet = null;
        try {
            dbConnection = DatabaseUtil.getDBConnection();
            prepStmt = dbConnection.prepareStatement(SQLQueries.QUERY_INSERT_CUSTOMER, Statement.RETURN_GENERATED_KEYS);
            prepStmt.setString(1, customer.getFname());
            prepStmt.setString(2, customer.getLname());
            prepStmt.setString(3, customer.getAddress());
            prepStmt.setString(4, customer.getState());
            prepStmt.setString(5, customer.getPostalCode());
            prepStmt.setString(6, customer.getCountry());
            prepStmt.executeUpdate();
            ResultSet rs = prepStmt.getGeneratedKeys();
            rs.next();
            int id = rs.getInt(1);
            customer.setId(id);
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
