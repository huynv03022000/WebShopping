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

public class OrderDetail extends Product{
      private int oid,pid;
      private int quantity;
      private String color,size;
      private float price;
     

    public OrderDetail() {
    }

    public OrderDetail(int oid, int pid, int quantity,String color,String size, float price) {
        this.oid = oid;
        this.pid = pid;
        this.quantity = quantity;
        this.color = color;
        this.size = size;
        this.price = price;
    }
    
    

   

    public OrderDetail(int oid, int pid, int quantity,String color,String size, float price, String name, String img) {
        super(name, img);
        this.oid = oid;
        this.pid = pid;
        this.quantity = quantity;
        this.price = price;
    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    public void setPrice(float price) {
        this.price = price;
    }

    public float getPrice() {
        return price;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
    
    
    
      
}

