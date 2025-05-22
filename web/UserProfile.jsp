<%-- 
    Document   : UserProfile
    Created on : Mar 10, 2023, 11:21 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile</title>
        <link rel="icon" type="image/x-icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS976jsjfnyi4f3ixMCryQRGvwYrNng_R-ILP5GumD5edto50M-QOBFfhP3UuohoKzqqHs&usqp=CAU">
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

        </style>

    </head>
    <body>
        <div class="form">
            <center style="padding-right: 200px;">

            </center>

            <div>
                <h1>User Profile</h1>
                <div>
                    <a href="EditProfile.jsp"><input type="submit" Value="Edit" id="button"></a>
                    <a href="Home"><input type="submit" Value="Return home" id="button"></a>
                </div><br>
                <form action="#">
                    <label>Name:</label><br>
                    <input type="text" name="username" readonly="" class="input" value="${sessionScope.account.username}"><br>
                    <label>Address:</label><br>
                    <input type="text" name="address" readonly class="input" value="${sessionScope.account.address}"><br>
                    <label>Phone:</label><br>
                    <input type="text" nam="phone" readonly class="input" value="${sessionScope.account.phone}"><br>

                </form>
            </div>
        </div>
    </body>
</html>
