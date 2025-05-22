<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
        <link rel="icon" type="image/x-icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS976jsjfnyi4f3ixMCryQRGvwYrNng_R-ILP5GumD5edto50M-QOBFfhP3UuohoKzqqHs&usqp=CAU">   
    </head>
    <body>
        <jsp:include page="layout/adminheader.jsp"/>
        <div class="container">
            <h1>Dashboard</h1>
            <p style="font-size: 20px;"><b>Total product: </b>${totalProduct}</p>
            <p style="font-size: 20px;"><b>Total User: </b>${totalUser}</p>
            <p style="font-size: 20px;"><b>Average Price: </b>${avgPrice}</p>
            <p style="font-size: 20px;"><b>Min Price: </b>${minPrice}</p>
            <p style="font-size: 20px;"><b>Max Price: </b>${maxPrice}</p>
            <p style="font-size: 20px;"><b>Sum Discount: </b>${sumDiscount}</p>
    </body>
</html>
