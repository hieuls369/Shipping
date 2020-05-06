/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entity.Categories;
import Entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author admin
 */
public class ProductDB {

    private DBContext db;
    private Connection con;

    public ProductDB() {
        db = new DBContext();
        try {
            con = db.getConnection();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public ArrayList<Product> getAllProducts() {
        ArrayList<Product> list = new ArrayList<>();
        String sql = "select * from Products";
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6), rs.getString(7), rs.getString(8), rs.getString(9)));
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return list;

    }

    public void insert(Product p) {
        String sql = "INSERT INTO [products]\n"
                + "           ([ID]\n"
                + "           ,[name]\n"
                + "           ,[cat_ID]\n"
                + "           ,[image]\n"
                + "           ,[price]\n"
                + "           ,[quantity]\n"
                + "           ,[describe]\n"
                + "           ,[status]\n"
                + "           ,[adddate])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, p.getID());
            st.setString(2, p.getName());
            st.setString(3, p.getCatID());
            st.setString(4, p.getImg());
            st.setInt(5, p.getPrice());
            st.setInt(6, p.getQuantity());
            st.setString(7, p.getDescribe());
            st.setString(8, p.getStatus());
            st.setString(9, p.getDate());
            st.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public boolean existedPro(String id) {
        String sql = "select * from Products where id=?";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return false;
    }

    public void delete(String id) {
        String sql = "delete from products where id=?";

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public Product getProductByID(String id) {
        Product p = new Product();
        String sql = "select * from products where id=?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                p.setID(id);
                p.setName(rs.getString(2));
                p.setCatID(rs.getString(3));
                p.setImg(rs.getString(4));
                p.setPrice(rs.getInt(5));
                p.setQuantity(rs.getInt(6));
                p.setDescribe(rs.getString(7));
                p.setStatus(rs.getString(8));
                p.setDate(rs.getString(9));
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return p;
    }

    public void update(Product p) {
        String sql = "UPDATE [products]\n"
                + "   SET [name] = ?\n"
                + "      ,[cat_ID] = ?\n"
                + "      ,[image] = ?\n"
                + "      ,[price] = ?\n"
                + "      ,[quantity] = ?\n"
                + "      ,[describe] = ?\n"
                + "      ,[status] = ?\n"
                + "      ,[adddate] = ?\n"
                + " WHERE id=?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, p.getName());
            ps.setString(2, p.getCatID());
            ps.setString(3, p.getImg());
            ps.setInt(4, p.getPrice());
            ps.setInt(5, p.getQuantity());
            ps.setString(6, p.getDescribe());
            ps.setString(7, p.getStatus());
            ps.setString(8, p.getDate());
            ps.setString(9, p.getID());
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public ArrayList<Product> getProductByCateID(String catID) {
        ArrayList<Product> list = new ArrayList<>();
        String sql = "select products.ID, products.name, products.cat_ID, products.image, products.price, products.quantity, products.describe, products.status, products.adddate\n"
                + "from products inner join Categories\n"
                + "on products.cat_ID = Categories.ID\n"
                + "where Categories.ID = ?";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, catID);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                list.add(new Product(rs.getString(1), rs.getString(2), catID, rs.getString(4), rs.getInt(5), rs.getInt(6), rs.getString(7), rs.getString(8), rs.getString(9)));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
    public ArrayList<Product> getProductCatID(String catID){
           ArrayList<Product> list = new ArrayList<>();
        String sql = "select * from products where cat_ID = ?";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, catID);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                list.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6), rs.getString(7), rs.getString(8), rs.getString(9)));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

}
