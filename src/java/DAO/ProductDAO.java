/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Modal.Categories;
import Modal.Color;
import Modal.CommentProduct;
import Modal.CommentProduct;
import Modal.Product;
import Modal.ProductDetail;
import Modal.Image;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class ProductDAO extends DBContext {

    public List<Product> getData(int cate) {
        List<Product> list = new ArrayList<>();
        String sql = "Select * from Product where categoriesId =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, cate);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("productId"));
                p.setPID(rs.getString("productIdType"));
                p.setCID(rs.getInt("categoriesId"));
                p.setName(rs.getString("productName"));
                p.setImg(rs.getString("image"));
                p.setPrice(rs.getFloat("price"));
                p.setDescriber(rs.getString("Description"));
                p.setStatus(rs.getBoolean("status"));
                p.setQuantity(rs.getInt("quantity"));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }
    
      public List<CommentProduct> getComment(String pid) {
        List<CommentProduct> list = new ArrayList<>();
        String sql = "Select * from Comment where pid =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, pid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                CommentProduct p = new CommentProduct();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("username"));
                p.setPid(rs.getString("pid"));
                p.setDate(rs.getString("date"));
                p.setContent(rs.getString("content"));
              p.setLike(rs.getInt("like"));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }
 public boolean checkComment(String pid ,String user) {
      
        String sql = "select * from [Order] c INNER JOIN OrderLine o on c.id = o.oid inner join Customer cu on cu.username = c.username where cu.username = ? and o.pid = ? and c.status ='false'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, pid);
           ResultSet rs=st.executeQuery();
            if(rs.next())
                return true;
        }catch(SQLException e){
            System.out.println(e);
        }
        return false;
    }
    public Categories getCateByID(String id) {
        String query = "select * from Categories where categoriesId = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Categories(rs.getInt(1), rs.getString(2), rs.getString(3));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Categories> getCate() {
        List<Categories> list = new ArrayList<>();
        String sql = "Select * from Categories";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Categories p = new Categories();
                p.setId(rs.getInt("categoriesId"));
                p.setName(rs.getString("categoriesName"));
                p.setType(rs.getString("categoriesType"));

                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }

//    public void delete(String id) {
//        String sql = "delete from aoHe where ID = ? ";
//        try {
//            PreparedStatement ps = connection.prepareStatement(sql);
//            ps.setString(1, id);
//            ps.executeUpdate();
//        } catch (Exception e) {
//        }
//    }
//
//    public void update(T_shirt p) {
//       String query = "UPDATE [dbo].[aoHe]\n"
//                + "   SET [name] = ?\n"
//                + "      ,[image] = ?\n"
//                + "      ,[price] = ?\n"
//                + "      ,[color] = ?\n"
//                + "      ,[size] = ?\n"
//                + "      ,[describe] = ?\n"
//                + "      ,[status] = ?\n"
//                + " WHERE id = ?";
//        try {
//            PreparedStatement ps = connection.prepareStatement(query);
//            ps.setString(1, p.getName());
//            ps.setString(2, p.getImg());
//            ps.setInt(3, (int) p.getPrice());
//            ps.setString(4, p.getColor());
//            ps.setString(5, p.getSize());
//            ps.setString(6, p.getDescriber());
//            ps.setString(7, p.getStatus());
//            ps.setString(8, p.getId());
//            ps.executeUpdate();
//        } catch (Exception e) {
//        }
//    }
//
//    public T_shirt getProductByID(String id) {
//       String query = "select * from aoHe where ID = ?";
//        try {
//            PreparedStatement ps = connection.prepareStatement(query);
//            ps.setString(1, id);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                return new T_shirt(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8));
//            }
//        } catch (Exception e) {
//        }
//        return null;
//    }
//
//    public void insert(T_shirt p) {
//        String sql = "insert into aoHe values( ?,?,?,?,?,?,?,?)";
//        try {
//            PreparedStatement st = connection.prepareStatement(sql);
//            st.setString(1, p.getId());
//            st.setString(2, p.getName());
//            st.setString(3, p.getImg());
//            st.setInt(4, p.getPrice());
//            st.setString(5, p.getColor());
//            st.setString(6, p.getSize());
//            st.setString(7, p.getDescriber());
//            st.setString(8, p.getStatus());
//
//            st.executeUpdate();
//
//        } catch (SQLException e) {
//            System.out.println(e);
//        }
//    }
//
    public List<Product> getListByPage(List<Product> list,
            int start, int end) {
        List<Product> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }
//     public boolean checkID(String id) {
//        String sql="select * from aoHe where id=?";
//        try{
//            PreparedStatement st=connection.prepareStatement(sql);
//            st.setString(1, id);
//            ResultSet rs=st.executeQuery();
//            if(rs.next())
//                return true;
//        }catch(SQLException e){
//            System.out.println(e);
//        }
//        return false;
//    }

    public Product getProductById(String id) {
        String query = "select * from Product where productId =?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getFloat(5), rs.getString(6), rs.getString(7), rs.getBoolean(8), rs.getInt(9));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public ProductDetail getPRoductDetail(int id) {
        String query = "select * from Product_Details where productId = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new ProductDetail(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Image getListImg(int imageID) {
        String query = "select * from Image where productid = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, imageID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Image(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Color getListColor(int cid) {
        String query = "select * from Color where productid = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, cid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Color(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Product getProductByID(int id) {
        String sql = "select * from Product where productid=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new Product(id, rs.getString("productIdType"),
                        rs.getInt("categoriesId"), rs.getString("productName"), rs.getFloat("price"), rs.getString("Description"), rs.getString("image"), rs.getBoolean("status"), rs.getInt("quantity"));
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void insertProduct(Product p, Color c, Image i) {
        try {
            //add vào bảng Order
            String sql = "insert into [Product] values(?,?,?,?,?,?,?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, p.getPID());
            st.setInt(2, p.getCID());
            st.setString(3,p.getName());
            st.setFloat(4,p.getPrice());
            st.setString(5,p.getDescriber());
            st.setString(6,p.getImg());
            st.setBoolean(7,p.isStatus());
            st.setInt(8,p.getQuantity());
            st.executeUpdate();
            //lấy ra id của Order vừa add
            String sql1 = "select top 1 productId from [Product] order by productid desc";
            PreparedStatement st1 = connection.prepareStatement(sql1);
            ResultSet rs = st1.executeQuery();
            //add vào bảng OrderLine
             int oid =0;
            if (rs.next()) {
               oid = rs.getInt(1);
                String sql2="insert into Color values(?,?,?,?,?,?)";
                PreparedStatement st2=connection.prepareStatement(sql2);
                st2.setInt(1, oid);
                st2.setString(2, c.getColor1());
                st2.setString(3, c.getColor2());
                st2.setString(4, c.getColor3());
                st2.setString(5, c.getColor4());
                st2.setString(6, c.getColor5());               
                st2.executeUpdate();
                String sql3="insert into Image values(?,?,?,?,?,?,?)";
                PreparedStatement st3=connection.prepareStatement(sql3);
                st3.setInt(1, oid);
                st3.setString(2, i.getImg1());
                st3.setString(3,  i.getImg2());
                st3.setString(4, i.getImg3());
                st3.setString(5,  i.getImg4());
                st3.setString(6, i.getImg5());               
                st3.setString(7, i.getImg6());               
                st3.executeUpdate();
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

    }

}
