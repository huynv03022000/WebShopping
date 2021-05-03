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
public class ProductDetail {

    private int Pid;
    private int cid;
    private String size;
    private int imageID;
    private int quantity;

    public ProductDetail() {
    }

    public ProductDetail(int Pid, int cid, String size, int imageID, int quantity) {
        this.Pid = Pid;
        this.cid = cid;
        this.size = size;
        this.imageID = imageID;
        this.quantity = quantity;
    }

    public int getPid() {
        return Pid;
    }

    public void setPid(int Pid) {
        this.Pid = Pid;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getImageID() {
        return imageID;
    }

    public void setImageID(int imageID) {
        this.imageID = imageID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

}
