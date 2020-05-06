package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Entity.Item;
import Model.Cart;
import Entity.Categories;
import Model.CategoriesDB;
import Entity.User;
import java.util.ArrayList;
import Entity.Product;
import Model.ProductDB;

public final class shopProduct_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("<html class=\"no-js\" lang=\"zxx\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"x-ua-compatible\" content=\"ie=edge\">\n");
      out.write("        <title>Taste it</title>\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("        <!-- Place favicon.ico in the root directory -->\n");
      out.write("        <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"images/favicon.ico\">\n");
      out.write("        <link rel=\"apple-touch-icon\" href=\"apple-touch-icon.png\">\n");
      out.write("\n");
      out.write("        <!-- Bootstrap Fremwork Main Css -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("        <!-- All Plugins css -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/plugins.css\">\n");
      out.write("        <!-- Theme shortcodes/elements style -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/shortcode/shortcodes.css\">\n");
      out.write("        <!-- Theme main style -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("        <!-- Responsive css -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/responsive.css\">\n");
      out.write("        <!-- User style -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/custom.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/home.css\" type=\"text/css\"/>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Modernizr JS -->\n");
      out.write("        <script src=\"js/vendor/modernizr-2.8.3.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        ");

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


        
      out.write("\n");
      out.write("        <!--[if lt IE 8]>\n");
      out.write("            <p class=\"browserupgrade\">You are using an <strong>outdated</strong> browser. Please <a href=\"http://browsehappy.com/\">upgrade your browser</a> to improve your experience.</p>\n");
      out.write("        <![endif]-->  \n");
      out.write("\n");
      out.write("        <!-- Body main wrapper start -->\n");
      out.write("        <div class=\"wrapper fixed__footer\">\n");
      out.write("            <!-- Start Header Style -->\n");
      out.write("            <header id=\"header\" class=\"htc-header header--3 bg__white\">\n");
      out.write("                <!-- Start Mainmenu Area -->\n");
      out.write("                <div id=\"sticky-header-with-topbar\" class=\"mainmenu__area sticky__header\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-md-2 col-lg-2 col-6\">\n");
      out.write("                                <div class=\"logo\">\n");
      out.write("                                    <a href=\"shopProduct.jsp\">\n");
      out.write("                                        <img style=\"width: 100%;\"  src=\"images/4906c84c-08c8-4c89-bd9e-2c3742f1c615.png\" alt=\"logo\">\n");
      out.write("                                    </a>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- Start MAinmenu Ares -->\n");
      out.write("                            <div class=\"col-md-8 col-lg-8 d-none d-md-block\">\n");
      out.write("                                <nav class=\"mainmenu__nav  d-none d-lg-block\">\n");
      out.write("                                    <ul class=\"main__menu\">\n");
      out.write("                                        <li><a href=\"about.html\">About</a></li>\n");
      out.write("\n");
      out.write("                                        <li class=\"drop\"><a href=\"shopProduct.jsp\">Shop</a>\n");
      out.write("                                        </li>\n");
      out.write("\n");
      out.write("                                        <li><a href=\"contact.html\">contact</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </nav>\n");
      out.write("\n");
      out.write("                                <div class=\"mobile-menu clearfix d-block d-lg-none\">\n");
      out.write("                                    <nav id=\"mobile_dropdown\">\n");
      out.write("                                        <ul>\n");
      out.write("                                            <li><a href=\"shopProduct.jsp\">Shop</a></li>\n");
      out.write("                                            <li><a href=\"about.html\">About</a></li>\n");
      out.write("                                            <li><a href=\"contact.html\">contact</a></li>\n");
      out.write("                                        </ul>\n");
      out.write("                                    </nav>\n");
      out.write("                                </div>  \n");
      out.write("                            </div>\n");
      out.write("                            <!-- End MAinmenu Ares -->\n");
      out.write("                            <div class=\"col-md-2 col-lg-2 col-6\">  \n");
      out.write("                                <ul class=\"menu-extra\">\n");
      out.write("                                    <li class=\"search search__open d-none d-sm-block\"><span class=\"ti-search\"></span></li>\n");
      out.write("                                        ");
      if (session.getAttribute("user") != null) {
                                                User a = (User) session.getAttribute("user");

                                        
      out.write("\n");
      out.write("                                    <li><a href=\"\"><span>");
      out.print(a.getUsername());
      out.write("</span></a></li>\n");
      out.write("                                    <li><a href=\"logout\"><span>Logout</span></a></li>\n");
      out.write("                                        ");
} else {
                                        
      out.write("\n");
      out.write("                                    <li><a href=\"loginRegist.jsp\"><span class=\"ti-user\"></span></a></li>\n");
      out.write("                                            ");
}
      out.write("\n");
      out.write("                                    <li class=\"cart__menu\"><span class=\"ti-shopping-cart\"></span></li>\n");
      out.write("                                    <!-- <li class=\"toggle__menu d-none d-md-block\"><span class=\"ti-menu\"></span></li> -->\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"mobile-menu-area\"></div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <!-- End Mainmenu Area -->\n");
      out.write("            </header>\n");
      out.write("            <!-- End Header Style -->\n");
      out.write("            <div class=\"body__overlay\"></div>\n");
      out.write("            <!-- Start Offset Wrapper -->\n");
      out.write("            <div class=\"offset__wrapper\">\n");
      out.write("                <!-- Start Search Popap -->\n");
      out.write("                <div class=\"search__area\">\n");
      out.write("                    <div class=\"container\" >\n");
      out.write("                        <div class=\"row\" >\n");
      out.write("                            <div class=\"col-md-12\" >\n");
      out.write("                                <div class=\"search__inner\">\n");
      out.write("                                    <form action=\"searchAdmin\" method=\"post\">\n");
      out.write("                                        <input placeholder=\"Search here... \" type=\"text\" name=\"search\">\n");
      out.write("                                        <input type=\"hidden\" name=\"page\" value=\"products\">\n");
      out.write("                                        <button type=\"submit\"></button>\n");
      out.write("                                    </form>\n");
      out.write("                                    <div class=\"search__close__btn\">\n");
      out.write("                                        <span class=\"search__close__btn_icon\"><i class=\"zmdi zmdi-close\"></i></span>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <!-- Start Cart Panel -->\n");
      out.write("                <div class=\"shopping__cart\">\n");
      out.write("                    <div class=\"shopping__cart__inner\">\n");
      out.write("                        <div class=\"offsetmenu__close__btn\">\n");
      out.write("                            <a href=\"#\"><i class=\"zmdi zmdi-close\"></i></a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"shp__cart__wrap\">\n");
      out.write("                            ");

                                Object obj = session.getAttribute("cart");
                                if (obj != null) {
                                    Cart cart = (Cart) obj;
                                    ArrayList<Item> list = cart.getCart();
                                    if (list.size() > 0) {
                            
      out.write("\n");
      out.write("                            ");

                                int k = 1;
                                for (Item t : list) {
                            
      out.write("\n");
      out.write("                            <div class=\"shp__single__product\">\n");
      out.write("                                <div class=\"shp__pro__thumb\">\n");
      out.write("                                    <a href=\"#\">\n");
      out.write("                                        <img src=\"");
      out.print(t.getProduct().getImg());
      out.write("\" alt=\"product images\">\n");
      out.write("                                    </a>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"shp__pro__details\">\n");
      out.write("                                    <h2><a href=\"product-details.html\">");
      out.print(t.getProduct().getName());
      out.write("</a></h2>\n");
      out.write("                                    <span class=\"quantity\">QTY: ");
      out.print(t.getQuantity());
      out.write("</span>\n");
      out.write("                                    <span class=\"shp__price\">");
      out.print((t.getQuantity()) * (t.getProduct().getPrice()));
      out.write("</span>\n");
      out.write("                                </div>\n");
      out.write("                                <form action=\"controlCart\" name=\"f1\" method=\"post\">\n");
      out.write("                                    <div class=\"remove__btn\">                                   \n");
      out.write("                                        <input type=\"hidden\" name=\"id\" value=\"");
      out.print(t.getProduct().getID());
      out.write("\"/>\n");
      out.write("                                        <input type=\"hidden\" name=\"action\" value=\"returnitem\"/>\n");
      out.write("                                        <a href=\"#\" onclick=\"submit()\" title=\"Remove this item\"><i class=\"zmdi zmdi-close\"></i></a>\n");
      out.write("                                    </div>\n");
      out.write("                                </form>\n");
      out.write("                            </div>\n");
      out.write("                            ");

                                        }
                                    }
                                }
                            
      out.write("\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <ul class=\"shoping__total\">\n");
      out.write("                            <li class=\"subtotal\">Subtotal:</li>\n");
      out.write("                            <li class=\"total__price\"></li>\n");
      out.write("                        </ul>\n");
      out.write("                        <ul class=\"shopping__btn\">\n");
      out.write("                            <li><a href=\"cart.html\">View Cart</a></li>\n");
      out.write("                            <li class=\"shp__checkout\"><a href=\"checkout.html\">Checkout</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <!-- End Cart Panel -->\n");
      out.write("            </div>\n");
      out.write("            <!-- End Offset Wrapper -->\n");
      out.write("            <!-- Start Bradcaump area -->\n");
      out.write("            <div class=\"ht__bradcaump__area\" style=\"background: rgba(0, 0, 0, 0) url(images/271701.jpg) no-repeat scroll center center / cover ;\">\n");
      out.write("                <div class=\"ht__bradcaump__wrap\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-12\">\n");
      out.write("                                <div class=\"bradcaump__inner text-center\" >\n");
      out.write("                                    <h2 class=\"bradcaump-title\" style=\"color: white;\">Shop Page</h2>\n");
      out.write("                                    <nav class=\"bradcaump-inner\">\n");
      out.write("                                        <span class=\"brd-separetor\" >/</span>\n");
      out.write("                                        <span class=\"breadcrumb-item active\" style=\"color: white;\">Shop Page</span>\n");
      out.write("                                    </nav>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- End Bradcaump area --> \n");
      out.write("            <!-- Start Our Product Area -->\n");
      out.write("            <section class=\"htc__product__area shop__page ptb--130 bg__white\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"htc__product__container\">\n");
      out.write("                        <!-- Start Product MEnu -->\n");
      out.write("\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-md-12\">\n");
      out.write("                                <div class=\"filter__menu__container\">\n");
      out.write("                                    <div class=\"product__menu\">\n");
      out.write("                                        <a style=\"font-size: 20px; margin-right: 20px;\" href=\"listPro?ID=");
      out.print(0);
      out.write("&&page=products\">Tất cả các món</a>\n");
      out.write("                                        ");

                                            for (int j = 0; j < clist.size(); j++) {
                                        
      out.write("\n");
      out.write("\n");
      out.write("                                        <a style=\"font-size: 20px;margin-right: 20px;\"  href=\"listPro?ID=");
      out.print(clist.get(j).getId());
      out.write("&&page=products\">");
      out.print(clist.get(j).getName());
      out.write("</a>\n");
      out.write("\n");
      out.write("                                        ");
}
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <!-- End Product MEnu -->\n");
      out.write("                        <div class=\"row product__list\">\n");
      out.write("                            ");
                                while ((counter < PperPage) && (i < size)) {
                            
      out.write("\n");
      out.write("                            <!-- Start Single Product -->\n");
      out.write("                            <div class=\"col-md-4 single__pro col-lg-3  col-sm-12\">\n");
      out.write("                                <div class=\"product foo\">\n");
      out.write("                                    <div class=\"product__inner\">\n");
      out.write("                                        <div class=\"pro__thumb\">\n");
      out.write("                                            <a href=\"#\">\n");
      out.write("                                                <img src=\"");
      out.print(lpID.get(i).getImg());
      out.write("\" alt=\"product images\">\n");
      out.write("                                            </a>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"product__hover__info\">\n");
      out.write("                                            <ul class=\"product__action\">\n");
      out.write("                                                <li><a href=\"productDetail?ID=");
      out.print(lpID.get(i).getID());
      out.write("\"><span class=\"ti-plus\"></span></a></li>\n");
      out.write("                                                <li><a title=\"Add TO Cart\" href=\"cart.jsp\"><span class=\"ti-shopping-cart\"></span></a></li>\n");
      out.write("                                            </ul>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"add__to__wishlist\">\n");
      out.write("                                            <a data-toggle=\"tooltip\" title=\"Add To Wishlist\" class=\"add-to-cart\" href=\"wishlist.html\"><span class=\"ti-heart\"></span></a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"product__details\">\n");
      out.write("                                        <h2><a href=\"product-details.html\">");
      out.print(lpID.get(i).getName());
      out.write("</a></h2>\n");
      out.write("                                        <ul class=\"product__price\">\n");
      out.write("                                            <li></li>\n");
      out.write("                                            <li class=\"new__price\" style=\"padding-left: 60px;\">");
      out.print(lpID.get(i).getPrice());
      out.write("d<span style=\"font-size: 15px; opacity: 0.5\"> /1 suất</span></li>\n");
      out.write("                                        </ul>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- End Single Product -->\n");
      out.write("\n");
      out.write("\n");
      out.write("                            ");
                    i++;
                                    counter++;
                                    if (counter >= PperPage) {
                                        break;
                                    }
                                }

                            
      out.write("\n");
      out.write("                            <!-- End Load More BTn -->\n");
      out.write("                            <br>\n");
      out.write("                        </div>\n");
      out.write("                        ");
  String afileName = "shopProduct.jsp";
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


                        
      out.write("\n");
      out.write("                    </div>\n");
      out.write("            </section>\n");
      out.write("\n");
      out.write("            <!-- Body main wrapper end -->\n");
      out.write("            <!-- QUICKVIEW PRODUCT -->\n");
      out.write("\n");
      out.write("            <!-- END QUICKVIEW PRODUCT -->\n");
      out.write("\n");
      out.write("            <!-- End Our Product Area -->\n");
      out.write("            <!-- Start Footer Area -->\n");
      out.write("            <footer class=\"htc__foooter__area\" style=\"background: rgba(0, 0, 0, 0) url(images/Hero-First-nations-Meal-on-traditional-table-cloth-Photo-courtesy-of-Salmon-and-Bannock-1-1920x1080.jpg) no-repeat scroll center center / cover ;\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row footer__container clearfix\">\n");
      out.write("                        <!-- Start Single Footer Widget -->\n");
      out.write("                        <div class=\"col-md-6 col-lg-3 col-sm-6\">\n");
      out.write("                            <div class=\"ft__widget\">\n");
      out.write("                                <div class=\"ft__logo\">\n");
      out.write("                                    <a href=\"shopProduct.jsp\">\n");
      out.write("                                        <img style=\"width: 30%;\" src=\"images/4906c84c-08c8-4c89-bd9e-2c3742f1c615.png\" alt=\"footer logo\">\n");
      out.write("                                    </a>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"footer__details\">\n");
      out.write("                                    <p>Get 10% discount with notified about the latest news and updates.</p>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <!-- End Single Footer Widget -->\n");
      out.write("                        <!-- Start Single Footer Widget -->\n");
      out.write("                        <div class=\"col-md-6 col-lg-3 col-sm-6 smb-30 xmt-30\">\n");
      out.write("                            <div class=\"ft__widget\">\n");
      out.write("                                <h2 class=\"ft__title\">Newsletter</h2>\n");
      out.write("                                <div class=\"newsletter__form\">\n");
      out.write("                                    <div class=\"input__box\">\n");
      out.write("                                        <div id=\"mc_embed_signup\">\n");
      out.write("                                            <form action=\"#\" method=\"post\" id=\"mc-embedded-subscribe-form\" name=\"mc-embedded-subscribe-form\" class=\"validate\" novalidate>\n");
      out.write("                                                <div id=\"mc_embed_signup_scroll\" class=\"htc__news__inner\">\n");
      out.write("                                                    <div class=\"news__input\">\n");
      out.write("                                                        <input type=\"email\" value=\"\" name=\"EMAIL\" class=\"email\" id=\"mce-EMAIL\" placeholder=\"Email Address\" required>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <div class=\"clearfix subscribe__btn\"><input type=\"submit\" value=\"Send\" name=\"subscribe\" id=\"mc-embedded-subscribe\" class=\"bst__btn btn--white__color\">\n");
      out.write("\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                            </form>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>        \n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <!-- End Single Footer Widget -->\n");
      out.write("                        <!-- Start Single Footer Widget -->\n");
      out.write("                        <div class=\"col-md-6 col-lg-3 col-sm-6 smt-30 xmt-30\">\n");
      out.write("                            <div class=\"ft__widget contact__us\">\n");
      out.write("                                <h2 class=\"ft__title\">Contact Us</h2>\n");
      out.write("                                <div class=\"footer__inner\">\n");
      out.write("                                    <p> 319 Clematis St. <br> Suite 100 WPB, FL 33401 </p>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <!-- End Single Footer Widget -->\n");
      out.write("                        <!-- Start Single Footer Widget -->\n");
      out.write("                        <div class=\"col-md-6 col-lg-2 lg-offset-1 col-sm-6 smt-30 xmt-30\">\n");
      out.write("                            <div class=\"ft__widget\">\n");
      out.write("                                <h2 class=\"ft__title\">Follow Us</h2>\n");
      out.write("                                <ul class=\"social__icon\">\n");
      out.write("                                    <li><a href=\"https://twitter.com/devitemsllc\" target=\"_blank\"><i class=\"zmdi zmdi-twitter\"></i></a></li>\n");
      out.write("                                    <li><a href=\"https://www.instagram.com/devitems/\" target=\"_blank\"><i class=\"zmdi zmdi-instagram\"></i></a></li>\n");
      out.write("                                    <li><a href=\"https://www.facebook.com/devitems/?ref=bookmarks\" target=\"_blank\"><i class=\"zmdi zmdi-facebook\"></i></a></li>\n");
      out.write("                                    <li><a href=\"https://plus.google.com/\" target=\"_blank\"><i class=\"zmdi zmdi-google-plus\"></i></a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <!-- End Single Footer Widget -->\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </footer>\n");
      out.write("            <!-- End Footer Area -->\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Placed js at the end of the document so the pages load faster -->\n");
      out.write("\n");
      out.write("        <!-- jquery latest version -->\n");
      out.write("        <script src=\"js/vendor/jquery-1.12.4.min.js\"></script>\n");
      out.write("        <!-- Bootstrap Framework js -->\n");
      out.write("        <script src=\"js/popper.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <!-- All js plugins included in this file. -->\n");
      out.write("        <script src=\"js/plugins.js\"></script>\n");
      out.write("        <!-- Main js file that contents all jQuery plugins activation. -->\n");
      out.write("        <script src=\"js/main.js\"></script>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function submit() {\n");
      out.write("\n");
      out.write("                document.f1.submit();\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
