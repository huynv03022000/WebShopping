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
public class Product {
    private int id ;
    private String PID;
    private int CID;
    String name;
    private float price;
    private String describer;
    String img ;
 
    private boolean status;
       private int quantity;
//    private int quantity;

    public Product() {
    }
//  public Product(int id, String name, double price, int quantity) {
//        this.id = id;
//        this.name = name;
//        this.price = (float) price;
//        this.quantity = quantity;
//    }

    public Product(String PID, int CID, String name, float price, String describer, String img, boolean status, int quantity) {
        
        this.PID = PID;
        this.CID = CID;
        this.name = name;
        this.price = price;
        this.describer = describer;
        this.img = img;
        this.status = status;
        this.quantity = quantity;
    }
    public Product(String name, String img) {
        
     
        this.name = name;
      
        this.img = img;
       
    }

    public Product(int id, String PID, int CID, String name, float price, String describer, String img, boolean status, int quantity) {
        this.id = id;
        this.PID = PID;
        this.CID = CID;
        this.name = name;
        this.price = price;
        this.describer = describer;
        this.img = img;
        this.status = status;
        this.quantity = quantity;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    

    
    
  
  

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
    

  
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPID() {
        return PID;
    }

    public void setPID(String PID) {
        this.PID = PID;
    }

    public int getCID() {
        return CID;
    }

    public void setCID(int CID) {
        this.CID = CID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getDescriber() {
        return describer;
    }

    public void setDescriber(String describer) {
        this.describer = describer;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
    
    
    
}
