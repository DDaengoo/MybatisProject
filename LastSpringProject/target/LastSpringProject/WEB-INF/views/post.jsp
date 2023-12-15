<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Free Board</title>
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
        h4 {
            text-align: right;
            margin-right: 20px;
            color: #666;
        }
        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #b7ce63; /* Darker Green */
            color: #fff;
        }
        tr:nth-child(even) {
            background-color: #e6efc2; /* Lighter Green */
        }
        tr:hover {
            background-color: #f2f8dc; /* Hover Green */
        }
        a {
            text-decoration: none;
            color: #007bff;
        }
        button {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #4caf50; /* Green Button */
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #388e3c; /* Darker Green on Hover */
        }
    </style>
    <script>
        function delete_ok(id) {
            var a = confirm("정말로 삭제하겠습니까?");
            if (a) location.href = 'deleteok/' + id;
        }
    </script>
</head>
<body>
<h1>H.G.U.Music</h1>
<h4>Welcome</h4>
<table>
    <tr>
        <th>Seq</th>
        <th>Music Name</th>
        <th>Album Name</th>
        <th>Genre</th>
        <th>Singer</th>
        <th>Drop Date</th>
        <th>Evaluation</th>
        <th>Reg Date</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.seq}</td>
            <td>${u.musicname}</td>
            <td>${u.albumname}</td>
            <td>${u.genre}</td>
            <td>${u.singer}</td>
            <td>${u.dropdate}</td>
            <td>${u.evaluation}</td>
            <td>${u.regdate}</td>
            <td><a href="editform/${u.seq}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<button onclick="location.href='add'">Add New Post</button>
</body>
</html>