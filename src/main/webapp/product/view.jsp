<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 10/11/2021
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Product</title>
</head>
<style>
    table{
        border: 1px;
    }
</style>
<body>
<h1>View Product</h1>
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
                <td><a href='/product?action=edit&id=${requestScope["product"].getId()}'><input type="submit" value="Edit Product"></a></td>
                <td><a href='/product?action=delete&id=${requestScope["product"].getId()}'><input type="submit" value="Delete Product"></a></td>
            </tr>
        </table>
</fieldset>
</body>
</html>
