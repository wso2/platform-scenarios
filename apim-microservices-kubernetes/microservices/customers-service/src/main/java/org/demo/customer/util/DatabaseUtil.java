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

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.tomcat.jdbc.pool.PoolProperties;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Database utility
 */
public class DatabaseUtil {

    private static final Log logger = LogFactory.getLog(DatabaseUtil.class);
    private static final DataSource dataSource = createDataSource();

    /**
     * Get database connection.
     * @return SQL connection
     * @throws SQLException SQL exception
     */
    public static Connection getDBConnection() throws SQLException {

        Connection dbConnection = dataSource.getConnection();
        dbConnection.setAutoCommit(false);
        if (dbConnection.getTransactionIsolation() != java.sql.Connection.TRANSACTION_READ_COMMITTED) {
            dbConnection.setTransactionIsolation(java.sql.Connection.TRANSACTION_READ_COMMITTED);
        }
        return dbConnection;
    }

    /**
     * Read JDBC properties via env variables and create datasource.
     * @return datasource
     */
    private static DataSource createDataSource() {

        String jdbcDriver = System.getenv("JDBC_DRIVER");
        String jdbcUrl = System.getenv("JDBC_URL");
        String dbUser = System.getenv("DB_USER");
        String dbPassword = System.getenv("DB_PASSWORD");

        PoolProperties poolProperties = new PoolProperties();
        poolProperties.setDriverClassName(jdbcDriver);
        poolProperties.setUrl(jdbcUrl);
        poolProperties.setUsername(dbUser);
        poolProperties.setPassword(dbPassword);
        poolProperties.setTestOnBorrow(true);
        poolProperties.setValidationQuery("SELECT 1");

        return new org.apache.tomcat.jdbc.pool.DataSource(poolProperties);
    }

    /**
     * Close DB connection
     * @param dbConnection sql connection
     */
    private static void closeConnection(Connection dbConnection) {

        if (dbConnection != null) {
            try {
                dbConnection.close();
            } catch (SQLException e) {
                logger.error("Database error. Could not close statement. Continuing with others. - " + e.getMessage(),
                        e);
            }
        }
    }

    /**
     * Close result set.
     * @param rs SQL result set
     */
    private static void closeResultSet(ResultSet rs) {

        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                logger.error("Database error. Could not close result set  - " + e.getMessage(), e);
            }
        }
    }

    /**
     * Close prepaed statement.
     * @param preparedStatement SQL prepared statement
     */
    private static void closeStatement(PreparedStatement preparedStatement) {

        if (preparedStatement != null) {
            try {
                preparedStatement.close();
            } catch (SQLException e) {
                logger.error("Database error. Could not close statement. Continuing with others. - " + e.getMessage(),
                        e);
            }
        }
    }

    /**
     * Close number of prepared statement.
     * @param prepStmts all prepared statements
     */
    private static void closeStatements(PreparedStatement... prepStmts) {

        if (prepStmts != null && prepStmts.length > 0) {
            for (PreparedStatement stmt : prepStmts) {
                closeStatement(stmt);
            }
        }
    }

    /**
     * Close all sql connections and prepared statements
     * @param dbConnection sql connection
     * @param prepStmts prepared statements
     */
    public static void closeAllConnections(Connection dbConnection, PreparedStatement... prepStmts) {

        closeStatements(prepStmts);
        closeConnection(dbConnection);
    }

    /**
     * Close all sql connections, result set and prepared statements
     * @param dbConnection sql connection
     * @param rs result set
     * @param prepStmts all prepared statements
     */
    public static void closeAllConnections(Connection dbConnection, ResultSet rs, PreparedStatement... prepStmts) {

        closeResultSet(rs);
        closeStatements(prepStmts);
        closeConnection(dbConnection);
    }

    public static void closeAllConnections(Connection dbConnection, ResultSet rs1, ResultSet rs2,
            PreparedStatement... prepStmts) {

        closeResultSet(rs1);
        closeResultSet(rs1);
        closeStatements(prepStmts);
        closeConnection(dbConnection);
    }
}