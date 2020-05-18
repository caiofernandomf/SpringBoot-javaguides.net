<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="EN">
<head>
    <link rel="stylesheet" type="text/css"
            href="webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
    <c:url value="/css/main.css" var="jstlCss" />
    <link href="${jstlCss}" rel="stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>
<body>
    <div class="container">
        <header>
           <h1>Spring MVC + JSP + JPA + Spring Boot 2</h1>
        </header>
        <div class="starter-template">
           <h1>Users List</h1>
            <table class="table table-striped table-dark table-hover  table-condensed table-bordered ">
                <caption>List of users</caption>
                <thead >
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="user" items="${users}" varStatus="i">
                   <tr>
                        <td>${user.id}</td>
                        <td>${user.name}</td>
                   </tr>
                 </c:forEach>
                </tbody>
            </table>
        </div>

    </div>
    <script type="text/javascript"
                src="webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</body>
</html>
