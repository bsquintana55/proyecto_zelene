package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import modeloVO.usuarioVO;
import modeloDAO.usuarioDAO;
import modeloVO.eventoVO;
import java.util.ArrayList;
import modeloDAO.eventoDAO;

public final class consultarEvento_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <link href=\"css/materialize.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        \r\n");
      out.write("        <title>Consultar evento</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body></body>        \r\n");
      out.write("    <div class=\"form\">\r\n");
      out.write("        \r\n");
      out.write("        <h1 style=\"font-size: 50px;\">Eventos</h1>\r\n");
      out.write("        \r\n");
      out.write("        <form method=\"post\" action=\"evento\">\r\n");
      out.write("            \r\n");
      out.write("            <input type=\"text\" name=\"id_even\" class=\"\" placeholder=\"Buscar Evento\">\r\n");
      out.write("            \r\n");
      out.write("            <button class=\"\">Consultar Evento</button>\r\n");
      out.write("            <input type=\"hidden\" value=\"3\" name=\"opcion\">        \r\n");
      out.write("            \r\n");
      out.write("            <a href=\"regEvento.jsp\" class=\"\" >Registrar Evento</a><br><br>\r\n");
      out.write("\r\n");
      out.write("        </form>\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        <br><br>\r\n");
      out.write("        ");
            if (request.getAttribute("MensajeError") != null) { 
      out.write("\r\n");
      out.write("        ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${MensajeError}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\r\n");
      out.write("\r\n");
      out.write("        ");
 } else {
      out.write("\r\n");
      out.write("        ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${MensajeExito}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\r\n");
      out.write("        ");
}
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <form method=\"post\" action=\"evento\">\r\n");
      out.write("            <table class=\"striped\">\r\n");
      out.write("                <thead>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <th>Num. Evento</th>\r\n");
      out.write("                        <th>Nombre Evento</th>\r\n");
      out.write("                        <th>Fecha Inicio</th>\r\n");
      out.write("                        <th>Fecha Final</th>\r\n");
      out.write("                        <th>Estado</th>\r\n");
      out.write("                        <th>Informacion</th>\r\n");
      out.write("                        <th>Administrador</th>\r\n");
      out.write("                        <th></th>\r\n");
      out.write("                        <th></th>\r\n");
      out.write("                      \r\n");
      out.write("                    </tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    ");

                        eventoVO eveVO = new eventoVO();
                        eventoDAO eveDAO = new eventoDAO();
                        ArrayList<eventoVO> listaEvento = eveDAO.listar();
                        for (int i = 0; i < listaEvento.size(); i++) {

                            eveVO = listaEvento.get(i);

                    
      out.write("\r\n");
      out.write("                </thead>\r\n");
      out.write("\r\n");
      out.write("                <tbody>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <td>");
      out.print(eveVO.getId_even());
      out.write("</td>\r\n");
      out.write("                        <td>");
      out.print(eveVO.getNombre_even());
      out.write("</td>\r\n");
      out.write("                        <td>");
      out.print(eveVO.getFeInicio_even());
      out.write("</td>\r\n");
      out.write("                        <td>");
      out.print(eveVO.getFeFinal_even());
      out.write("</td>\r\n");
      out.write("                        <td>");
      out.print(eveVO.getEstado_even());
      out.write("</td>\r\n");
      out.write("                        <td>");
      out.print(eveVO.getDescrip_even());
      out.write("</td> \r\n");
      out.write("                         <td>");
      out.print(eveVO.getId_usua());
      out.write("</td>\r\n");
      out.write("                        \r\n");
      out.write("       <td> <input type=\"hidden\" value=\"4\" name=\"opcion\"  >\r\n");
      out.write("\r\n");
      out.write("           <button class=\"\" value=\"");
      out.print(eveVO.getId_even());
      out.write("\">Eliminar</button></td>\r\n");
      out.write("               \r\n");
      out.write("                </tr>\r\n");
      out.write("                \r\n");
      out.write("                ");
}
      out.write("\r\n");
      out.write("\r\n");
      out.write("                </tbody>\r\n");
      out.write("            </table>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            \r\n");
      out.write("        </form>\r\n");
      out.write("    </div>\r\n");
      out.write("   \r\n");
      out.write("</html>\r\n");
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
