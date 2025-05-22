<%-- 



    Document   : home
    Created on : Mar 10, 2023, 13:38:07 PM
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
        <!-- CSS only -->
        <style>
            td,tr,th,h1,a{
                color: white;
                text-decoration: none;
                font-size: 22px;
            }
            td{
                padding: 5px;
            }
        </style>
    </head>
    <body>
        <jsp:include page="layout/header.jsp"/>

        <!-- header section ends -->


        <!-- home section ends -->

        <!-- about section starts  -->
        <section class="about" id="about" style="margin: 15px;">
            <h1 class="heading"> <span>about</span> us </h1>
            <div class="row">

            </div>
        </section>
        <h1 class="heading" style="text-align: center;display: block;"> Giỏ hàng </h1>
        <!-- about section ends -->
        <!-- about section starts  -->
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
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <table class="shop_table cart-form" style="width: 100%">
                    <thead>
                        <tr>
                            <th >Name</th>
                            <th class="product-name">Img</th>
                            <th class="product-price">Price</th>
                            <th class="product-quantity">Quantity</th>
                            <th class="product-subtotal">Total</th>
                            <th class="product-subtotal">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="cart" items="${sessionScope['cart'].getItems()}">
                            <tr class="cart_item">
                                <td >
                                    <a href="#">${cart.getProduct().getName()}</a>
                                </td>
                                <td class="product-thumbnail" data-title="Product Name">
                                    <a class="prd-thumb" href="#">
                                        <figure><img width="113" height="113" src="${cart.getProduct().getImg()}" alt="shipping cart"></figure>
                                    </a>
                                </td>

                                <td class="product-price" data-title="Price">
                                    <div class="price price-contain">
                                        <ins><span class="price-amount"><span class="currencySymbol">$</span>${cart.getProduct().getPrice()}</span></ins>
                                    </div>
                                </td>
                                <td class="product-quantity" data-title="Quantity">
                                    <div class="quantity-box type1">
                                        <div class="qty-input">
                                            <input type="text" name="qty12554" value="${cart.getQuantity()}">
                                        </div>
                                    </div>
                                </td>
                                <td class="product-subtotal" data-title="Total">
                                    <div class="price price-contain">
                                        <ins><span class="price-amount"><span class="currencySymbol">$</span>${cart.getProduct().getPrice()*cart.getQuantity()}</span></ins>
                                    </div>
                                </td>
                                <td class="product-subtotal" data-title="Total">
                                    <div class="action">
                                        <a href="./deletecart?pid=${cart.getProduct().getId()}"style="color: red; font-size: 40px;" class="remove">Delete</a>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>Tổng giá: ${sessionScope.cart.getTotalBill()}</td>
                            </tr>
                        </c:forEach>

                        <tr class="cart_item wrap-buttons">
                            <td class="wrap-btn-control" colspan="4">
                                <a class="btn back-to-shop" href="./Home" style="background-color: window">Back to Shop</a>
                            </td>
                            <td class="wrap-btn-control" colspan="2">
                                <a class="btn back-to-shop" href="./Checkout" style="background-color:window">Checkout</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
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
