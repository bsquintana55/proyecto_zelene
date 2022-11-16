package Controlador;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import JavaMail.PropiedadesCorreo;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modeloDAO.partiDAO;
import modeloVO.partiVO;

/**
 *
 * @author solan
 */
@WebServlet(urlPatterns = {"/Participante"})
public class partiControlador extends HttpServlet {

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
        
         //1. recibir datos de las vistas
        String id_parti = request.getParameter("id_parti");
        String nombre_parti = request.getParameter("nombre_parti");
        String correo_parti = request.getParameter("correo_parti");
        String celu_parti = request.getParameter("celu_parti");
      
        
        int opcion = Integer.parseInt(request.getParameter("opcion"));
        
        partiVO partVO = new partiVO(
                id_parti,
                nombre_parti,
                correo_parti,
                celu_parti
        );
        
        partiDAO pardao = new partiDAO(partVO);
        
        //correo
        
        String host;
        String puerto;
        String usuarioCorreo;
        String password;
        
        
        switch (opcion) {

            case 1:  //agregar registro
             
            if (pardao.agregarRegistro()) {
                
                  //correo
                    ServletContext context = getServletContext();

                    host = context.getInitParameter("host");
                    puerto = context.getInitParameter("puerto");
                    usuarioCorreo = context.getInitParameter("usuarioCorreo");
                    password = context.getInitParameter("password");

                    String receptor = request.getParameter("textLogin");
                    String asunto = "CORREO DE REGISTRO";
                    String contenido = "SEA BIENVENIDO :)))";
                    String resultadoMensaje = "";

                    try {

                        PropiedadesCorreo.envioCorreo(host, puerto, usuarioCorreo, password, receptor, asunto, contenido);
                        resultadoMensaje = "El mensaje se envio de forma correcta";
                    } catch (Exception e) {
                        e.printStackTrace();
                        resultadoMensaje = "Error al enviar el mensaje " + e.getMessage();
                    } finally {
                        request.setAttribute("mensaje", resultadoMensaje);
                        getServletContext().getRequestDispatcher("/resultado.jsp").forward(request, response);
                    }
                
 
                
                    request.setAttribute("MensajeExito", "El participante se creo correctamente");
                } else {
                    request.setAttribute("MensajeError", "El participante no se creo correctamente");
                }
                request.getRequestDispatcher("regParti.jsp").forward(request, response);
                
                break;
                
            case 2:  //actualizar registro
                
               
                break;
                

            case 3:
                 
               // partVO = pardao.consultarId(id_parti);
                if (partVO != null)
                {
                    request.setAttribute("Consulta_evento", partVO);
                    request.getRequestDispatcher("un_parti.jsp").forward(request, response);
                }
                else
                {
                    request.setAttribute("MensajeError", "No se encuentran resultados para tu busqueda."
                            + " Por favor busque correctamente");

                    request.getRequestDispatcher("consultarParti.jsp").forward(request, response);
                }
                break;

            case 4:
                if (pardao.eliminarRegistro())
                {
                    request.setAttribute("MensajeExito", "La evento se pudo elimino");
                }
                else
                {
                    request.setAttribute("MensajeError", "La evento no se pudo eliminar");
                }
                request.getRequestDispatcher("Participantes.jsp").forward(request, response);
                
                break;
        }//termina el switch
        
        
        
        
        
        
        
        
        
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
