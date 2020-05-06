/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entity.Categories;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author admin
 */
public class CategoriesDB {
     private DBContext db;
    private Connection con;

    public CategoriesDB() {
        db = new DBContext();
        try {
            con = db.getConnection();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    public ArrayList<Categories> getAllCategories(){
        ArrayList<Categories> list = new ArrayList<>();
        String sql = "select * from Categories";
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                list.add(new Categories(rs.getString(1), rs.getString(2), rs.getString(3)));
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return list;
        
    } 
    
    public boolean existedCate(String id){
        String sql = "select * from Categories where id = ?";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                return true;
            }
            
        } catch (Exception e) {
            System.out.println(e);
        }
        return false;
    }
    
    public void insert(Categories c){
        String sql = "insert into Categories(ID, name, describe) values(?,?,?)";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, c.getId());
            st.setString(2, c.getName());
            st.setString(3, c.getDescribe());
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    public void delete(String id){
         String sql = "Delete from Categories where id=?";
         try {
            PreparedStatement psmt = con.prepareStatement(sql);
            psmt.setString(1, id);
            psmt.executeUpdate();
        } catch (Exception e) {
             System.out.println(e);
        }
    }
    public Categories getCategoryByID(String id){
        Categories c = new Categories();
        String sql = "select * from categories where id=?";
        try {
            PreparedStatement psmt = con.prepareStatement(sql);
            psmt.setString(1, id);
            ResultSet rs = psmt.executeQuery();
            if(rs.next()){
                c.setId(id);
                c.setName(rs.getString(2));
                c.setDescribe(rs.getString(3));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return c;
    }
    
    public void update(Categories c){
        String sql = "Update categories set [name]=?, describe=? where id=?";
        try {
            PreparedStatement psmt = con.prepareStatement(sql);
            psmt.setString(1, c.getName());
            psmt.setString(2, c.getDescribe());
            psmt.setString(3, c.getId());
            psmt.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
