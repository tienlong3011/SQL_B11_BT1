<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 10/11/2021
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Delete Product</title>
</head>
<style>
    .message{
        color: green;
    }
    table{
        border: 1px;
    }
</style>
<body>
<h1>Delete Product</h1>
<p>
    <a href="/product">Back to Product list</a>
</p>
<h3>Are you sure ?</h3>
<form method="post">
<fieldset>
    <legend>Product Information</legend>
        <table>
            <tr>
                <td>Name:</td>
                <td>${requestScope["product"].getName()}</td>
            </tr>
            <tr>
                <td>Price:</td>
                <td>${requestScope["product"].getPrice()}</td>
            </tr>
            <tr>
                <td>Description:</td>
                <td>${requestScope["product"].getDescription()}</td>
            </tr>
            <tr>
                <td>Producer:</td>
                <td>${requestScope["product"].getProducer()}</td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Delete Product"></td>
            </tr>
        </table>

</fieldset>
</form>
</body>
</html>
