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
public class Color {
    private int ProductId;
    private String Color1;
    private String Color2;
    private String Color3;
    private String Color4;
    private String Color5;

    public Color() {
    }

    public Color(String Color1, String Color2, String Color3, String Color4, String Color5) {
        
        this.Color1 = Color1;
        this.Color2 = Color2;
        this.Color3 = Color3;
        this.Color4 = Color4;
        this.Color5 = Color5;
    }

    public Color(int ProductId, String Color1, String Color2, String Color3, String Color4, String Color5) {
        this.ProductId = ProductId;
        this.Color1 = Color1;
        this.Color2 = Color2;
        this.Color3 = Color3;
        this.Color4 = Color4;
        this.Color5 = Color5;
    }

    public int getProductId() {
        return ProductId;
    }

    public void setProductId(int ProductId) {
        this.ProductId = ProductId;
    }

    public String getColor1() {
        return Color1;
    }

    public void setColor1(String Color1) {
        this.Color1 = Color1;
    }

    public String getColor2() {
        return Color2;
    }

    public void setColor2(String Color2) {
        this.Color2 = Color2;
    }

    public String getColor3() {
        return Color3;
    }

    public void setColor3(String Color3) {
        this.Color3 = Color3;
    }

    public String getColor4() {
        return Color4;
    }

    public void setColor4(String Color4) {
        this.Color4 = Color4;
    }

    public String getColor5() {
        return Color5;
    }

    public void setColor5(String Color5) {
        this.Color5 = Color5;
    }
    
    

}