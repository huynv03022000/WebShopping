/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modal;

/**
 *
 * @author Admin
 */
public class Customer {
    private int id;
    private String name ,password,phone;
    private boolean role;
   private String email;

    public Customer() {
    }

    public Customer( String name, String password, String phone, boolean role, String email) {
      
        this.name = name;
        this.password = password;
        this.phone = phone;
        this.role = role;
        this.email = email;
        
    }

    public Customer(int id, String name, String password, String phone, boolean role, String email) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.phone = phone;
        this.email = email;
        this.role = role;
    }
    
    

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isRole() {
        return role;
    }

    public void setRole(boolean role) {
        this.role = role;
    }
    

   
    
}
