/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Modal.Cart;
import Modal.CommentProduct;
import Modal.Customer;
import Modal.Item;
import Modal.Order;
import Modal.OrderDetail;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class OrderDAO extends DBContext {

    public void addOrder(Customer u, Cart cart, String address, String phone) {
        LocalDate curDate = java.time.LocalDate.now();
        String date = curDate.toString();
        try {
            //add vào bảng Order
            int status = 1;
            String sql = "insert into [Order] values(?,?,?,?,?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, date);
            st.setString(2, u.getName());
            st.setDouble(3, cart.getTotalMoney());
            st.setString(4, address);
            st.setString(5, phone);
            st.setInt(6, status);
            st.executeUpdate();
            //lấy ra id của Order vừa add
            String sql1 = "select top 1 id from [Order] order by id desc";
            PreparedStatement st1 = connection.prepareStatement(sql1);
            ResultSet rs = st1.executeQuery();
            //add vào bảng OrderLine
            if (rs.next()) {
                int oid = rs.getInt(1);
                for (Item i : cart.getItems()) {
                    String sql2 = "insert into [Orderline] values(?,?,?,?,?,?)";
                    PreparedStatement st2 = connection.prepareStatement(sql2);
                    st2.setInt(1, oid);
                    st2.setInt(2, i.getProduct().getId());
                    st2.setInt(3, i.getQuantity());
                    st2.setDouble(4, i.getPrice());
                    st2.setString(5, i.getColor());
                    st2.setString(6, i.getSize());
                    st2.executeUpdate();
                }
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        for (Item i : cart.getItems()) {
            System.out.println(i.getColor());
            System.out.println(i.getQuantity());
            System.out.println(i.getSize());
            System.out.println(i.getPrice());
        }
    }

    public static void main(String[] args) {

    }

    public List<Order> getDataOrder() {
        List<Order> list = new ArrayList<>();
        String sql = "SELECT o.id,o.date, c.username,o.totalmoney,o.address,o.numberPhone,o.status\n"
                + "FROM [Order] o\n"
                + "INNER JOIN Customer c ON o.username = c.username where status = '1';";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Order p = new Order();
                p.setId(rs.getInt("id"));
                p.setDate(rs.getString("date"));
                p.setCusid(rs.getString("username"));
                p.setTotalmoney(rs.getDouble("totalmoney"));
                p.setAddress(rs.getString("address"));
                p.setPhone(rs.getString("numberPhone"));
                p.setStatus(rs.getBoolean("status"));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<CommentProduct> getComment(String pid, String user) {
        List<CommentProduct> list = new ArrayList<>();
        String sql = "select cm.id ,cm.username,cm.pid,cm.date,cm.content,cm.[like] from Comment cm where cm.username =? and cm.pid =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, pid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                CommentProduct p = new CommentProduct();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("userId"));
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

    public List<OrderDetail> getOrderDetail(String id) {
        List<OrderDetail> list = new ArrayList<>();
        String sql = "SELECT o.oid,o.quantity,o.price,o.color,o.size,p.image,p.productName\n"
                + "FROM OrderLine o\n"
                + "INNER JOIN Product p ON o.pid = p.productId where o.oid = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                OrderDetail p = new OrderDetail();
                p.setOid(rs.getInt("oid"));
                p.setQuantity(rs.getInt("quantity"));
                p.setPrice(rs.getFloat("price"));
                p.setColor(rs.getString("color"));
                p.setSize(rs.getString("size"));
                p.setImg(rs.getString("image"));
                p.setName(rs.getString("productName"));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void chotdon(String id) {
        String query = "UPDATE [order] \n"
                + "SET status='0'\n"
                + "WHERE id=?;";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<OrderDetail> getListOrder(String username) {
        List<OrderDetail> list = new ArrayList<>();
        String sql = "SELECT o.oid, o.pid,o.price,o.quantity,o.color,o.size,p.image,p.productName,od.status FROM OrderLine o INNER JOIN Product p   ON o.pid = p.productId inner join [Order] od ON od.id =o.oid  where od.username = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                OrderDetail p = new OrderDetail();
                p.setOid(rs.getInt("oid"));
                p.setPid(rs.getInt("pid"));
                p.setPrice(rs.getFloat("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setColor(rs.getString("color"));
                p.setSize(rs.getString("size"));
                p.setImg(rs.getString("image"));
                p.setName(rs.getString("productName"));
                p.setStatus(rs.getBoolean("status"));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;

    }

    public void deleteOrderLine(String oid, String pid) {
        String sql = "delete from OrderLine where pid = ? and oid = ? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, pid);
            ps.setString(2, oid);
            ps.executeUpdate();
        } catch (Exception e) {
            
        }

    }

    public int getPriceDelete(String pid,String oid) {
        
        String sql = "select price from OrderLine where pid = ? and oid = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, pid);
            st.setString(2, oid);
          
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
               return (rs.getInt("price"));
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public int getPriceOrder(String oid) {
        String sql = "select totalmoney from [Order] where id= ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, oid);
          
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
               return (rs.getInt("totalmoney"));
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public void deleteOrder(String oid) {
        
        String sql = "delete from OrderLine where id = ? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, oid);
            ps.executeUpdate();
        } catch (Exception e) {
            
        }
    }
     public void updateOrder(int result,String Oid) {
        String query = "UPDATE [dbo].[Order]\n"
                + "   SET [totalmoney] = ?\n"
             
                + " WHERE id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, result);
            ps.setString(2, Oid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

}
