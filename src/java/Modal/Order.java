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

public class Order {
      private int id;
      private String date;
      private String cusid;
      private double totalmoney;
      private String address, phone;
      private boolean status;
      

    public Order() {
    }

    public Order( String date, String cusid, double totalmoney, String address, String phone, boolean status) {
        this.id = id;
        this.date = date;
        this.cusid = cusid;
        this.totalmoney = totalmoney;
        this.address = address;
        this.phone = phone;
        this.status = status;
    }

    public Order(int id, String date, String cusid, double totalmoney, String address, String phone, boolean status) {
        this.id = id;
        this.date = date;
        this.cusid = cusid;
        this.totalmoney = totalmoney;
        this.address = address;
        this.phone = phone;
        this.status = status;
    }
    

  
   
   

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getCusid() {
        return cusid;
    }

    public void setCusid(String cusid) {
        this.cusid = cusid;
    }

    public double getTotalmoney() {
        return totalmoney;
    }

    public void setTotalmoney(double totalmoney) {
        this.totalmoney = totalmoney;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
      

   
}

