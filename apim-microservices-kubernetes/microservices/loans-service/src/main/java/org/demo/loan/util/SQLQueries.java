package org.demo.loan.util;

public final class SQLQueries {

    public final static String QUERY_INSERT_APPLICATION = "INSERT INTO LOAN_APPLICATION " +
            "(REFERENCE_NO, CUSTOMER_ID, TYPE, AMOUNT, PERIOD, STATUS) VALUES(?,?,?,?,?,?)";
    public final static String QUERY_CHECK_APPLICATION_STATUS = "SELECT STATUS FROM LOAN_APPLICATION " +
            "WHERE REFERENCE_NO=?";
    public final static String QUERY_GET_ALL_APPLICATION = "SELECT * FROM LOAN_APPLICATION";
    public final static String QUERY_CHECK_MAX_APPLICATIONID = "SELECT ID FROM LOAN_APPLICATION " +
            "ORDER BY ID DESC LIMIT 1;";
    public final static String QUERY_UPDATE_APPLICATION_STATUS = "UPDATE LOAN_APPLICATION SET STATUS=? " +
            "WHERE REFERENCE_NO=?";
}
