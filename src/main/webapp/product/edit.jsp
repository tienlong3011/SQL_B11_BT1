<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 10/11/2021
  Time: 13:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit Product</title>
</head>
<style>
    .message{
        color: green;
    }
</style>
<body>
<h1>Edit Product</h1>
<p>
    <c:if test='${requestScope["message"]!= null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/product">Back to Product list</a>
</p>
<form method="post">
<fieldset>
    <legend>Product Information</legend>
        <table border="1">
            <tr>
                <td>Name</td>
                <td><input type="text" name="name" value='${requestScope["product"].getName()}'></td>
            </tr>
            <tr>
                <td>Price</td>
                <td><input type="text" name="price" value='${requestScope["product"].getPrice()}'></td>
            </tr>
            <tr>
                <td>Description</td>
                <td><input type="text" name="description" value='${requestScope["product"].getDescription()}'></td>
            </tr>
            <tr>
                <td>Producer</td>
                <td><input type="text" name="producer" value='${requestScope["product"].getProducer()}'></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Edit Product"></td>
            </tr>
        </table>
</fieldset>
</form>
</body>
</html>
