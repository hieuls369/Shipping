package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import Entity.Product;
import Model.CategoriesDB;
import Entity.Categories;
import Model.ProductDB;

public final class homeAdmin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/home.css\">\n");
      out.write("        <title>Taste it(Admin)</title>\n");
      out.write("        <style>\n");
      out.write("            a{\n");
      out.write("                text-decoration: none;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color:#282b30 \">\n");
      out.write("        ");

            ProductDB pdb = new ProductDB();
            CategoriesDB cdb = new CategoriesDB();
            ArrayList<Categories> list = cdb.getAllCategories();
            


        
      out.write("\n");
      out.write("           ");

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


            
      out.write("\n");
      out.write("        <div class=\"head\">\n");
      out.write("            <div >\n");
      out.write("                <div class=\"logo\">\n");
      out.write("                    <img src=\"images/4906c84c-08c8-4c89-bd9e-2c3742f1c615.png\">\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div style=\"padding-left: 57%\">\n");
      out.write("                <ul class=\"menu-ctn\">\n");
      out.write("\n");
      out.write("                    <li style=\"background-color: teal\"><a href=\"logout\" style=\"color: white\">Logout</a></li>\n");
      out.write("                    <li style=\"background-color: teal\">Admin</li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"mid\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\t\n");
      out.write("        <div class=\"contact\">\n");
      out.write("\n");
      out.write("            <h1>Hôm nay ăn gì đến ngay với NVH</h1>\n");
      out.write("            <p>Có ngay món ăn đến tận nhà chỉ với nút \\click/</p>\n");
      out.write("            \n");
      out.write("            <table>\n");
      out.write("                <button style=\"margin-right: 10px;border: 1px solid black;font-size: 20px;background-color: teal;border-radius: 4px;\"><a style=\"color: white;\" href=\"listPro?ID=");
      out.print(0 );
      out.write("&&page=admin\">Tất cả các món</a></button>\n");
      out.write("                ");
                for (int j = 0; j < list.size(); j++) {
                
      out.write("\n");
      out.write("                <button style=\"margin-right: 10px;border: 1px solid black;font-size: 20px;background-color: teal;border-radius: 4px;\"><a style=\"color: white;\" href=\"listPro?ID=");
      out.print(list.get(j).getId() );
      out.write("&&page=admin\">");
      out.print(list.get(j).getName());
      out.write("</a></button>\n");
      out.write("                ");
}
      out.write("\n");
      out.write("                <td style=\"padding-left: 150px;\">\n");
      out.write("                    <form action=\"searchAdmin\" method=\"post\" >\n");
      out.write("                        <input type=\"text\" name=\"search\">\n");
      out.write("                        <input type=\"hidden\" name=\"page\" value=\"admin\">\n");
      out.write("                        <input type=\"submit\" value=\"Tìm\">\n");
      out.write("                    </form>                 \n");
      out.write("                </td>\n");
      out.write("            </table>\n");
      out.write("           \n");
      out.write("         \n");
      out.write("            <div class=\"mid-contenta1\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"inner-right\">\n");
      out.write("                    <p>MENU các món ăn<button class=\"button\" style=\"float: right; margin-right: 10px;margin-top: -3px\"><a href=\"addNewPro.jsp\">ADD</a></button></p>\n");
      out.write("                    ");
      
                            while ((counter < PperPage) && (i < size)) {
                    
      out.write("\n");
      out.write("                    <li>\n");
      out.write("\n");
      out.write("                        <img src=\"");
      out.print(lp.get(i).getImg());
      out.write("\">\n");
      out.write("                        <div>\n");
      out.write("                            <a href=\"\">");
      out.print(lp.get(i).getName());
      out.write("</a>\n");
      out.write("                        </div>\t\t\t\t\t\n");
      out.write("                        <div class=\"content\">\n");
      out.write("                            ");
      out.print(lp.get(i).getDescribe());
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <div style=\"padding-right: 200px;\">\n");
      out.write("                            <span style=\"color: blue\">Giá :</span>");
      out.print(lp.get(i).getPrice());
      out.write("d<span style=\"font-size: 15px; opacity: 0.5\"> /1 suất</span>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"mid-contentb2\">\n");
      out.write("                            <button style=\"float: left; margin-right: 10px;\" class=\"button\"><a href=\"updateProduct.jsp?id=");
      out.print(lp.get(i).getID());
      out.write("\">Update</a></button>\n");
      out.write("                            <button class=\"button\"><a href=\"deletePro?id=");
      out.print(lp.get(i).getID());
      out.write("\">Delete</a></button>\n");
      out.write("                        </div>\n");
      out.write("                    </li>\n");
      out.write("                    ");

                            i++;
                            counter++;
                            if (counter >= PperPage) {
                                break;
                            }
                        }

                    
      out.write("\n");
      out.write("                    <td>    \n");
      out.write("                        ");
                                String afileName = "homeAdmin.jsp";
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

                            
                        
      out.write("\n");
      out.write("                    </td>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"bot\">\n");
      out.write("            More food more joy with <span>ME</span>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("<script>     /*SLIDESHOW*/\n");
      out.write("    console.log(\"Test\");\n");
      out.write("    let slideIndex = 0;\n");
      out.write("\n");
      out.write("    const showSlide = () => {\n");
      out.write("\n");
      out.write("        const slides = document.getElementsByClassName(\"mySlide\");\n");
      out.write("        const dots = document.getElementsByClassName(\"dot\");\n");
      out.write("        console.log(dots);\n");
      out.write("\n");
      out.write("\n");
      out.write("        for (let i = 0; i < slides.length; i++) {\n");
      out.write("            slides[i].style.display = \"none\";\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        slideIndex++;\n");
      out.write("\n");
      out.write("\n");
      out.write("        if (slideIndex > slides.length) {\n");
      out.write("            slideIndex = 1;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("\n");
      out.write("        slides[slideIndex - 1].style.display = \"block\";\n");
      out.write("\n");
      out.write("\n");
      out.write("        setTimeout(showSlide, 6000);\n");
      out.write("    };\n");
      out.write("\n");
      out.write("    showSlide();\n");
      out.write("\n");
      out.write("\n");
      out.write("</script>\n");
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
