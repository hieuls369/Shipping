<%-- 
    Document   : login-regist
    Created on : Oct 23, 2019, 10:09:21 PM
    Author     : admin
--%>

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
                                    <a href="index.html">
                                        <img style="width: 70%;" src="images/4906c84c-08c8-4c89-bd9e-2c3742f1c615.png" alt="logo">
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
                                            <li><a href="shopProduct.jsp">Shop</a>
                                            </li>
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
                                    <li><a href="loginRegist.jsp"><span class="ti-user"></span></a></li>
                                    
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
                                    <form action="#" method="get">
                                        <input placeholder="Search here... " type="text">
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
                            <div class="shp__single__product">
                                <div class="shp__pro__thumb">
                                    <a href="#">
                                        <img src="images/product/sm-img/1.jpg" alt="product images">
                                    </a>
                                </div>
                                <div class="shp__pro__details">
                                    <h2><a href="product-details.html">BO&Play Wireless Speaker</a></h2>
                                    <span class="quantity">QTY: 1</span>
                                    <span class="shp__price">$105.00</span>
                                </div>
                                <div class="remove__btn">
                                    <a href="#" title="Remove this item"><i class="zmdi zmdi-close"></i></a>
                                </div>
                            </div>
                            <div class="shp__single__product">
                                <div class="shp__pro__thumb">
                                    <a href="#">
                                        <img src="images/product/sm-img/2.jpg" alt="product images">
                                    </a>
                                </div>
                                <div class="shp__pro__details">
                                    <h2><a href="product-details.html">Brone Candle</a></h2>
                                    <span class="quantity">QTY: 1</span>
                                    <span class="shp__price">$25.00</span>
                                </div>
                                <div class="remove__btn">
                                    <a href="#" title="Remove this item"><i class="zmdi zmdi-close"></i></a>
                                </div>
                            </div>
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
            <!-- Start Login Register Area -->
            <div class="htc__login__register bg__white ptb--130" style="background: rgba(0, 0, 0, 0) url(images/1033809-top-wood-wallpaper-1080p-1920x1200-ios.jpg) no-repeat scroll center center / cover ;">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 ml-auto mr-auto">
                            <ul class="login__register__menu nav justify-contend-center" role="tablist">
                                <li role="presentation" class="login active"><a class="active" href="#login" role="tab" data-toggle="tab">Login</a></li>
                                <li role="presentation" class="register"><a href="#register" role="tab" data-toggle="tab">Register</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- Start Login Register Content -->
                    <div class="row tab-content">
                        <div class="col-md-6  ml-auto mr-auto">
                            <div class="htc__login__register__wrap">
                                <!-- Start Single Content -->
                                <div id="login" role="tabpanel" class="single__tabs__panel tab-pane active">
                                    <form action="login" class="login" method="post">
                                        <input type="text" name="name" placeholder="User Name*" required>
                                        <input type="password" name="pass" placeholder="Password*" required>

                                        <div class="htc__login__btn mt--30">
                                            <a href="#"><input type="submit" value="Login"></a>
                                        </div>
                                    </form>


                                    <div class="htc__social__connect">
                                        <h2>Or Login With</h2>
                                        <ul class="htc__soaial__list">
                                            <li><a class="bg--twitter" href="https://twitter.com/devitemsllc" target="_blank"><i class="zmdi zmdi-twitter"></i></a></li>

                                            <li><a class="bg--instagram" href="https://www.instagram.com/devitems/" target="_blank"><i class="zmdi zmdi-instagram"></i></a></li>

                                            <li><a class="bg--facebook" href="https://www.facebook.com/devitems/?ref=bookmarks" target="_blank"><i class="zmdi zmdi-facebook"></i></a></li>

                                            <li><a class="bg--googleplus" href="https://plus.google.com/" target="_blank"><i class="zmdi zmdi-google-plus"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                
                                <!-- End Single Content -->
                                <!-- Start Single Content -->
                                <div id="register" role="tabpanel" class="single__tabs__panel tab-pane">
                                    <form action="addUser" class="login"  method="post">
                                        <input type="text" name="name" placeholder="Name*">
                                        <input type="email" placeholder="Email*">
                                        <input type="password" name="pass" placeholder="Password*">
                                        <div class="htc__login__btn">
                                            <a href="#"><input type="submit" value="Register"></a>
                                        </div>
                                    </form>

                                    <div class="htc__social__connect">
                                        <h2>Or Login With</h2>
                                        <ul class="htc__soaial__list">
                                            <li><a class="bg--twitter" href="https://twitter.com/devitemsllc" target="_blank"><i class="zmdi zmdi-twitter"></i></a></li>
                                            <li><a class="bg--instagram" href="https://www.instagram.com/devitems/" target="_blank"><i class="zmdi zmdi-instagram"></i></a></li>
                                            <li><a class="bg--facebook" href="https://www.facebook.com/devitems/?ref=bookmarks" target="_blank"><i class="zmdi zmdi-facebook"></i></a></li>
                                            <li><a class="bg--googleplus" href="https://plus.google.com/" target="_blank"><i class="zmdi zmdi-google-plus"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- End Single Content -->
                            </div>
                        </div>
                    </div>
                    <!-- End Login Register Content -->
                </div>
            </div>
            <!-- End Login Register Area -->
            <!-- Start Footer Area -->
            <footer class="htc__foooter__area" style="background: rgba(0, 0, 0, 0) url(images/NEA-SekaiE-1920x1080.webp) no-repeat scroll center center / cover ;">
                <div class="container">
                    <div class="row footer__container clearfix">
                        <!-- Start Single Footer Widget -->
                        <div class="col-md-6 col-lg-3 col-sm-6">
                            <div class="ft__widget">
                                <div class="ft__logo">
                                    <a href="index.html">
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