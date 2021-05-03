/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.OrderDAO;
import Modal.Cart;
import Modal.Customer;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet(name = "CheckOut", urlPatterns = {"/checkout"})
public class CheckOut extends HttpServlet {

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
        request.setCharacterEncoding("utf-8");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
       HttpSession session = request.getSession(true);
        Cart cart = null;
        Object o = session.getAttribute("cart");
        //co roi
        if (o != null) {
            cart = (Cart) o;
        } else {
            cart = new Cart();
        }
        Customer acount = null;
        Object a = session.getAttribute("acount");
        if (a != null) {
            acount = (Customer) a;
            OrderDAO odb = new OrderDAO();
            odb.addOrder(acount, cart, address, phone);
            session.removeAttribute("cart");
            session.setAttribute("size", 0);
            response.sendRedirect("Home.jsp");
        } else {
            request.getRequestDispatcher("Login.jsp").forward(request, response);
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
