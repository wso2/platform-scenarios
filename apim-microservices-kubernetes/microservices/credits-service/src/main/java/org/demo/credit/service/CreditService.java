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

package org.demo.credit.service;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import io.swagger.annotations.Info;
import io.swagger.annotations.License;
import io.swagger.annotations.SwaggerDefinition;
import org.demo.credit.bean.CustomerCredit;
import org.demo.credit.bean.TotalCredit;
import org.demo.credit.dao.CreditDAO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.sql.SQLException;

/**
 * This is the Microservice resource class.
 * See <a href="https://github.com/wso2/msf4j#getting-started">https://github.com/wso2/msf4j#getting-started</a>
 * for the usage of annotations.
 *
 * @since 0.1
 */
@Api(value = "creditservice")
@SwaggerDefinition(
        info = @Info(
                title = "Credit service Swagger Definition", version = "1.0",
                description = "The endpoint which is used to manage credit of a user",
                license = @License(name = "Apache 2.0", url = "http://www.apache.org/licenses/LICENSE-2.0")
        )
)
@Path("/")
public class CreditService {

    private static final Logger logger = LoggerFactory.getLogger(CreditService.class);

    @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(
            value = "Return total credit amount of customer",
            notes = "Returns HTTP 500 if any internal error")
    @ApiResponses(value = {
            @ApiResponse(code = 200, message = "{outstandingBalance:200.00}"),
            @ApiResponse(code = 500, message = "Particular exception message")})
    public Response getTotalCreditAmount(@ApiParam(value = "id", required = true)
                                          @PathParam("id") String id) throws SQLException {

        logger.info("HTTP GET /{id} resource invoked: [id] " + id);
        CreditDAO creditDAO = new CreditDAO();
        double totalCreditAmount = creditDAO.getTotalCreditAmount(id);

        TotalCredit totalCredit = new TotalCredit();
        totalCredit.setTotalCreditAmount(totalCreditAmount);
        logger.info("Total credit amount: " + totalCreditAmount);
        return Response.status(Response.Status.OK).entity(totalCredit).build();
    }

    @POST
    @Consumes("application/json")
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/")
    @ApiOperation(
            value = "Create customer credit",
            notes = "Returns HTTP 500 if any internal error")
    @ApiResponses(value = {
            @ApiResponse(code = 200, message = ""),
            @ApiResponse(code = 500, message = "Particular exception message")})
    public Response create(@ApiParam(value = "Application object", required = true) CustomerCredit customerCredit)
            throws SQLException {

        logger.info("HTTP POST / resource invoked: \n" + customerCredit);
        CreditDAO creditDAO = new CreditDAO();
        creditDAO.createCustomerCredit(customerCredit);
        logger.info("Customer credit added: " + customerCredit);
        return Response.status(Response.Status.OK).build();
    }
}

