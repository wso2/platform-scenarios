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

package org.demo.customer.service;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import io.swagger.annotations.Info;
import io.swagger.annotations.License;
import io.swagger.annotations.SwaggerDefinition;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.demo.customer.bean.Customer;
import org.demo.customer.dao.CustomerDAO;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.sql.SQLException;
import java.util.List;

/**
 * This is the Microservice resource class.
 * See <a href="https://github.com/wso2/msf4j#getting-started">https://github.com/wso2/msf4j#getting-started</a>
 * for the usage of annotations.
 *
 * @since 0.1
 */
@Api(value = "customerservice")
@SwaggerDefinition(
        info = @Info(
                title = "Customer service Swagger Definition", version = "1.0",
                description = "The endpoint which is used to manage Customer",
                license = @License(name = "Apache 2.0", url = "http://www.apache.org/licenses/LICENSE-2.0")
        )
)
@Path("/")
public class CustomerService {

    private static final Log logger = LogFactory.getLog(CustomerService.class);

    @GET
    @Path("/")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(
            value = "Return all customers",
            notes = "Returns HTTP 404 if customer doesn't exist")
    @ApiResponses(value = {
            @ApiResponse(code = 200, message = ""),
            @ApiResponse(code = 404, message = "Particular exception message")})
    public Response getCustomer() {

        logger.info("HTTP GET / resource invoked");
        CustomerDAO customerDAO = new CustomerDAO();
        List<Customer> customers = customerDAO.getCustomers();

        if (customers != null) {
            return Response.status(Response.Status.OK).entity(customers).build();
        } else {
            return Response.status(Response.Status.NOT_FOUND).entity("").build();
        }
    }

    @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(
            value = "Return customer details for the give id ",
            notes = "Returns HTTP 404 if customer doesn't exist")
    @ApiResponses(value = {
            @ApiResponse(code = 200, message = "{id:808812,firstName:Johan,..}"),
            @ApiResponse(code = 404, message = "Particular exception message")})
    public Response getCustomer(@ApiParam(value = "id", required = true)
                                @PathParam("id") String id) {

        logger.info("HTTP GET /{id} resource invoked: [id] " + id);
        CustomerDAO customerDAO = new CustomerDAO();
        Customer customer = customerDAO.getCustomer(id);

        if (customer != null) {
            return Response.status(Response.Status.OK).entity(customer).build();
        } else {
            return Response.status(Response.Status.NOT_FOUND).build();
        }
    }

    @POST
    @Consumes("application/json")
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/")
    @ApiOperation(
            value = "Create customer and return customer with id.",
            notes = "Particular exception message")
    @ApiResponses(value = {
            @ApiResponse(code = 200, message = ""),
            @ApiResponse(code = 404, message = "Particular exception message")})
    public Response createCustomer(@ApiParam(value = "Application object", required = true) Customer customer)
            throws SQLException {

        logger.info("HTTP POST / resource invoked: \n" + customer);
        CustomerDAO customerDAO = new CustomerDAO();
        customerDAO.createCustomer(customer);
        logger.info("Customer created: " + customer);
        return Response.status(Response.Status.OK).entity(customer).build();
    }

}
