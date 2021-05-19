/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.ProductDAO;
import Modal.Categories;
import Modal.Color;
import Modal.Image;
import Modal.Product;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Paths;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Admin
 */
public class editProduct extends HttpServlet {

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
            out.println("<title>Servlet editProduct</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet editProduct at " + request.getContextPath() + "</h1>");
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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        try {
            ProductDAO dao = new ProductDAO();
            String categori = request.getParameter("categori");
            String [] image = request.getParameterValues("image1");
            String [] imagefile = request.getParameterValues("image");
            String[] color = request.getParameterValues("color");
            String pid = request.getParameter("pid");
            String name = request.getParameter("name");
            String price = request.getParameter("price");
            String describer = request.getParameter("describer");
            String quan = request.getParameter("quantity");
            int quantity = Integer.parseInt(quan);
            String st = request.getParameter("status");
            int id = Integer.parseInt(request.getParameter("id"));
            int cate = Integer.parseInt(categori);
            int statusInt = Integer.parseInt(st);
            float priceF = Float.parseFloat(price);
            boolean status = true;
            if (statusInt == 1) {
                status = true;
            } else {
                status = false;
            }
            Categories cte = dao.getCateByID(categori);
            String typeImg = cte.getType();
            String file = "";
            if (typeImg.equalsIgnoreCase("áo")) {
                file = "img/ao/";
            } else if (typeImg.equalsIgnoreCase("Quần")) {
                file = "img/quan/";
            } else if (typeImg.equalsIgnoreCase("Giày")) {
                file = "img/giay/";
            } else if (typeImg.equalsIgnoreCase("Phụ Kiện")) {
                file = "img/Phukien/";
            }
            String colo[] = new String[]{};
            for (int i = 0; i < imagefile.length; i++) {
               if(!imagefile[i].isEmpty()){
                  image[i]= file+imagefile[i];
               }
            }
            String mes = "Edit thàng công";
            String color1 = request.getParameter("color1");
            String color2 = request.getParameter("color2");
            String color3 = request.getParameter("color3");
            String color4 = request.getParameter("color4");
            String color5 = request.getParameter("color5");
            Image img = new Image(image[0], image[1], image[2], image[3], image[4], image[5]);
            Color c = new Color(color1, color2, color3, color4, color5);
            Product product = new Product(id, pid, cate, name, priceF, describer, image[0], status, quantity);
            dao.UpdateProduct(product);
            dao.UpdateColor(c, product.getId());
            dao.UpdateImage(img, product.getId());
            request.setAttribute("mes", "Bạn Đã Edit sản Phẩm "+id+" thành công");
            request.getRequestDispatcher("AddProduct.jsp").forward(request, response);
        } catch (Exception e) {
            String error = e.getMessage();
            request.setAttribute("mes", error);
            request.getRequestDispatcher("Home.jsp").forward(request, response);
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
