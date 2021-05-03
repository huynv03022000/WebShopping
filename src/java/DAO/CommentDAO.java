/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Modal.CommentProduct;
import Modal.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class CommentDAO extends DBContext {

    public void insertComment(CommentProduct c) {
        String sql = "insert into Comment values(?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getName());
            st.setString(2, c.getPid());
            st.setString(3, c.getDate());
            st.setString(4, c.getContent());
            st.setInt(5, c.getLike());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);

        }
    }

    public String getIdCustomer(String name) {
          String sql = "Select c.userId from Customer c where username =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
               return rs.getString("userId");
            }
        } catch (Exception e) {
        }
        return null ;
    }

}
