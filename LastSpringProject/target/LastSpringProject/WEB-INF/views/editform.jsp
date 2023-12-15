<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@page import="com.example.dao.BoardDAO, com.example.bean.BoardVO"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>
    <style>
        body {
            font-family: 'Helvetica Neue', 'Arial', sans-serif;
            background-color: #d9ead3; /* Light Green */
            margin: 0;
            padding: 0;
        }
        h1 {
            text-align: center;
            margin-top: 20px;
            color: #333;
        }
        form {
            width: 50%;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
        }
        table tr td {
            padding: 10px 0;
        }
        input[type="text"],
        textarea {
            width: calc(100% - 20px);
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #7bae7f; /* Darker Green Border */
            border-radius: 4px;
        }
        textarea {
            resize: vertical;
            min-height: 100px;
        }
        input[type="submit"],
        input[type="button"] {
            padding: 10px 20px;
            background-color: #4caf50; /* Green Button */
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-right: 10px;
        }
        input[type="button"]:hover {
            background-color: #388e3c; /* Darker Green Button on Hover */
        }
    </style>
</head>
<body>

<h1>Edit Form</h1>

<form:form modelAttribute="boardVO" method="post" action="../editok">
    <form:hidden path="seq"/>
    <table id="edit">
        <tr><td>Music Name:</td><td><form:input path="musicname" /></td></tr>
        <tr><td>Album Name:</td><td><form:input path="albumname" /></td></tr>
        <tr><td>Genre:</td><td><form:input path="genre" /></td></tr>
        <tr><td>Singer:</td><td><form:input path="singer" /></td></tr>
        <tr><td>Drop Date:</td><td><form:input path="dropdate" /></td></tr>
        <tr><td>Evaluation:</td><td><form:textarea cols="50" rows="5" path="evaluation"/></td></tr>
    </table>
    <input type="submit" value="Edit"/>
    <input type="button" value="Cancel" onclick="history.back()"/>
</form:form>

</body>
</html>