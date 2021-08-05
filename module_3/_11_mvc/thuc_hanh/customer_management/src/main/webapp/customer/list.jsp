<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer list</title>
</head>
<body>
    <h1>Customers</h1>
    <p>
    <a href="/customers?action=create">Create new customer</a>
    </p>
    <table border="1">
        <tr>
            <td>Name</td>
            <td>Email</td>
            <td>Address</td>
            <td>Edit</td>
            <td>Delete</td>
        </tr>
        <c:forEach var="customer" items="${requestScope['customers']}">
        <tr>
            <td><a href="/customers?action=view&id=${customer.getId()}">${customer.getName()}</a></td>
            <td>${customer.getName()}</td>
            <td>${customer.getAddress()}</td>
            <td><a href="/customers?action=edit&id=${customer.getId()}">edit</a></td>
            <td><a href="/customers?action=delete&id=${customer.getId()}">delete</a></td>
        </tr>
        </c:forEach>
    </table>
</body>
</html>
