<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Login Page</title>
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: #61b15a; /* Green Background Color */
      margin: 0;
      padding: 0;
      color: #fff;
    }
    .container {
      width: 100%;
      text-align: center;
      padding-top: 50px;
    }
    img {
      display: block;
      margin: 0 auto;
      max-width: 100%;
      height: auto;
      border-radius: 50%;
      box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
    }
    form {
      margin-top: 20px;
      background-color: #ffffffcc; /* Semi-transparent white background */
      padding: 30px;
      border-radius: 8px;
      box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.5);
      display: inline-block;
    }
    label {
      display: inline-block;
      width: 100px;
      text-align: right;
      margin-right: 10px;
      font-weight: bold;
      color: #333;
    }
    input[type='text'], input[type='password'] {
      padding: 10px;
      margin: 10px 0;
      border: 1px solid #888;
      border-radius: 4px;
      background-color: #f0f0f0; /* Light gray input background */
      color: #333;
    }
    button[type='submit'] {
      margin-top: 20px;
      padding: 12px 24px;
      background-color: #4CAF50; /* Green Button */
      color: white;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      font-size: 16px;
    }
    button[type='submit']:hover {
      background-color: #45a049; /* Darker Green on Hover */
    }
  </style>
</head>
<body>
<div class="container">
  <img src="../img/dog.jpg" height="150">
  <form method="post" action="loginOk">
    <div><label>User ID:</label><input type='text' name='userid' /></div>
    <div><label>Password:</label><input type='password' name='password' /></div>
    <button type='submit'>Login</button>
  </form>
</div>
</body>
</html>