/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Modal.Customer;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
                return new Customer(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5));
        } catch (Exception e) {
        }
        return null;
        
    }

}
