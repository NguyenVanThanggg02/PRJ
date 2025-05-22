<%-- 
    Document   : SignIn
    Created on : Mar 6, 2023, 22:43:23 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Account Coffee Shop</title>

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <link rel="icon" type="image/x-icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS976jsjfnyi4f3ixMCryQRGvwYrNng_R-ILP5GumD5edto50M-QOBFfhP3UuohoKzqqHs&usqp=CAU">
        <style>
            form {
                margin: 0px 10px;
            }

            h2 {
                margin-top: 2px;
                margin-bottom: 2px;
            }

            .container {
                max-width: 360px;
            }

            .divider {
                text-align: center;
                margin-top: 20px;
                margin-bottom: 5px;
            }

            .divider hr {
                margin: 7px 0px;
                width: 35%;
            }

            .left {
                float: left;
            }

            .right {
                float: right;
            }

        </style>
    </head>
    <body  onload="generate()">
        <div class="container">
            <div class="row">
                <div class="panel panel-primary">
                    <div class="panel-body">
                        <form method="post" action="signup" role="form">
                            <div class="form-group">
                                <h2>Create account</h2>
                            </div>

                            <div class="form-group">
                                <label  class="control-label" for="signupName">Username</label>
                                <input name="user" id="signupName" type="text" maxlength="50" class="form-control">
                            </div>


                            <div class="form-group">
                                <label  class="control-label" for="signupPassword">Password</label>
                                <input name="pass" id="signupPassword" type="password" maxlength="25" class="form-control" placeholder="enter your password" length="40">
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="signupPasswordagain">Re Password</label>
                                <input name="repass" id="signupPasswordagain" type="password" maxlength="25" class="form-control">
                            </div>
                            <div class="form-group">
                                <label class="control-label">Address</label>
                                <input name="address" id="signupAddress" type="text" maxlength="50" class="form-control">
                            </div>
                            <div class="form-group">
                                <label class="control-label">Phone</label>
                                <input name="phone" id="signupAddress" type="text"  class="form-control">
                            </div>


                            <div style="  font-weight: 400;user-select: none; font-family:impact; margin: 15px; padding: 10px; font-size: 20px;background-color: white;width: 150px;text-align: center; display: inline;" id="image"  selectable="False">
                            </div>






                            <div class="form-group">
                                <button id="signupSubmit" type="submit" >Create your account</button>
                            </div>

                            <hr>
                            <p></p>Already have an account? <a href="login.jsp">Login</a></p>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
