<%-- 
    Document   : home
    Created on : Mar 8, 2023, 12:05 PM
    Author     : admin
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
            <h1 class="heading"> <span>about</span> us </h1>
            <div class="row">

            </div>
        </section>
        <h1 class="heading" style="text-align: center;display: block;">  Danh sách sản phẩm </h1>
        <!<!-- search -->
        <section class="about" id="about">
            <div class="row" style="display: flex;justify-content: center;">
                <form method="get" action="ProductList">
                    <input style="padding: 5px;font-size: 20px; margin: 5px;" name="search" type="text" value="${param.search}" placeholder="search here">
                    <input style="padding: 5px;font-size: 20px; margin: 5px;" name="fromPrice" min="1" step="any"  value="${param.fromPrice}"  type="number" placeholder="Price from">
                    <input style="padding: 5px;font-size: 20px; margin: 5px;" name="toPrice" min="1" step="any" value="${param.toPrice}"  type="number" placeholder="Price to">
                    <button class="btn btn-primary">Search</button> 
                </form>
            </div>
        </section>

        <!-- menu section starts  -->

        <section class="menu" id="menu">
            <div class="box-container">
                <c:forEach var="p" items="${sp}">
                    <div class="box">
                        <img src="${p.getImg()}" alt="">
                        <h3><a href="ProductDetail?pid=${p.getId()}" style="color: white; text-decoration: none" >${p.getName()}</a></h3>
                        <div class="price">$ ${p.getDiscount()} <span>${p.getPrice()}</span></div>
                        <a href="AddToCart?pid=${p.getId()}&quantity=1"  onclick='addsuccess();' class="btn">Thêm vào giỏ hàng</a>
                    </div>
                </c:forEach>


            </div>
            <div class="box-container" style="display: block;margin-left: 46%; margin-top: 10px">
                <c:if test="${ index>1}">
                    <a href="ProductList?index=${ index-1}" style="color: white; font-weight: bold; font-size: 25px;" > 1 </a>
                </c:if>
                <a href="ProductList?index=${ index }" style="color: white; font-weight: bold; font-size: 25px;"> ${param.index==null?"1": index} </a>
                <c:if test="${ index<totalProduct/6}">
                    <a href="ProductList?index=${ index+1}" style="color: white; font-weight: bold; font-size: 25px; "> 2 </a>   
                </c:if>

            </div>
        </section>

        <!-- menu section ends -->


        <!-- footer section starts  -->
        <section class="footer">
            <div id="content">


            </div>
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
