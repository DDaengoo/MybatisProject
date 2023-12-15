<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New Post</title>
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
        button {
            padding: 10px 20px;
            background-color: #4caf50; /* Green Button */
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button[type="submit"] {
            margin-right: 10px;
            background-color: #388e3c; /* Darker Green Button */
        }
        button[type="button"] {
            background-color: #d32f2f; /* Red Button */
        }
        button:hover {
            opacity: 0.8;
        }
    </style>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
    <table>
        <tr><td>Music Name:</td><td><input type="text" name="musicname"/></td></tr>
        <tr><td>Album Name:</td><td><input type="text" name="albumname"/></td></tr>
        <tr><td>Genre:</td><td><input type="text" name="genre"/></td></tr>
        <tr><td>Singer:</td><td><input type="text" name="singer"/></td></tr>
        <tr><td>Drop Date:</td><td><input type="text" name="dropdate"/></td></tr>
        <tr><td>Evaluation:</td><td><textarea cols="50" rows="5" name="evaluation"></textarea></td></tr>
    </table>
    <button type="button" onclick="location.href='list'">View List</button>
    <button type="submit">Submit</button>
</form>

</body>
</html>