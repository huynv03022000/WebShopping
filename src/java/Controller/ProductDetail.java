/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.ProductDAO;
import Modal.Color;
import Modal.CommentProduct;

import Modal.Product;
import Modal.Image;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class ProductDetail extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProductDetail</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductDetail at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String id = request.getParameter("id");
         ProductDAO dao = new ProductDAO();
         Cookie[] list = request.getCookies();
        String username = "";
        if (list.length != 0) {
            for (int i = 0; i < list.length; i++) {
                if (list[i].getName().equals("user")) {
                    username = list[i].getValue();
                }               
            }
        }
        
        List<CommentProduct> listComment = dao.getComment(id);
        boolean check = dao.checkComment(id, username);
         Product p = dao.getProductById(id);
//        Modal.ProductDetail pt= dao.getPRoductDetail(p.getId());  
        Image listImg = dao.getListImg(p.getId());
         Color c = dao.getListColor(p.getId());
//        String c1 = dao.getColor(c.getColor1());
//        String c2 = dao.getColor(c.getColor2());
//        String c3 = dao.getColor(c.getColor3());
//        String c4 = dao.getColor(c.getColor4());
//        String c5 = dao.getColor(c.getColor5());
//         Color colorAter = new Color(c1,c2,c3,c4,c5);
           String categori = request.getParameter("categori");
        int cate = Integer.parseInt(categori);
        List<Product> list1 = dao.getData(cate);
        int numPs = list1.size();
        int numperPage = 8;
        int numpage = numPs / numperPage + (numPs % numperPage == 0 ? 0 : 1);
        int start, end;
        String tpage = request.getParameter("page");
        int page;
        try {
            page = Integer.parseInt(tpage);
        } catch (NumberFormatException e) {
            page = 1;
        }
        start = (page - 1) * numperPage;
        if (page * numperPage > numPs) {
            end = numPs;
        } else {
            end = page * numperPage;
        }
        List<Product> arr = dao.getListByPage(list1, start, end);
        //so phan tu cua 1 trang
        request.setAttribute("list1", arr);
         
         request.setAttribute("product", p);
//         request.setAttribute("productdetail", pt);
         request.setAttribute("img", listImg);
         request.setAttribute("color", c);
         request.setAttribute("list", listComment);
         String mes ="";
         request.setAttribute("id", id);
         request.setAttribute("check", check);
           request.setAttribute("username", username);
        
         request.setAttribute("mes",mes );
          request.getRequestDispatcher("ProductDetail.jsp").
                forward(request, response);
//            request.getRequestDispatcher("Demo.jsp").
//                forward(request, response);
         
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
//  String categori = request.getParameter("categori");
//        int cate = Integer.parseInt(categori);
//        List<Product> list1 = dao.getData(cate);
//        int numPs = list1.size();
//        int numperPage = 8;
//        int numpage = numPs / numperPage + (numPs % numperPage == 0 ? 0 : 1);
//        int start, end;
//        String tpage = request.getParameter("page");
//        int page;
//        try {
//            page = Integer.parseInt(tpage);
//        } catch (NumberFormatException e) {
//            page = 1;
//        }
//        start = (page - 1) * numperPage;
//        if (page * numperPage > numPs) {
//            end = numPs;
//        } else {
//            end = page * numperPage;
//        }
//        List<Product> arr = dao.getListByPage(list1, start, end);
//        //so phan tu cua 1 trang
//        request.setAttribute("list", arr);
