<%-- 
    Document   : index
    Created on : Oct 24, 2020, 3:45:25 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login</title>
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="box">
                <img class="avatar" src="img/r.png">
                <h1>Login Account</h1>
                <form action="LoginServlet" method="post">
                    <p>Email</p>
                    <input type="text" placeholder="Email" name="email" required>
                    <p>Password</p>
                    <input type="password" placeholder="Password" name="password" required>
                    <input type="submit" value="Login">
                    <a href="register.jsp">Create New Account</a>
                </form>
            </div>
        </div>
    </body>
</html>
