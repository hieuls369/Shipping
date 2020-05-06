/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author admin
 */
public class UserDB {

    private DBContext db;
    private Connection con;

    public UserDB() {
        db = new DBContext();
        try {
            con = db.getConnection();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public User getUser(String name, String pass) {
        User u = null;
        String sql = "select * from [UserAdmin] where username = ? and [password] = ?";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                u = new User(name, pass, rs.getInt(3));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return u;
    }

    public void addUser(User u) {
        String sql = "INSERT INTO [UserAdmin]\n"
                + "           ([Username]\n"
                + "           ,[Password]\n"
                + "           ,[Role])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?)";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, u.getUsername());
            st.setString(2, u.getPassword());
            st.setInt(3, u.getRole());
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
}
