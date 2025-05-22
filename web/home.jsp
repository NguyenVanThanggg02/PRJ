<%-- 
    Document   : home
    Created on : Mar 5, 2023, 11:18:25 PM
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

        <!-- header section ends -->

        <!-- home section starts  -->

        <section class="home" id="home">
            <div class="content">
                <h3>Blanket Shop Website</h3>
                <p>Chào mừng bạn tới Blanket Shop! Nơi có thể đem đến cho bạn những giấc ngủ ngon.</p>
                
            </div>
        </section>

        <!-- home section ends -->



        <!-- menu section starts  -->

        <section class="menu" id="menu">
            <h1 class="heading"> Sản phẩm Mới  </h1>
            <div class="box-container">
                <c:forEach var="p" items="${lp}">
                    <div class="box">
                        <img src="${p.getImg()}" alt="">
                        <h3><a href="ProductDetail?pid=${p.getId()}" style="color: white; text-decoration: none"  >${p.getName()}</a></h3>
                        <div class="price">$ ${p.getDiscount()} <span>${p.getPrice()}</span></div>
                        <a href="AddToCart?pid=${p.getId()}&quantity=1" class="btn"  onclick='addsuccess();'>Thêm vào giỏ hàng</a>
                    </div>
                </c:forEach>

            </div>
        </section>

        <!-- menu section ends -->

        <!-- products section starts  -->
        <section class="products" id="products">
            <h1 class="heading"> Best seler  </h1>
            <div class="box-container">
                <c:forEach var="p" items="${sp}">
                    <div class="box">

                        <div class="image" style="height: 200px;">
                            <img src="${p.getImg()}" style="height: 150px;" alt="">
                        </div>
                        <div class="content">
                            <h3><a href="ProductDetail?pid=${p.getId()}"  style="color: white; text-decoration: none"  >${p.getName()}</a></h3>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                            </div>
                            <div class="price">$ ${p.getDiscount()} <span>${p.getPrice()}</span></div>
                        </div>
                        <div class="icons">
                            <a href="AddToCart?pid=${p.getId()}&quantity=1" class="fas fa-shopping-cart" onclick='addsuccess();'></a>
                        </div>
                    </div>
                </c:forEach>

            </div>
        </section>
        <!-- products section end -->


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
