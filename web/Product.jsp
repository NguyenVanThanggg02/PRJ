<%-- 
    Document   : home
    Created on : Oct 16, 2022, 11:18:25 PM
    Author     : 84379
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Blanket shop</title>
        <link rel="icon" type="image/x-icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS976jsjfnyi4f3ixMCryQRGvwYrNng_R-ILP5GumD5edto50M-QOBFfhP3UuohoKzqqHs&usqp=CAU">

        <!-- font awesome cdn link  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="CSS/css.css">

    </head>
    <body>
        <jsp:include page="layout/header.jsp"/>

        <!-- about section starts  -->
        <section class="about" id="about" style="margin: 15px;">
            <h1 class="heading"> </h1>

        </section>
        <h1 class="heading" style="text-align: center;display: block;">  Sản Phẩm </h1>
        <!-- about section ends -->
        <!-- about section starts  -->
        <section class="about" id="about">
            <div class="row" style="display: flex;justify-content: center;"></div>


        </section>

        <!-- menu section starts  -->

        <section class="menu" id="menu">
            <div class="box-container">
                <div class="row" style="display: flex; ">
                    <div class="col-md-5">
                        <img src="${p.getImg()}" width="500px;">
                    </div>
                    <div class="col-md-6">
                        <h3 style="text-align: center;color: white;font-size: 35px;" >${p.getName()}</h3>
                        <div class="price"  style="color: white;font-size: 30px;"><span style="text-decoration: none;">Price: $ ${p.getDiscount()}</span> - <span style="text-decoration: line-through;">$ ${p.getPrice()}</span></div>
                        <a href="AddToCart?pid=${p.getId()}&quantity=1"  style="color: white;"  class="btn">Thêm vào giỏ hàng</a>
                        <p style="color: white;font-size: 20px;">Quantity: ${p.quantity}</p>
                        <p  style="color: white;font-size: 20px;">Description:  ${p.desc}</p>
                    </div>

                </div>

            </div>
        </section>

        <!-- menu section ends -->



        <!-- footer section starts  -->
        <section class="footer">

            <div class="share">
                <a href="https://www.facebook.com/profile.php?id=100035668353133" class="fab fa-facebook-f"></a>

                <a href="https://www.instagram.com/justin.w_n/" class="fab fa-instagram"></a>

            </div>

            <div class="links">
                <div id="contact">
                    <i class="fas fa-phone-square-alt"></i> 
                    <span>Phone: </span> <br>
                    <span>+0587350847 </span> <br><br>
                </div>

                <div id="contact">
                    <i class="fas fa-envelope-square"></i> 
                    <span>E-mail: </span> <br>
                    <span>thangnvhe161412@fpt.edu.vn </span><br><br>
                </div>
            </div>

        </section>

        <!-- footer section ends -->

    </body>
</html>
