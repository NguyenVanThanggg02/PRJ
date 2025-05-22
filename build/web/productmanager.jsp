<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
        <link rel="icon" type="image/x-icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS976jsjfnyi4f3ixMCryQRGvwYrNng_R-ILP5GumD5edto50M-QOBFfhP3UuohoKzqqHs&usqp=CAU">
        <style>
            #button{
                color: white;
                background-color: #0061f2;
                padding: 10px 20px;
                border: 1px none black;
                border-radius: 5px;
            }
        </style>

    </head>

    <body>
        <jsp:include page="layout/adminheader.jsp"/>
        <h1>Product manager</h1>
        <div class="container">
            <a href="AddProduct" class="btn btn-primary">Add Product</a>

            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Image</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="p" items="${pl}">
                        <tr>
                            <td><a href="ProductDetailManager?id=${p.id}"> ${p.id}</a></td>
                            <td><a href="ProductDetailManager?id=${p.id}">${p.name}</a></td>
                            <td><img src="${p.img}" width="150px"></td>
                            <td>${p.quantity}</td>
                            <td>${p.getPrice()}$</td>
                            <td><a href="EditProduct?id=${p.id}"> Edit</a></td>
                            <td><a href="DeleteProduct?id=${p.id}"> Delete</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <div>
                <a href="Home" id="button" style="text-decoration: none;"> Return home </a>
            </div>
        </div>
    </body>
</html>
