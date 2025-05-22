<!-- header section starts  -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<header class="header">
    
    <a href="Home" class="logo">
        <img src="images/logo.png" alt="">
    </a>

    <nav class="navbar">
        <a href="Home">home</a>

        <a href="ProductList">Product list</a>

        <c:if test="${sessionScope.account == null}">
            <a href="login.jsp">Login</a>
        </c:if>
        <c:if test="${sessionScope.account.role}">
            <a href="Dashboard">Manage</a>
        </c:if>
    </nav>

    <div class="icons">
        <a href="Profile"><div class="fas fa-user-alt" style='color: white; weight: 25px; height:25px'></div></a>               
        <a href="ViewCart"><div class="fas fa-shopping-cart" id="cart-btn"></div></a> 
            <c:if test="${sessionScope.account != null}">
            <a href="logout"><div class='fas fa-sign-out-alt' style='color: #666666'></div></a>
            </c:if>
    </div>


</header>
