/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloDAO;

import Util.ConexionBd;
import Util.Crud;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import modeloVO.eventoVO;
import modeloVO.partiVO;
import modeloVO.registroVO;

/**
 *
 * @author Sena
 */
public class registroDAO extends ConexionBd implements Crud {
     //1. Declarar variables 
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;
    
    private String id_reg="", 
                   id_even="", 
                   id_parti="",
                   fecha_reg="";
    
    
    
    
    
     //metodo para recibir datos del vo
    public registroDAO(registroVO regVO) {
        super();

        try {
            //conectarse
            conexion = this.obtenerConexion();

            //taer datos
            id_reg = regVO.getId_reg();
            id_even= regVO.getId_even();
            id_parti = regVO.getId_parti();
            fecha_reg= regVO.getFecha_reg();
            

        } catch (Exception e) {
            Logger.getLogger(registroDAO.class.getName()).log(Level.SEVERE, null, e);
        }

    }
    


    
    

    @Override
    public boolean agregarRegistro() {
     try {

            sql = "INSERT INTO registro(id_even, id_parti) VALUES (?, ?);";
            puente = conexion.prepareStatement(sql);
           
            puente.setString(1, id_even);
            puente.setString(2, id_parti);

            puente.executeUpdate();
            operacion = true;

           if (operacion == true) {
                
                //crear condicianal para traer el id con consulta nombre = id y taer lista de los id y registrar en la tabla registro
                  sql = "SELECT registro.id_parti FROM registro INNER JOIN participante ON registro.id_parti = participante.id_parti;";
                  
            }

        } catch (SQLException e) {
            Logger.getLogger(eventoDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException ex) {
                Logger.getLogger(eventoDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return operacion;
    }

    @Override
    public boolean actualizarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
       
   
   //lista de los eventos con estado I, iniciado
  
    public eventoVO consultarEvento() {
        eventoVO eveVO = null;
        try {
            conexion = this.obtenerConexion();
            sql = "SELECT registro.id_even FROM registro INNER JOIN evento ON registro.id_even = evento.id_even WHERE evento.estado_even='I';";
            puente = conexion.prepareStatement(sql);
          
                
            mensajero = puente.executeQuery();
            //utiliza el evento vo de sin el id obvi
            while (mensajero.next()) {
                eveVO = new eventoVO
                (
                    mensajero.getString(1)
                );
            }
        } catch (SQLException e) {
            Logger.getLogger(eventoDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(eventoDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return eveVO;
    }
    
    //consulta de taer el id
       public partiVO consultarId() {
        partiVO partVO = null;
        try {
            conexion = this.obtenerConexion();
            sql = "SELECT registro.id_parti FROM registro INNER JOIN participante ON registro.id_parti = participante.id_parti;";
            puente = conexion.prepareStatement(sql);
            
                
            mensajero = puente.executeQuery();
            //utiliza el evento vo de sin el id obvi
            while (mensajero.next()) {
                partVO = new partiVO
                (
                    mensajero.getString(1)
                );
            }
        } catch (SQLException e) {
            Logger.getLogger(eventoDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(eventoDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return partVO;
    }
    
    
   
   
   
   
   
}
