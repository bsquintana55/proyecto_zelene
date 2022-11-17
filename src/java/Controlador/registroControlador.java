/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modeloDAO.registroDAO;
import modeloVO.registroVO;

/**
 *
 * @author Sena
 */
@WebServlet(name = "registroControlador", urlPatterns = {"/registro"})
public class registroControlador extends HttpServlet {

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
            String id_reg = request.getParameter("id_reg");
            String id_even = request.getParameter("id_even");
            String id_parti = request.getParameter("id_parti");
            String fecha_reg = request.getParameter("fecha_reg");

        
            int opcion = Integer.parseInt(request.getParameter("opcion"));
            
            registroVO regVO = new registroVO(
                   id_reg, 
                    id_even,
                    id_parti,
                    fecha_reg
            );

             registroDAO regDAO = new registroDAO(regVO);
             
               
        switch (opcion) {

            case 1:  //agregar registro
             
            if (regDAO.agregarRegistro()) {

                    request.setAttribute("MensajeExito", "Te has unido al evento correctamente");
                } else {
                    request.setAttribute("MensajeError", "No te has podido unir al evento");
                }
                request.getRequestDispatcher("form_Even.jsp").forward(request, response);
                
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
