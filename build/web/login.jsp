<%-- 
    Document   : Login
    Created on : Mar 6, 2023, 20:42:34 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Blanket Shop</title>

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="icon" type="image/x-icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS976jsjfnyi4f3ixMCryQRGvwYrNng_R-ILP5GumD5edto50M-QOBFfhP3UuohoKzqqHs&usqp=CAU">
        <style>
            .login-popup-heading>h4 {
                color: #258b47;
                font-size: 18px;
                line-height: 30px;
            }
            .new_reg_popup, .new_login_popup {
                border-radius: 2px;
                min-height: 332px;
                width: 500px;
                margin: 0px auto;
            }
            .login-popup-btn {
                background: #258b47;
                border: none;
                border-radius: 25px;
                color: #fff;
                display: block;
                font-size: 18px;
                height: 38px;
                line-height: 28px;
                margin: 20px auto 5px;
                width: 150px;
                -webkit-transition: all 700ms ease;
                -moz-transition: all 700ms ease;
                -ms-transition: all 700ms ease;
                -o-transition: all 700ms ease;
            }
            a{
                color: #258b47;
                font-size: 18px;
            }
        </style>

    </head>
    <body>
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >

        <div class="login-popup-wrap new_login_popup"> 
            <div class="login-popup-heading text-center">
                <h4><i class="fa fa-lock" aria-hidden="true"></i> Login </h4>                        
            </div>

            <form id="loginMember" role="form" action="login" method="post">
                <p class="text-danger">${mess}</p> <!--nhap sai se hien thi ra string mess -->
                
                <div class="form-group">                    
                    <input name="user" type="text" class="form-control" placeholder="Enter usename">
                </div>
                <div class="form-group">
                    <input name="pass" type="password" class="form-control" placeholder="Password">
                </div>
                <button type="submit" class="btn btn-default login-popup-btn" name="submit" value="1">Login</button>
            </form>
            <div class="text-center">Create Account??<a href="signup.jsp">click here</a></div>
        </div>
    </body>
</html>
