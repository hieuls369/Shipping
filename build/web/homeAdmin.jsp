<%-- 
    Document   : listProduct
    Created on : Oct 20, 2019, 12:21:17 AM
    Author     : admin
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Entity.Product"%>
<%@page import="Model.CategoriesDB"%>
<%@page import="Entity.Categories"%>
<%@page import="Model.ProductDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/home.css">
        <title>Taste it(Admin)</title>
        <style>
            a{
                text-decoration: none;
            }
        </style>
    </head>
    <body style="background-color:#282b30 ">
        <%
            ProductDB pdb = new ProductDB();
            CategoriesDB cdb = new CategoriesDB();
            ArrayList<Categories> list = cdb.getAllCategories();
            


        %>
           <%
                int i = 0;
                int currentPage = 0;
                int PperPage = 4;
                ArrayList<Product> lp = pdb.getAllProducts();
                if(request.getAttribute("list") != null){
                    lp = (ArrayList<Product>) request.getAttribute("list");
                }
                if(request.getAttribute("searchList") != null){
                    lp = (ArrayList<Product>) request.getAttribute("searchList");
                    System.out.println(lp.size()+ "");
                }
                
                int size = lp.size();
                try {
                    currentPage = Integer.parseInt(request.getParameter("page"));
                } catch (Exception e) {
                    currentPage = 0;
                }
                if (currentPage == 0) {
                    currentPage = 1;
                }
                i = (currentPage - 1) * PperPage;
                int counter = 0;


            %>
        <div class="head">
            <div >
                <div class="logo">
                    <img src="images/4906c84c-08c8-4c89-bd9e-2c3742f1c615.png">
                </div>
            </div>
            <div style="padding-left: 57%">
                <ul class="menu-ctn">

                    <li style="background-color: teal"><a href="logout" style="color: white">Logout</a></li>
                    <li style="background-color: teal">Admin</li>
                </ul>
            </div>
        </div>
        <div class="mid">



        </div>	
        <div class="contact">

            <h1>Hôm nay ăn gì đến ngay với NVH</h1>
            <p>Có ngay món ăn đến tận nhà chỉ với nút \click/</p>
            
            <table>
                <button style="margin-right: 10px;border: 1px solid black;font-size: 20px;background-color: teal;border-radius: 4px;"><a style="color: white;" href="listPro?ID=<%=0 %>&&page=admin">Tất cả các món</a></button>
                <%                for (int j = 0; j < list.size(); j++) {
                %>
                <button style="margin-right: 10px;border: 1px solid black;font-size: 20px;background-color: teal;border-radius: 4px;"><a style="color: white;" href="listPro?ID=<%=list.get(j).getId() %>&&page=admin"><%=list.get(j).getName()%></a></button>
                <%}%>
                <td style="padding-left: 150px;">
                    <form action="searchAdmin" method="post" >
                        <input type="text" name="search">
                        <input type="hidden" name="page" value="admin">
                        <input type="submit" value="Tìm">
                    </form>                 
                </td>
            </table>
           
         
            <div class="mid-contenta1">


                <div class="inner-right">
                    <p>MENU các món ăn<button class="button" style="float: right; margin-right: 10px;margin-top: -3px"><a href="addNewPro.jsp">ADD</a></button></p>
                    <%      
                            while ((counter < PperPage) && (i < size)) {
                    %>
                    <li>

                        <img src="<%=lp.get(i).getImg()%>">
                        <div>
                            <a href=""><%=lp.get(i).getName()%></a>
                        </div>					
                        <div class="content">
                            <%=lp.get(i).getDescribe()%>
                        </div>
                        <div style="padding-right: 200px;">
                            <span style="color: blue">Giá :</span><%=lp.get(i).getPrice()%>d<span style="font-size: 15px; opacity: 0.5"> /1 suất</span>
                        </div>
                        <div class="mid-contentb2">
                            <button style="float: left; margin-right: 10px;" class="button"><a href="updateProduct.jsp?id=<%=lp.get(i).getID()%>">Update</a></button>
                            <button class="button"><a href="deletePro?id=<%=lp.get(i).getID()%>">Delete</a></button>
                        </div>
                    </li>
                    <%
                            i++;
                            counter++;
                            if (counter >= PperPage) {
                                break;
                            }
                        }

                    %>
                    <td>    
                        <%                                String afileName = "homeAdmin.jsp";
                                if (i == 0) {
                                    out.print("No Product");

                                } else {
                                    if (currentPage == 1) {
                                        out.print("<label><a href=#> < </a></label>");
                                    } else {
                                        out.print("<label><a href=" + afileName + "?page=" + (currentPage - 1) + "><</a></label>");
                                    }
                                }
                                int indexpage = 1;
                                int numpage;
                                if (size % PperPage == 0) {
                                    numpage = size / PperPage;

                                } else {
                                    numpage = size / PperPage + 1;
                                }
                                while (indexpage <= numpage) {
                                    out.print("<label><a href=" + afileName + "?page=" + indexpage + ">" + indexpage + "</a></label>");
                                    indexpage++;

                                }
                                if (currentPage == numpage) {
                                    out.print("<label><a href=#> > </a> </label>");
                                } else {
                                    out.print("<label><a href=" + afileName + "?page=" + (currentPage + 1) + "> > </a></label>");

                                }

                            
                        %>
                    </td>
                </div>

            </div>


        </div>

        <div class="bot">
            More food more joy with <span>ME</span>
        </div>
    </div>


</body>
</html>
<script>     /*SLIDESHOW*/
    console.log("Test");
    let slideIndex = 0;

    const showSlide = () => {

        const slides = document.getElementsByClassName("mySlide");
        const dots = document.getElementsByClassName("dot");
        console.log(dots);


        for (let i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }

        slideIndex++;


        if (slideIndex > slides.length) {
            slideIndex = 1;
        }


        slides[slideIndex - 1].style.display = "block";


        setTimeout(showSlide, 6000);
    };

    showSlide();


</script>
