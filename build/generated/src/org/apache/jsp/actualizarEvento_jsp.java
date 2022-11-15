package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import modeloVO.eventoVO;
import modeloVO.usuarioVO;
import modeloDAO.usuarioDAO;

public final class actualizarEvento_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("   <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Actualizar evento</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("     ");

            eventoVO eveVO = (eventoVO) request.getAttribute("Consulta_evento");
            if (eveVO != null) {
        
      out.write("\n");
      out.write("    \n");
      out.write("   \n");
      out.write("        <h1>");
      out.print(eveVO.getNombre_even());
      out.write("</h1>\n");
      out.write("\n");
      out.write("\n");
      out.write("       \n");
      out.write("        \n");
      out.write("        <form method=\"post\" action=\"evento\" >\n");
      out.write("           \n");
      out.write("                    <input type=\"hidden\" class=\"form-control\" value=\"");
      out.print(eveVO.getId_even() );
      out.write("\"name=\"id_even\">\n");
      out.write("              \n");
      out.write("                  \n");
      out.write("                    <label for=\"\">Nombre del evento</label>\n");
      out.write("                    <input type=\"text\" id=\"nombre\" class=\"form-control\" value=\"");
      out.print(eveVO.getNombre_even());
      out.write(" \"name=\"nombre_even\">\n");
      out.write("              \n");
      out.write("                <br>\n");
      out.write("\n");
      out.write("          \n");
      out.write("                <label for=\"\">Fecha de Inicio</label>\n");
      out.write("                <input type=\"date\" id=\"fechaI\" name=\"feInicio_even\" class=\"\" value=\"");
      out.print(eveVO.getFeInicio_even());
      out.write("\">\n");
      out.write("    \n");
      out.write("\n");
      out.write("            <br> <br>\n");
      out.write("       \n");
      out.write("                Fecha final<br>\n");
      out.write("                <input type=\"date\" name=\"feFinal_even\" value=\"");
      out.print(eveVO.getFeInicio_even());
      out.write("\" >\n");
      out.write("                <br><br>\n");
      out.write("                 \n");
      out.write("                        \n");
      out.write("                        <label for=\"\">Estado</label>\n");
      out.write("                        <input type=\"text\" name=\"estado_even\" value=\"");
      out.print(eveVO.getEstado_even());
      out.write("\"><br><br>\n");
      out.write("                        \n");
      out.write("                       \n");
      out.write("                         <label for=\"\">Descripcion del evento</label>\n");
      out.write("                         <input type=\"text\" name=\"descrip_even\" value=\"");
      out.print(eveVO.getDescrip_even());
      out.write("\"><br><br>\n");
      out.write("                        \n");
      out.write("                   \n");
      out.write("\n");
      out.write("            <button id=\"actualizar\" class=\"\">Actualizar</button>\n");
      out.write("            <input type=\"hidden\" value=\"2\" name=\"opcion\" id=\"actualizar\">\n");
      out.write("            \n");
      out.write("            \n");
      out.write("\n");
      out.write("            ");
}
      out.write("\n");
      out.write("            ");

            if (request.getAttribute("MensajeError") != null) { 
      out.write("\n");
      out.write("            ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${MensajeError}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("\n");
      out.write("            ");
 } else {
      out.write("\n");
      out.write("            ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${MensajeExito}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("            ");
}
      out.write("\n");
      out.write("            \n");
      out.write("           \n");
      out.write("             </div>\n");
      out.write("        </form>\n");
      out.write("  \n");
      out.write("</body>\n");
      out.write(" \n");
      out.write("</html>\n");
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
