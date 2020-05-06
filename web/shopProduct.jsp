<%-- 
    Document   : tết
    Created on : Oct 23, 2019, 9:03:05 PM
    Author     : admin
--%>

<%@page import="Entity.Item"%>
<%@page import="Model.Cart"%>
<%@page import="Entity.Categories"%>
<%@page import="Model.CategoriesDB"%>
<%@page import="Entity.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Entity.Product"%>
<%@page import="Model.ProductDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Taste it</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Place favicon.ico in the root directory -->
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <!-- Bootstrap Fremwork Main Css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- All Plugins css -->
        <link rel="stylesheet" href="css/plugins.css">
        <!-- Theme shortcodes/elements style -->
        <link rel="stylesheet" href="css/shortcode/shortcodes.css">
        <!-- Theme main style -->
        <link rel="stylesheet" href="style.css">
        <!-- Responsive css -->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- User style -->
        <link rel="stylesheet" href="css/custom.css">
        <link rel="stylesheet" href="css/home.css" type="text/css"/>


        <!-- Modernizr JS -->
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    </head>

    <body>
        <%
            String catID = "";
            ProductDB pdb = new ProductDB();
            CategoriesDB cdb = new CategoriesDB();
            ArrayList<Categories> clist = cdb.getAllCategories();
            ArrayList<Product> lpID = pdb.getAllProducts();
            if (request.getAttribute("list") != null) {
                lpID = (ArrayList<Product>) request.getAttribute("list");
            }
            if (request.getAttribute("searchList") != null) {
                lpID = (ArrayList<Product>) request.getAttribute("searchList");
            }

            int i = 0;
            int size = lpID.size();
            int currentPage = 0;
            int PperPage = 8;

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
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->  

        <!-- Body main wrapper start -->
        <div class="wrapper fixed__footer">
            <!-- Start Header Style -->
            <header id="header" class="htc-header header--3 bg__white">
                <!-- Start Mainmenu Area -->
                <div id="sticky-header-with-topbar" class="mainmenu__area sticky__header">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-2 col-lg-2 col-6">
                                <div class="logo">
                                    <a href="shopProduct.jsp">
                                        <img style="width: 100%;"  src="images/4906c84c-08c8-4c89-bd9e-2c3742f1c615.png" alt="logo">
                                    </a>
                                </div>
                            </div>
                            <!-- Start MAinmenu Ares -->
                            <div class="col-md-8 col-lg-8 d-none d-md-block">
                                <nav class="mainmenu__nav  d-none d-lg-block">
                                    <ul class="main__menu">
                                        <li><a href="about.html">About</a></li>

                                        <li class="drop"><a href="shopProduct.jsp">Shop</a>
                                        </li>

                                        <li><a href="contact.html">contact</a></li>
                                    </ul>
                                </nav>

                                <div class="mobile-menu clearfix d-block d-lg-none">
                                    <nav id="mobile_dropdown">
                                        <ul>
                                            <li><a href="shopProduct.jsp">Shop</a></li>
                                            <li><a href="about.html">About</a></li>
                                            <li><a href="contact.html">contact</a></li>
                                        </ul>
                                    </nav>
                                </div>  
                            </div>
                            <!-- End MAinmenu Ares -->
                            <div class="col-md-2 col-lg-2 col-6">  
                                <ul class="menu-extra">
                                    <li class="search search__open d-none d-sm-block"><span class="ti-search"></span></li>
                                        <%      if (session.getAttribute("user") != null) {
                                                User a = (User) session.getAttribute("user");

                                        %>
                                    <li><a href=""><span><%=a.getUsername()%></span></a></li>
                                    <li><a href="logout"><span>Logout</span></a></li>
                                        <%} else {
                                        %>
                                    <li><a href="loginRegist.jsp"><span class="ti-user"></span></a></li>
                                            <%}%>
                                    <li class="cart__menu"><span class="ti-shopping-cart"></span></li>
                                    <!-- <li class="toggle__menu d-none d-md-block"><span class="ti-menu"></span></li> -->
                                </ul>
                            </div>
                        </div>
                        <div class="mobile-menu-area"></div>
                    </div>
                </div>
                <!-- End Mainmenu Area -->
            </header>
            <!-- End Header Style -->
            <div class="body__overlay"></div>
            <!-- Start Offset Wrapper -->
            <div class="offset__wrapper">
                <!-- Start Search Popap -->
                <div class="search__area">
                    <div class="container" >
                        <div class="row" >
                            <div class="col-md-12" >
                                <div class="search__inner">
                                    <form action="searchAdmin" method="post">
                                        <input placeholder="Search here... " type="text" name="search">
                                        <input type="hidden" name="page" value="products">
                                        <button type="submit"></button>
                                    </form>
                                    <div class="search__close__btn">
                                        <span class="search__close__btn_icon"><i class="zmdi zmdi-close"></i></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Start Cart Panel -->
                <div class="shopping__cart">
                    <div class="shopping__cart__inner">
                        <div class="offsetmenu__close__btn">
                            <a href="#"><i class="zmdi zmdi-close"></i></a>
                        </div>
                        <div class="shp__cart__wrap">
                            <%
                                Object obj = session.getAttribute("cart");
                                if (obj != null) {
                                    Cart cart = (Cart) obj;
                                    ArrayList<Item> list = cart.getCart();
                                    if (list.size() > 0) {
                            %>
                            <%
                                int k = 1;
                                for (Item t : list) {
                            %>
                            <div class="shp__single__product">
                                <div class="shp__pro__thumb">
                                    <a href="#">
                                        <img src="<%=t.getProduct().getImg()%>" alt="product images">
                                    </a>
                                </div>
                                <div class="shp__pro__details">
                                    <h2><a href="product-details.html"><%=t.getProduct().getName()%></a></h2>
                                    <span class="quantity">QTY: <%=t.getQuantity()%></span>
                                    <span class="shp__price"><%=(t.getQuantity()) * (t.getProduct().getPrice())%></span>
                                </div>
                                <form action="controlCart" name="f1" method="post">
                                    <div class="remove__btn">                                   
                                        <input type="hidden" name="id" value="<%=t.getProduct().getID()%>"/>
                                        <input type="hidden" name="action" value="returnitem"/>
                                        <a href="#" onclick="submit()" title="Remove this item"><i class="zmdi zmdi-close"></i></a>
                                    </div>
                                </form>
                            </div>
                            <%
                                        }
                                    }
                                }
                            %>

                        </div>
                        <ul class="shoping__total">
                            <li class="subtotal">Subtotal:</li>
                            <li class="total__price"></li>
                        </ul>
                        <ul class="shopping__btn">
                            <li><a href="cart.html">View Cart</a></li>
                            <li class="shp__checkout"><a href="checkout.html">Checkout</a></li>
                        </ul>
                    </div>
                </div>
                <!-- End Cart Panel -->
            </div>
            <!-- End Offset Wrapper -->
            <!-- Start Bradcaump area -->
            <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(images/271701.jpg) no-repeat scroll center center / cover ;">
                <div class="ht__bradcaump__wrap">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <div class="bradcaump__inner text-center" >
                                    <h2 class="bradcaump-title" style="color: white;">Shop Page</h2>
                                    <nav class="bradcaump-inner">
                                        <span class="brd-separetor" >/</span>
                                        <span class="breadcrumb-item active" style="color: white;">Shop Page</span>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Bradcaump area --> 
            <!-- Start Our Product Area -->
            <section class="htc__product__area shop__page ptb--130 bg__white">
                <div class="container">
                    <div class="htc__product__container">
                        <!-- Start Product MEnu -->

                        <div class="row">
                            <div class="col-md-12">
                                <div class="filter__menu__container">
                                    <div class="product__menu">
                                        <a style="font-size: 20px; margin-right: 20px;" href="listPro?ID=<%=0%>&&page=products">Tất cả các món</a>
                                        <%
                                            for (int j = 0; j < clist.size(); j++) {
                                        %>

                                        <a style="font-size: 20px;margin-right: 20px;"  href="listPro?ID=<%=clist.get(j).getId()%>&&page=products"><%=clist.get(j).getName()%></a>

                                        <%}%>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <!-- End Product MEnu -->
                        <div class="row product__list">
                            <%                                while ((counter < PperPage) && (i < size)) {
                            %>
                            <!-- Start Single Product -->
                            <div class="col-md-4 single__pro col-lg-3  col-sm-12">
                                <div class="product foo">
                                    <div class="product__inner">
                                        <div class="pro__thumb">
                                            <a href="#">
                                                <img src="<%=lpID.get(i).getImg()%>" alt="product images">
                                            </a>
                                        </div>
                                        <div class="product__hover__info">
                                            <ul class="product__action">
                                                <li><a href="productDetail?ID=<%=lpID.get(i).getID()%>"><span class="ti-plus"></span></a></li>
                                                <li><a title="Add TO Cart" href="cart.jsp"><span class="ti-shopping-cart"></span></a></li>
                                            </ul>
                                        </div>
                                        <div class="add__to__wishlist">
                                            <a data-toggle="tooltip" title="Add To Wishlist" class="add-to-cart" href="wishlist.html"><span class="ti-heart"></span></a>
                                        </div>
                                    </div>
                                    <div class="product__details">
                                        <h2><a href="product-details.html"><%=lpID.get(i).getName()%></a></h2>
                                        <ul class="product__price">
                                            <li></li>
                                            <li class="new__price" style="padding-left: 60px;"><%=lpID.get(i).getPrice()%>d<span style="font-size: 15px; opacity: 0.5"> /1 suất</span></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->


                            <%                    i++;
                                    counter++;
                                    if (counter >= PperPage) {
                                        break;
                                    }
                                }

                            %>
                            <!-- End Load More BTn -->
                            <br>
                        </div>
                        <%  String afileName = "shopProduct.jsp";
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
                            if (size % PperPage
                                    == 0) {
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
                    </div>
            </section>

            <!-- Body main wrapper end -->
            <!-- QUICKVIEW PRODUCT -->

            <!-- END QUICKVIEW PRODUCT -->

            <!-- End Our Product Area -->
            <!-- Start Footer Area -->
            <footer class="htc__foooter__area" style="background: rgba(0, 0, 0, 0) url(images/Hero-First-nations-Meal-on-traditional-table-cloth-Photo-courtesy-of-Salmon-and-Bannock-1-1920x1080.jpg) no-repeat scroll center center / cover ;">
                <div class="container">
                    <div class="row footer__container clearfix">
                        <!-- Start Single Footer Widget -->
                        <div class="col-md-6 col-lg-3 col-sm-6">
                            <div class="ft__widget">
                                <div class="ft__logo">
                                    <a href="shopProduct.jsp">
                                        <img style="width: 30%;" src="images/4906c84c-08c8-4c89-bd9e-2c3742f1c615.png" alt="footer logo">
                                    </a>
                                </div>
                                <div class="footer__details">
                                    <p>Get 10% discount with notified about the latest news and updates.</p>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Footer Widget -->
                        <!-- Start Single Footer Widget -->
                        <div class="col-md-6 col-lg-3 col-sm-6 smb-30 xmt-30">
                            <div class="ft__widget">
                                <h2 class="ft__title">Newsletter</h2>
                                <div class="newsletter__form">
                                    <div class="input__box">
                                        <div id="mc_embed_signup">
                                            <form action="#" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" novalidate>
                                                <div id="mc_embed_signup_scroll" class="htc__news__inner">
                                                    <div class="news__input">
                                                        <input type="email" value="" name="EMAIL" class="email" id="mce-EMAIL" placeholder="Email Address" required>
                                                    </div>
                                                    <div class="clearfix subscribe__btn"><input type="submit" value="Send" name="subscribe" id="mc-embedded-subscribe" class="bst__btn btn--white__color">

                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>        
                                </div>
                            </div>
                        </div>
                        <!-- End Single Footer Widget -->
                        <!-- Start Single Footer Widget -->
                        <div class="col-md-6 col-lg-3 col-sm-6 smt-30 xmt-30">
                            <div class="ft__widget contact__us">
                                <h2 class="ft__title">Contact Us</h2>
                                <div class="footer__inner">
                                    <p> 319 Clematis St. <br> Suite 100 WPB, FL 33401 </p>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Footer Widget -->
                        <!-- Start Single Footer Widget -->
                        <div class="col-md-6 col-lg-2 lg-offset-1 col-sm-6 smt-30 xmt-30">
                            <div class="ft__widget">
                                <h2 class="ft__title">Follow Us</h2>
                                <ul class="social__icon">
                                    <li><a href="https://twitter.com/devitemsllc" target="_blank"><i class="zmdi zmdi-twitter"></i></a></li>
                                    <li><a href="https://www.instagram.com/devitems/" target="_blank"><i class="zmdi zmdi-instagram"></i></a></li>
                                    <li><a href="https://www.facebook.com/devitems/?ref=bookmarks" target="_blank"><i class="zmdi zmdi-facebook"></i></a></li>
                                    <li><a href="https://plus.google.com/" target="_blank"><i class="zmdi zmdi-google-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- End Single Footer Widget -->
                    </div>
                </div>
            </footer>
            <!-- End Footer Area -->
        </div>


        <!-- Placed js at the end of the document so the pages load faster -->

        <!-- jquery latest version -->
        <script src="js/vendor/jquery-1.12.4.min.js"></script>
        <!-- Bootstrap Framework js -->
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <!-- All js plugins included in this file. -->
        <script src="js/plugins.js"></script>
        <!-- Main js file that contents all jQuery plugins activation. -->
        <script src="js/main.js"></script>
        <script type="text/javascript">
            function submit() {

                document.f1.submit();
            }
        </script>
    </body>

</html>
