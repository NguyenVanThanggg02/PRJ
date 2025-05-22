<%-- 
    Document   : EditProfile
    Created on : Mar 7, 2023, 12:18:25 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Profile</title>

        <style>
            body{
                margin-top: 40px;
                margin-left:5%;
            }

            .form{
                border: 1px dotted black;
                padding-bottom: 40px;
                padding-left: 20%;
                margin-right: 10%;
            }

            #button{
                color: white;
                background-color: #0061f2;
                padding: 10px 20px;
                border: 1px none black;
                border-radius: 5px;
            }

            #button:hover{
                background-color: graytext;
                cursor: pointer;
            }

            .input{
                padding: 7px 300px;
                border-radius: 6px;
                margin-bottom: 10px;
            }

            .avatar img{
                border-radius: 80%;
                border: 1px dotted grey;
                box-shadow:  0 4px 8px 0 rgba(0, 0, 0, 0.2);
                margin-top: 20px;
            }

            #avatar_button{
                border: 1px solid grey;
                padding: 8px 8px;
            }

        </style>

    </head>
    <body>
        <div class="form">
            <center style="padding-right: 200px;">
                
            </center>

            <div>
                <h1>Edit Profile</h1>
                <form action="EditProfile" method="post">
                    <label>Name:</label><br>
                    <input type="text" name="username"  class="input" value="${sessionScope.account.username}"><br>
                    <input type="hidden" name="id"  class="input" value="${sessionScope.account.id}"><br>
                    <label>Address:</label><br>
                    <input type="text" name="address"  class="input" value="${sessionScope.account.address}"><br>
                    <label>Phone:</label><br>
                    <input type="text" name="phone"  class="input" value="${sessionScope.account.phone}"><br>
                    
                    <div>
                        <input type="submit" Value="Update" id="button"> 
                        
                        <a href="Home" id="button" style="text-decoration: none;"> Return home </a>
                    </div>
                </form><br>

            </div>
        </div>
    </body>
</html>
