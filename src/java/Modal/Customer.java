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
    private String name ,password,phone,role;

    public Customer() {
    }

    public Customer( String name, String password, String phone, String role) {
       
        this.name = name;
        this.password = password;
        this.phone = phone;
        this.role = role;
    }

    public Customer(int id, String name, String password, String phone, String role) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.phone = phone;
        this.role = role;
    }
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
    
    
    
}
