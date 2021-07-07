package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class slider_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset='utf-8'>\n");
      out.write("    <meta name='viewport' content='width=device-width, initial-scale=1'>\n");
      out.write("    <title>Snippet - BBBootstrap</title>\n");
      out.write("    <link href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css' rel='stylesheet'>\n");
      out.write("    <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css' rel='stylesheet'>\n");
      out.write("    <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>\n");
      out.write("    <link href=\"https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.css\" rel=\"stylesheet\" />\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.js\"></script>\n");
      out.write("    <style>\n");
      out.write("        .stretch-card>.card {\n");
      out.write("            width: 100%;\n");
      out.write("            min-width: 100%\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("      \n");
      out.write("        .flex {\n");
      out.write("            -webkit-box-flex: 1;\n");
      out.write("            -ms-flex: 1 1 auto;\n");
      out.write("            flex: 1 1 auto\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        @media (max-width:991.98px) {\n");
      out.write("            .padding {\n");
      out.write("                padding: 1.5rem\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        @media (max-width:767.98px) {\n");
      out.write("            .padding {\n");
      out.write("                padding: 1rem\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .padding {\n");
      out.write("            padding: 3rem\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .owl-carousel .item {\n");
      out.write("            margin: 3px\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .owl-carousel .item img {\n");
      out.write("            display: block;\n");
      out.write("            width: 100%;\n");
      out.write("            height: auto\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .owl-carousel .item {\n");
      out.write("            margin: 3px\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .owl-carousel {\n");
      out.write("            margin-bottom: 15px\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body oncontextmenu='return false' class='snippet-body'>\n");
      out.write("   \n");
      out.write("   <div class=\"page-content page-container\" id=\"page-content\">\n");
      out.write("            <div class=\"padding\">\n");
      out.write("                <div class=\"row container-fluid\">\n");
      out.write("                    <div class=\"col-lg-12 grid-margin stretch-card\">\n");
      out.write("                        <div class=\"card\">\n");
      out.write("                            <div class=\"card-body\">\n");
      out.write("                                <h4 class=\"card-title\">Basic carousel</h4>\n");
      out.write("                                <div class=\"owl-carousel\" style=\"display: block\">\n");
      out.write("                                   <div class=\"item\"> <img src=\"https://res.cloudinary.com/dxfq3iotg/image/upload/v1557204140/banner_12.jpg\" alt=\"image\" /> </div>\n");
      out.write("                                <div class=\"item\"> <img src=\"https://res.cloudinary.com/dxfq3iotg/image/upload/v1557204172/banner_2.jpg\" alt=\"image\" /> </div>\n");
      out.write("                                <div class=\"item\"> <img src=\"https://res.cloudinary.com/dxfq3iotg/image/upload/v1557204663/park-4174278_640.jpg\" alt=\"image\" /> </div>\n");
      out.write("                                <div class=\"item\"> <img src=\"http://www.urbanui.com/fily/template/images/carousel/banner_2.jpg\" alt=\"image\" /> </div>\n");
      out.write("                                <div class=\"item\"> <img src=\"https://res.cloudinary.com/dxfq3iotg/image/upload/v1557204172/banner_2.jpg\" alt=\"image\" /> </div>\n");
      out.write("                                <div class=\"item\"> <img src=\"https://res.cloudinary.com/dxfq3iotg/image/upload/v1557204663/park-4174278_640.jpg\" alt=\"image\" /> </div>\n");
      out.write("                                <div class=\"item\"> <img src=\"http://www.urbanui.com/fily/template/images/carousel/banner_2.jpg\" alt=\"image\" /> </div>\n");
      out.write("                                <div class=\"item\"> <img src=\"http://www.urbanui.com/fily/template/images/carousel/banner_2.jpg\" alt=\"image\" /> </div>\n");
      out.write("                                <div class=\"item\"> <img src=\"http://www.urbanui.com/fily/template/images/carousel/banner_2.jpg\" alt=\"image\" /> </div>\n");
      out.write("                                <div class=\"item\"> <img src=\"http://www.urbanui.com/fily/template/images/carousel/banner_2.jpg\" alt=\"image\" /> </div\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js'></script>\n");
      out.write("    <script type='text/javascript'>\n");
      out.write("        $(document).ready(function() {\n");
      out.write("\n");
      out.write("            $(\".owl-carousel\").owlCarousel({\n");
      out.write("\n");
      out.write("                autoPlay: 3000,\n");
      out.write("                items: 4,\n");
      out.write("                itemsDesktop: [1199, 3],\n");
      out.write("                itemsDesktopSmall: [979, 3],\n");
      out.write("                center: true,\n");
      out.write("                nav: true,\n");
      out.write("                loop: true,\n");
      out.write("                responsive: {\n");
      out.write("                    600: {\n");
      out.write("                        items: 4\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("            });\n");
      out.write("\n");
      out.write("        });\n");
      out.write("    </script>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
