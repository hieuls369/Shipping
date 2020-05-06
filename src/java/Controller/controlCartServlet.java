/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Entity.Item;
import Entity.Product;
import Model.Cart;
import Model.ProductDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
public class controlCartServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            HttpSession session = request.getSession(true);
            ProductDB db = new ProductDB();
            Cart cart = null;
            Object obj = session.getAttribute("cart");
            if (obj != null) {
                cart = (Cart) obj;
            }
            String action = request.getParameter("action");

            if (action.equals("buyitem")) {
                String id = request.getParameter("item");//lấy ms sản phẩm được chọn
                int quantity = Integer.parseInt(request.getParameter("quantity"));
                Product p = db.getProductByID(id);//Lấy sản phẩm từ cơ sở dữ liệu
                Item t = new Item(p, quantity);
                if (cart == null) {//mua lần đầu
                    cart = new Cart();
                }
                cart.addItem(t);
            } else if (action.equals("returnitem")) {
                String id = request.getParameter("id");//lấy ms sản phẩm cần xóa
                Item t = new Item(new Product(id, "", "", "", 0, 0, "", "", ""), 0);
                cart.deleteItem(t);
            } else if (action.equals("checkout")) {
                response.sendRedirect("Checkout.jsp");
            }

            session.setAttribute("cart", cart);
            ArrayList<Item> list=cart.getCart();
            session.setAttribute("num",list.size());

            //chuyển lại trang mua hàng
            response.sendRedirect("shopProduct.jsp");
        } catch (Exception e) {
            //e.printStackTrace();
            response.getWriter().print(e.getMessage());
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
