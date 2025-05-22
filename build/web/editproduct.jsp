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
        <script src="https://cdn.tiny.cloud/1/rtn0943z5vkgybouu9pqomwwti7brffhuyshp2ec4tn767ez/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>

        <script src="https://localhost/tinymce.min.js" referrerpolicy="origin"></script>
        <!--<script src="./ckeditor5-build-classic/ckeditor.js"></script>-->
        <script src="https://cdn.tiny.cloud/1/rtn0943z5vkgybouu9pqomwwti7brffhuyshp2ec4tn767ez/tinymce/6/plugins.min.js" referrerpolicy="origin"></script>
        <link rel="icon" type="image/x-icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS976jsjfnyi4f3ixMCryQRGvwYrNng_R-ILP5GumD5edto50M-QOBFfhP3UuohoKzqqHs&usqp=CAU">
    </head>
    <body>
        <jsp:include page="layout/adminheader.jsp"/>
        <div class="container">
            <h1>Edit Product </h1>
            <form method="post" action="EditProduct">
                <label>Id</label>
                <input  class="form-control"  type="text" value="${p.id}" name="id" >
                <label>Name</label>
                <input  class="form-control"  type="text" value="${p.name}" name="name" >
                <label>Quantity</label>
                <input  class="form-control"  type="text" value="${p.quantity}" name="quantity" >
                <label>Price</label>
                <input  class="form-control"  type="number" min="1" step="any" value="${p.getPrice()}" name="Price" >
                <label>Discount</label>
                <input  class="form-control"  type="number" min="1" step="any" value="${p.discount}" name="discount" >
                <label>Create Date</label>
                <input  class="form-control"  type="text" value="${p.createDate}" name="createDate" readonly="">
                <label>Image</label>
                <input  class="form-control"  type="text" value="${p.img}" name="img" >
                <label>Description</label>
                <textarea class="form-control" id="tiny" style="height: 300px;" name="desc" >
                    ${p.desc}
                </textarea>
                <button class="btn btn-primary" type="submit">Edit</button>
            </form>
        </div>
        <script>
            tinymce.init({
                selector: 'textarea#tiny'
            });
        </script>
    </body>
</html>
