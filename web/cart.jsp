<%-- 
    Document   : cart
    Created on : Nov 14, 2019, 10:42:08 AM
    Author     : admin
--%>

<%@page import="Entity.User"%>
<%@page import="Entity.Item"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Taste It</title>
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
            <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(images/NEA-SekaiE-1920x1080.webp) no-repeat scroll center center / cover ;">
                <div class="ht__bradcaump__wrap">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <div class="bradcaump__inner text-center">
                                    <h2 class="bradcaump-title">Cart</h2>
                                    <nav class="bradcaump-inner">
                                        <a class="breadcrumb-item" href="shopProduct.jsp">Shop</a>
                                        <span class="brd-separetor">/</span>
                                        <span class="breadcrumb-item active">Cart</span>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Bradcaump area -->
            <!-- cart-main-area start -->
            <div class="cart-main-area ptb--120 bg__white">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-12">
                            <form action="#">               
                                <div class="table-content table-responsive">
                                    <table>
                                        <thead>
                                            <tr>
                                                <th class="product-thumbnail">Image</th>
                                                <th class="product-name">Product</th>
                                                <th class="product-price">Price</th>
                                                <th class="product-quantity">Quantity</th>
                                                <th class="product-subtotal">Total</th>
                                                <th class="product-remove">Remove</th>
                                            </tr>
                                        </thead>
                                        <tbody>
<!--                                            <tr>
                                                <td class="product-thumbnail"><a href="#"><img src="images/product/4.png" alt="product img" /></a></td>
                                                <td class="product-name"><a href="#">Vestibulum suscipit</a></td>
                                                <td class="product-price"><span class="amount">£165.00</span></td>
                                                <td class="product-quantity"><input type="number" value="1" /></td>
                                                <td class="product-subtotal">£165.00</td>
                                                <td class="product-remove"><a href="#">X</a></td>
                                            </tr>-->
                                           
                                        </tbody>
                                    </table>
                                </div>
                                <div class="row">
                                    <div class="col-md-8 col-sm-12">
                                        <div class="buttons-cart">
                                            <input type="submit" value="Update Cart" />
                                            <a href="#">Continue Shopping</a>
                                        </div>
                                        <div class="coupon">
                                            <h3>Coupon</h3>
                                            <p>Enter your coupon code if you have one.</p>
                                            <input type="text" placeholder="Coupon code" />
                                            <input type="submit" value="Apply Coupon" />
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-12 ">
                                        <div class="cart_totals">
                                            <h2>Cart Totals</h2>
                                            <table>
                                                <tbody>
                                                    <tr class="cart-subtotal">
                                                        <th>Subtotal</th>
                                                        <td><span class="amount">£215.00</span></td>
                                                    </tr>
                                                    <tr class="shipping">
                                                        <th>Shipping</th>
                                                        <td>
                                                            <ul id="shipping_method">
                                                                <li>
                                                                    <input type="radio" /> 
                                                                    <label>
                                                                        Flat Rate: <span class="amount">£7.00</span>
                                                                    </label>
                                                                </li>
                                                                <li>
                                                                    <input type="radio" /> 
                                                                    <label>
                                                                        Free Shipping
                                                                    </label>
                                                                </li>
                                                                <li></li>
                                                            </ul>
                                                            <p><a class="shipping-calculator-button" href="#">Calculate Shipping</a></p>
                                                        </td>
                                                    </tr>
                                                    <tr class="order-total">
                                                        <th>Total</th>
                                                        <td>
                                                            <strong><span class="amount">£215.00</span></strong>
                                                        </td>
                                                    </tr>                                           
                                                </tbody>
                                            </table>
                                            <div class="wc-proceed-to-checkout">
                                                <a href="checkout.html">Proceed to Checkout</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form> 
                        </div>
                    </div>
                </div>
            </div>
            <!-- cart-main-area end -->
            <!-- Start Footer Area -->
            <footer class="htc__foooter__area" style="background: rgba(0, 0, 0, 0) url(images/photo-1490818387583-1baba5e638af.jpg) no-repeat scroll center center / cover ;">
                <div class="container">
                    <div class="row footer__container clearfix">
                        <!-- Start Single Footer Widget -->
                        <div class="col-md-6 col-lg-3 col-sm-6">
                            <div class="ft__widget">
                                <div class="ft__logo">
                                    <a href="shopProduct.jsp">
                                        <img style="width: 30%;"  src="images/4906c84c-08c8-4c89-bd9e-2c3742f1c615.png" alt="footer logo">
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

    </body>

</html>
