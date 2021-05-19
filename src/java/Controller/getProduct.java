/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.ProductDAO;
import Modal.Categories;
import Modal.Color;
import Modal.ColorCheck;
import Modal.Image;
import Modal.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class getProduct extends HttpServlet {

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
            out.println("<title>Servlet getProduct</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet getProduct at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);
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
        try {
            String id = request.getParameter("id");
            ProductDAO dao = new ProductDAO();
            Product p = dao.getProductById(id);
            Image i = dao.getListImg(p.getId());
            Color c = dao.getColorById(id);
            boolean c1 = false;
            boolean c2 = false;
            boolean c3 = false;
            boolean c4 = false;
            boolean c5 = false;
            if (c.getColor1()!=null) {
                c1 = true;
            }  
            if (c.getColor2()!=null) {
                c2 = true;
            }  if (c.getColor3()!=null) {
                c3 = true;
            }  if (c.getColor4()!=null) {
                c4 = true;
            }  if (c.getColor5()!="") {
                c5 = true;

            }
            ColorCheck cc = new ColorCheck(c1, c2, c3, c4, c5);
            request.setAttribute("product", p);

            request.setAttribute("image", i);
            String mes ="Product Id :"+id;
            boolean checkimg= false;
            if(i.getImg5()!=null){
                checkimg=true;
            }
            request.setAttribute("mes",mes);
            request.setAttribute("check",checkimg);
            List<Categories> list = dao.getCate();
            request.setAttribute("listCate", list);
            request.setAttribute("color", cc);
            request.getRequestDispatcher("AddProduct.jsp").forward(request, response);
        } catch (Exception e) {
            String error = e.getMessage();
            request.setAttribute("mes", error);
            request.getRequestDispatcher("AddProduct.jsp").forward(request, response);
        }
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
