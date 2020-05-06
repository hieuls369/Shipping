<%-- 
    Document   : updateProduct
    Created on : Oct 24, 2019, 11:15:14 AM
    Author     : admin
--%>

<%@page import="Entity.Product"%>
<%@page import="Model.ProductDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <link rel="stylesheet" type="text/css" href="css\update.css">
    </head>
    <body>
        <div class="head">
            <div >
                <div class="logo">
                    <img src="images\4906c84c-08c8-4c89-bd9e-2c3742f1c615.png">
                </div>
            </div>
            <div style="padding-left: 70%">
                <ul class="menu-ctn">
                    <li style="background-color: teal">Admin</li>
                </ul>
            </div>
        </div>
        <div class="mid">   
            <div class="contact">
                <!-- <a class="addButton" href="">Add more</a> -->
                <h1>Update Product</h1>
                <%
                    String id = request.getParameter("id");
                    ProductDB pdb = new ProductDB();
                    Product p = pdb.getProductByID(id);
                %>
                <form action="updatePro" method="post">
                    <div class="inner-content">
                        <ul class="inner-left">
                            <li>ID <input type="text" readonly name="id" value="<%=p.getID() %>"></li>
                            <li>Tên món <input type="text" name="name" value="<%=p.getName() %>"></li>           
                            <li>Loại<input type="text" name="catID" value="<%=p.getCatID() %>"></li>
                            <li>Giá<input name="price" value="<%=p.getPrice() %>"></li>
                            <li>Số lượng<input name="quantity" value="<%=p.getQuantity() %>"></li>
                            <li>Trạng thái<input type="text" name="status" value="<%=p.getStatus() %>"></li>
                            <li>Ngày<input type="text" name="date" value="<%=p.getDate() %>"></li>
                            <li>Mô tả<textarea style="height: 50px; width: 100%; text-align: left;" type="textarea" name="describe" value="<%=p.getDescribe() %>"></textarea></li>
                            <input style="padding: 5px;" type="submit" value="Update">
                        </ul>
                        <ul class="inner-right">
                            <li style="float: left;"><input name="img" type="file" accept="images/CMC" onchange="document.getElementById('output').src = window.URL.createObjectURL(this.files[0])"></li>
                            <img style="" id="output" src="" width="500" height="400">

                        </ul>
                    </div>
                </form>
            </div>
            <div class="bot">
                More food more joy with <span>TI</span>
            </div>
        </div>


    </body>
</html>