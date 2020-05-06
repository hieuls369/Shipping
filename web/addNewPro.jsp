<%-- 
    Document   : addNewPro
    Created on : Oct 24, 2019, 10:36:36 AM
    Author     : admin
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <link rel="stylesheet" type="text/css" href="css\add.css">


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
                <h1>Add Product</h1>
                <%
                    if (request.getAttribute("error") != null) {


                %>
                ID is existed
                <%                }
                %>
                <form action="addPro" method="post">
                    <div class="inner-content" >
                        <ul class="inner-left" >
                            <li>ID <input type="text" name="id"></li>
                            <li>Tên món <input type="text" name="name"></li>           
                            <li>Loại<input type="text" name="catID"></li>
                            <li>Giá<input type="text" name="price"></li>
                            <li>Số lượng<input type="text" name="quantity"></li>
                            <li>Trạng thái<input type="text" name="status"></li>
                                <%SimpleDateFormat df = new java.text.SimpleDateFormat("MM/dd/yyyy");%>
                            <li>Ngày<input type="text" name="date" value="<%=df.format(new java.util.Date())%>"></li>
                            <li>Mô tả<textarea style="height: 50px; width: 100%; text-align: left;" type="text" name="describe"></textarea></li>
                            <input style="padding: 5px;" type="submit" value="Save in database">
                            <input style="padding: 5px;" type="reset" value="Clear"/>
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