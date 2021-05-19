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
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class addProduct1 extends HttpServlet {

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
            out.println("<title>Servlet addProduct</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addProduct at " + request.getContextPath() + "</h1>");
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
        ProductDAO p = new ProductDAO();
        List<Categories> list = p.getCate();

        request.setAttribute("listCate", list);
        request.getRequestDispatcher("AddProduct.jsp").forward(request, response);
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
//           response.setContentType("text/html;charset=UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        try {
            ProductDAO dao = new ProductDAO();
            String categori = request.getParameter("categori");
            String[] image = request.getParameterValues("image");
            String[] color = request.getParameterValues("color");
            String id = "";
            String name = request.getParameter("name");
            String price = request.getParameter("price");
            String size = request.getParameter("size");
            String describer = request.getParameter("describer");
            String quan = request.getParameter("quantity");
            int quantity = Integer.parseInt(quan);

            int cate = Integer.parseInt(categori);

            float priceF = Float.parseFloat(price);
            boolean status = true;
            String nameCategori = dao.getNameOfcate(categori);
            String[] nameID = nameCategori.split(" ");
            String PID = "";

            for (int i = 0; i < nameID.length; i++) {
                String nameii = nameID[i];
                PID += nameii.charAt(0);
            }
            int Idtop = dao.getMaxID() + 1;
            id = PID + Idtop;
            Categories cte = dao.getCateByID(categori);
            String typeImg = cte.getType();
//        String img1 = image[1], img2 = image[2], img3 = image[3], img4 = image[4], img5 = image[6], img6 = image[6];
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

            for (int i = 0; i < image.length; i++) {
                if (!image[i].isEmpty()) {
                    image[i] = file + image[i];
                }
            }
            String mes = "add thàng công";
            String color1 = request.getParameter("color1");
            String color2 = request.getParameter("color2");
            String color3 = request.getParameter("color3");
            String color4 = request.getParameter("color4");
            String color5 = request.getParameter("color5");

            Image img = new Image(image[0], image[1], image[2], image[3], image[4], image[5]);
            Color c = new Color(color1, color2, color3, color4, color5);
            Product product = new Product(id, cate, name, priceF, describer, image[0], status, quantity);
            dao.insertProduct(product, c, img);
            request.setAttribute("mes", mes);
            request.getRequestDispatcher("Home.jsp").forward(request, response);
        } catch (Exception e) {
            String error = e.getMessage();
            request.setAttribute("mes", "Lỗi " + error);
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

//  boolean check = false;
//        boolean isMultipartContent = ServletFileUpload.isMultipartContent(request);
//        if (!isMultipartContent) {
//            return;
//        }
//        String s = "";
//        FileItemFactory factory = new DiskFileItemFactory();
//        ServletFileUpload upload = new ServletFileUpload(factory);
//        try {
//            List< FileItem> fields = upload.parseRequest(request);
//            Iterator< FileItem> it = fields.iterator();
//            if (!it.hasNext()) {
//                return;
//            }
//            HashMap<String, String> fh = new HashMap<>();
//            while (it.hasNext()) {
//                FileItem fileItem = it.next();
//                boolean isFormField = fileItem.isFormField();
//                if (isFormField) {
//                    fh.put(fileItem.getFieldName(), fileItem.getString());
//                    if (file_name == null) {
//                        if (fileItem.getFieldName().equals("file_name")) {
//                            file_name = fileItem.getString();
//                        }
//                    }
//                } else {
//                    s = fileItem.getName();
//                    System.out.println(s);
//                    if (fileItem.getSize() > 0) {
//                        File f = new File("C:\\Users\\dinhd\\OneDrive\\Java Web\\MyProject\\web\\img\\test\\" + fileItem.getName());
//                        if (f.exists() && !f.isDirectory()) {
//                            s = fileItem.getName();
//                            check = false;
//                        } else {
//                            fileItem.write(new File("C:\\Users\\dinhd\\OneDrive\\Java Web\\MyProject\\web\\img\\test\\" + fileItem.getName()));
//                            check = true;
//                        }
//                    }
//                }
//            }
//            ProductDAO d = new ProductDAO();
////            String id = fh.get("newID");
//            String txtA = fh.get("txtA");
//            String[] part = txtA.split("\\n");
//            String amount = fh.get("amount");
//            int count = d.countNews();
//            String urlTextFile = "C:\\Users\\dinhd\\OneDrive\\Java Web\\MyProject\\web\\txt\\ntxt_" + count + ".txt";
//            int type = Integer.parseInt(request.getParameter("type"));
//            File file = new File(urlTextFile);
//            try (FileOutputStream fos = new FileOutputStream(file, false);
//                    OutputStreamWriter osw = new OutputStreamWriter(fos, StandardCharsets.UTF_8);
//                    BufferedWriter writer = new BufferedWriter(osw)) {
//                for (String part1 : part) {
//                    writer.append(part1);
//                }
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
