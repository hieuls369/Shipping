<%-- 
    Document   : productDetail
    Created on : Nov 13, 2019, 10:13:20 PM
    Author     : admin
--%>

<%@page import="Entity.Item"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Cart"%>
<%@page import="Entity.Product"%>
<%@page import="Entity.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Taste IT</title>
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

        <!-- Modernizr JS -->
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <%

        if (request.getAttribute("product") != null) {
            Product p = (Product) request.getAttribute("product");


    %>
    <body>
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
                                        <img style="width: 70%;"  src="images/4906c84c-08c8-4c89-bd9e-2c3742f1c615.png" alt="logo">
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
                <!-- End Search Popap -->
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
                            <li class="total__price">$130.00</li>
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
            <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(images/honey-wallpapers-28256-4350105.jpg) no-repeat scroll center center / cover ;">
                <div class="ht__bradcaump__wrap">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <div class="bradcaump__inner text-center">
                                    <h2 class="bradcaump-title" style="color: white;">Product Details</h2>
                                    <nav class="bradcaump-inner">
                                        <a class="breadcrumb-item" href="index.html" style="color: white;">Shop</a>
                                        <span class="brd-separetor" >/</span>
                                        <span class="breadcrumb-item active" style="color: white;">Product Details</span>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Bradcaump area -->
            <!-- Start Product Details -->
            <section class="htc__product__details pt--120 pb--100 bg__white">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-lg-6 col-sm-12">
                            <div class="product__details__container">

                                <div class="product__big__images">
                                    <div class="portfolio-full-image tab-content">
                                        <div role="tabpanel" class="tab-pane active" id="img-tab-1">
                                            <img src="<%=p.getImg()%>" alt="full-image">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 col-lg-6 col-sm-12 smt-30 xmt-30">
                            <div class="htc__product__details__inner">

                                <div class="pro__detl__title">
                                    <h2><%=p.getName()%></h2>
                                </div>

                                <div class="pro__details">
                                    <p><%=p.getDescribe()%></p>
                                </div>
                                <ul class="pro__dtl__prize">

                                    <li><%=p.getPrice()%></li>
                                </ul>

                                <form action="" name="f1" method="post">
                                    <div class="product-action-wrap">
                                        <div class="prodict-statas"><span>Quantity :</span></div>
                                        <div class="product-quantity">

                                            <div class="product-quantity">
                                                <div class="cart-plus-minus">
                                                    <input class="cart-plus-minus-box" type="text" name="quantity" value="1" id="quantity">
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <ul class="pro__dtl__btn">
                                        <li class="buy__now__btn"><a href="#" onclick="buy()">Đặt ngay</a></li>
                                        <input type="hidden" name="action" value="buyitem"/>
                                    </ul>
                                </form>
                                <div class="pro__social__share">
                                    <h2>Share :</h2>
                                    <ul class="pro__soaial__link">
                                        <li><a href="https://twitter.com/devitemsllc" target="_blank"><i class="zmdi zmdi-twitter"></i></a></li>
                                        <li><a href="https://www.instagram.com/devitems/" target="_blank"><i class="zmdi zmdi-instagram"></i></a></li>
                                        <li><a href="https://www.facebook.com/devitems/?ref=bookmarks" target="_blank"><i class="zmdi zmdi-facebook"></i></a></li>
                                        <li><a href="https://plus.google.com/" target="_blank"><i class="zmdi zmdi-google-plus"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Product Details -->
            <!-- Start Product tab -->
            <section class="htc__product__details__tab bg__white pb--120">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-lg-12 col-sm-12">
                            <ul class="nav product__deatils__tab mb--60" role="tablist">
                                <li role="presentation" class="active">
                                    <a class="active" href="#description" role="tab" data-toggle="tab">Description</a>
                                </li>
                                <li role="presentation">
                                    <a href="#reviews" role="tab" data-toggle="tab">Reviews</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="product__details__tab__content">
                                <!-- Start Single Content -->
                                <div role="tabpanel" id="description" class="product__tab__content active">
                                    <div class="product__description__wrap">
                                        <div class="product__desc">
                                            <h2 class="title__6">Details</h2>
                                            <p><%=p.getDescribe()%></p>
                                        </div>

                                    </div>
                                </div>
                                <!-- End Single Content -->

                                <!-- Start Single Content -->
                                <div role="tabpanel" id="reviews" class="product__tab__content">
                                    <div class="review__address__inner">
                                        <!-- Start Single Review -->
                                        <div class="pro__review">
                                            <div class="review__thumb">
                                                <img src="images/review/1.jpg" alt="review images">
                                            </div>
                                            <div class="review__details">
                                                <div class="review__info">
                                                    <h4><a href="#">Gerald Barnes</a></h4>
                                                    <ul class="rating">
                                                        <li><i class="zmdi zmdi-star"></i></li>
                                                        <li><i class="zmdi zmdi-star"></i></li>
                                                        <li><i class="zmdi zmdi-star"></i></li>
                                                        <li><i class="zmdi zmdi-star-half"></i></li>
                                                        <li><i class="zmdi zmdi-star-half"></i></li>
                                                    </ul>
                                                    <div class="rating__send">
                                                        <a href="#"><i class="zmdi zmdi-mail-reply"></i></a>
                                                        <a href="#"><i class="zmdi zmdi-close"></i></a>
                                                    </div>
                                                </div>
                                                <div class="review__date">
                                                    <span>27 Jun, 2016 at 2:30pm</span>
                                                </div>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer accumsan egestas elese ifend. Phasellus a felis at estei to bibendum feugiat ut eget eni Praesent et messages in con sectetur posuere dolor non.</p>
                                            </div>
                                        </div>
                                        <!-- End Single Review -->
                                        <!-- Start Single Review -->
                                        <div class="pro__review ans">
                                            <div class="review__thumb">
                                                <img src="images/review/2.jpg" alt="review images">
                                            </div>
                                            <div class="review__details">
                                                <div class="review__info">
                                                    <h4><a href="#">Gerald Barnes</a></h4>
                                                    <ul class="rating">
                                                        <li><i class="zmdi zmdi-star"></i></li>
                                                        <li><i class="zmdi zmdi-star"></i></li>
                                                        <li><i class="zmdi zmdi-star"></i></li>
                                                        <li><i class="zmdi zmdi-star-half"></i></li>
                                                        <li><i class="zmdi zmdi-star-half"></i></li>
                                                    </ul>
                                                    <div class="rating__send">
                                                        <a href="#"><i class="zmdi zmdi-mail-reply"></i></a>
                                                        <a href="#"><i class="zmdi zmdi-close"></i></a>
                                                    </div>
                                                </div>
                                                <div class="review__date">
                                                    <span>27 Jun, 2016 at 2:30pm</span>
                                                </div>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer accumsan egestas elese ifend. Phasellus a felis at estei to bibendum feugiat ut eget eni Praesent et messages in con sectetur posuere dolor non.</p>
                                            </div>
                                        </div>
                                        <!-- End Single Review -->
                                    </div>
                                    <!-- Start RAting Area -->
                                    <div class="rating__wrap">
                                        <h2 class="rating-title">Write  A review</h2>
                                        <h4 class="rating-title-2">Your Rating</h4>
                                        <div class="rating__list">
                                            <!-- Start Single List -->
                                            <ul class="rating">
                                                <li><i class="zmdi zmdi-star-half"></i></li>
                                            </ul>
                                            <!-- End Single List -->
                                            <!-- Start Single List -->
                                            <ul class="rating">
                                                <li><i class="zmdi zmdi-star-half"></i></li>
                                                <li><i class="zmdi zmdi-star-half"></i></li>
                                            </ul>
                                            <!-- End Single List -->
                                            <!-- Start Single List -->
                                            <ul class="rating">
                                                <li><i class="zmdi zmdi-star-half"></i></li>
                                                <li><i class="zmdi zmdi-star-half"></i></li>
                                                <li><i class="zmdi zmdi-star-half"></i></li>
                                            </ul>
                                            <!-- End Single List -->
                                            <!-- Start Single List -->
                                            <ul class="rating">
                                                <li><i class="zmdi zmdi-star-half"></i></li>
                                                <li><i class="zmdi zmdi-star-half"></i></li>
                                                <li><i class="zmdi zmdi-star-half"></i></li>
                                                <li><i class="zmdi zmdi-star-half"></i></li>
                                            </ul>
                                            <!-- End Single List -->
                                            <!-- Start Single List -->
                                            <ul class="rating">
                                                <li><i class="zmdi zmdi-star-half"></i></li>
                                                <li><i class="zmdi zmdi-star-half"></i></li>
                                                <li><i class="zmdi zmdi-star-half"></i></li>
                                                <li><i class="zmdi zmdi-star-half"></i></li>
                                                <li><i class="zmdi zmdi-star-half"></i></li>
                                            </ul>
                                            <!-- End Single List -->
                                        </div>
                                    </div>
                                    <!-- End RAting Area -->
                                    <div class="review__box">
                                        <form id="review-form">
                                            <div class="single-review-form">
                                                <div class="review-box name">
                                                    <input type="text" placeholder="Type your name">
                                                    <input type="email" placeholder="Type your email">
                                                </div>
                                            </div>
                                            <div class="single-review-form">
                                                <div class="review-box message">
                                                    <textarea placeholder="Write your review"></textarea>
                                                </div>
                                            </div>
                                            <div class="review-btn">
                                                <a class="fv-btn" href="#">submit review</a>
                                            </div>
                                        </form>                                
                                    </div>
                                </div>
                                <!-- End Single Content -->
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Product tab -->
            <!-- Start Footer Area -->
            <footer class="htc__foooter__area" style="background: rgba(0, 0, 0, 0) url(images/Hero-First-nations-Meal-on-traditional-table-cloth-Photo-courtesy-of-Salmon-and-Bannock-1-1920x1080.jpg) no-repeat scroll center center / cover ;">
                <div class="container">
                    <div class="row footer__container clearfix">
                        <!-- Start Single Footer Widget -->
                        <div class="col-md-6 col-lg-3 col-sm-6">
                            <div class="ft__widget">
                                <div class="ft__logo">
                                    <a href="shopProduct.jsp">
                                        <img style="width: 40%;" src="images/4906c84c-08c8-4c89-bd9e-2c3742f1c615.png" alt="footer logo">
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
                    <!-- Start Copyright Area -->
                    <div class="htc__copyright__area">
                        <div class="row">
                            <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                                <div class="copyright__inner">
                                    <div class="copyright">
                                        <p>© 2018 <a href="https://freethemescloud.com/" target="_blank">Free themes Cloud</a>
                                            All Right Reserved.</p>
                                    </div>
                                    <ul class="footer__menu">
                                        <li><a href="index.html">Home</a></li>
                                        <li><a href="shop.html">Product</a></li>
                                        <li><a href="contact.html">Contact Us</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Copyright Area -->
                </div>
            </footer>
            <!-- End Footer Area -->
        </div>
        <!-- Body main wrapper end -->

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
                                            function buy() {
                                                document.f1.action = "controlCart?item=<%=p.getID()%>";
                                                document.f1.submit();
                                            }
        </script>
        <script type="text/javascript">
            function submit() {

                document.f1.submit();
            }
        </script>
    </body>
    <%}%>
</html>
