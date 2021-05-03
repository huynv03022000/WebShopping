/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.LoginDAO;
import Modal.Customer;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class Login extends HttpServlet {

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
            out.println("<title>Servlet Login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Login at " + request.getContextPath() + "</h1>");
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
        Cookie[] list = request.getCookies();
        String username = "";
        String pass = "";
        String rem = "";
        if (list.length != 0) {
            for (int i = 0; i < list.length; i++) {
                if (list[i].getName().equals("user")) {
                    username = list[i].getValue();
                }
                if (list[i].getName().equals("password")) {
                    pass = list[i].getValue();
                }
                if (list[i].getName().equals("rem")) {
                    rem = list[i].getValue();
                }
            }
        }
        request.setAttribute("username", username);
        request.setAttribute("pass", pass);
        request.setAttribute("rem", rem);
        request.getRequestDispatcher("Login.jsp").forward(request, response);
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
      
         response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String name = request.getParameter("username");
        String pass = request.getParameter("password");
        String rem = request.getParameter("rem");
        LoginDAO ad = new LoginDAO();
        Customer ac = ad.CheckAcount(name, pass);
        if (ac != null) {
            HttpSession session = request.getSession(true);
            session.setAttribute("acount", ac);

            Cookie cuser = new Cookie("user", name);
            Cookie cpass = new Cookie("password", pass);
            Cookie crem = new Cookie("rem", rem);

            if (rem != null) {
                //khi muon luu lai , dfat thoi gian song
                cuser.setMaxAge(60*60);
                cpass.setMaxAge(60*50);
                crem.setMaxAge(60*60);
            } else {
                cuser.setMaxAge(0);
                cpass.setMaxAge(0);
                crem.setMaxAge(0);
            }
            //tra ve phia ng dung

            response.addCookie(cuser);
            response.addCookie(cpass);
            response.addCookie(crem);
            String mes = "Xin Chào :" + name;
            request.setAttribute("mes", mes);
            request.getRequestDispatcher("Home.jsp").forward(request, response);
        } else {
            String mess = "tai khoan " + name + " khong ton tai";
            request.setAttribute("mess", mess);
//             response.sendRedirect("Login.jsp");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
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
