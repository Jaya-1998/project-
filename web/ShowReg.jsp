<%-- 
    Document   : ShowReg
    Created on : Aug 16, 2018, 4:21:10 PM
    Author     : Sam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Details</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        
            <style>
                .table .thead-dark th{
                    font-size: 14px;
                }
            </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="search.jsp"><i class="fa fa-home fa-3x" aria-hidden="true"></i></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
              <div class="navbar-nav ml-auto">
<!--                <a class="nav-item nav-link" href="Admin.jsp">Admin</a>-->

                <a class="nav-item nav-link" href="search.jsp">Home</a>
                <a class="nav-item nav-link" href="StudentReg.jsp">Student Registration</a>
                <a class="nav-item nav-link" href="ShowReg.jsp">Show Registered</a>
              </div>
            </div>
        </nav>
        <div class="container">
            <c:import url="controllerservlet?op=listregistration"       />
            <c:set var="myList" value="${requestScope.list}" />

            <table class="table table-bordered table-striped">
                <thead class="thead-dark">
                    <tr>
                        <th>id</th>
                        <th>Name</th>
                        <th>Address</th>
                        <th>Occupation</th>
                        <th>Technology</th>
                        <th>Company Name</th>
                        <th>Dob</th>
                        <th>Email</th>
                        <th>mob</th>
                        <th>Collagename</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="br" items='${myList}'>
                        <tr> 
                            <th scope="row"><c:out value="${br.id}" /></th>
                            <td><c:out value="${br.name}" /></td>
                            <td><c:out value="${br.address}" /></td>
                            <td><c:out value="${br.occupation}" /></td>
                            <td><c:out value="${br.technology}" /></td>
                            <td><c:out value="${br.companyname}" /></td>
                            <td><c:out value="${br.dob}" /></td>
                            <td><c:out value="${br.email}" /></td>
                            <td><c:out value="${br.mob}" /></td>

                            <td><c:out value="${br.collagename}" /></td>
                            <td><a href="controllerservlet?op=active&id=<c:out value="${br.id}" />&status=<c:out value="${br.status}" />"><c:out value="${br.status}" /></a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>


    </body>
</html>
