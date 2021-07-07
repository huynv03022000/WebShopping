/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Modal.Customer;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class LoginDAO extends DBContext{
    public Customer CheckAcount(String name ,String pass){
       
        String sql = "select * from Customer where username = ? and password = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            if(rs.next())
                return new Customer(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4),rs.getBoolean(5),rs.getString(6));
        } catch (Exception e) {
        }
        return null;
        
    }

    public void insertAccount(Customer c) {
       String sql="insert into Customer values(?,?,?,?,?)";
        try{
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, c.getName());
            st.setString(2, c.getPassword());
            st.setString(3, c.getPhone());
            st.setBoolean(4, c.isRole());
            st.setString(5, c.getEmail());
            st.executeUpdate();
        }catch(SQLException e){
            System.out.println(e);
        }
    }

    public boolean check(String username) {
           String sql="select * from Customer where username=?";
        try{
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs=st.executeQuery();
            if(rs.next())
                return true;
        }catch(SQLException e){
            System.out.println(e);
        }
        return false;
    }

}
