<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 10/11/2021
  Time: 11:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create Product</title>
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
<h1>Create Product</h1>
<p>
    <c:if test='${requestScope["message"]!=null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/product">Back to Product List</a>
</p>
<form method="post">
    <fieldset>
        <legend>Product Information</legend>
        <table>
            <tr>
                <td>Name</td>
                <td><input type="text" name="name" placeholder="Nhập tên"></td>
            </tr>
            <tr>
                <td>Price</td>
                <td><input type="text" name="price" placeholder="Nhập giá tiền"></td>
            </tr>
            <tr>
                <td>Description</td>
                <td><input type="text" name="description" placeholder="Nhập mô tả"></td>
            </tr>
            <tr>
                <td>Producer</td>
                <td><input type="text" name="producer" placeholder="Nhập tên nhà sản xuất"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create Product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
