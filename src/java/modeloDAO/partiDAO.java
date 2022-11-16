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
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modeloVO.partiVO;

/**
 *
 * @author solan
 */
public class partiDAO extends ConexionBd implements Crud {

    //1. Declarar variables 
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;

    private String id_parti = "", nombre_parti = "", correo_parti = "", celu_parti = "";

    public partiDAO() {
    }

    //metodo para recibir datos del vo
    public partiDAO(partiVO partVO) {
        super();

        try {
            //conectarse
            conexion = this.obtenerConexion();

            //taer datos
            id_parti = partVO.getId_parti();
            nombre_parti = partVO.getNombre_parti();
            correo_parti = partVO.getCorreo_parti();
            celu_parti = partVO.getCelu_parti();

        } catch (Exception e) {
            Logger.getLogger(eventoDAO.class.getName()).log(Level.SEVERE, null, e);
        }

    }

    @Override
    public boolean agregarRegistro() {

        try {

            sql = "INSERT INTO participante(nombre_parti, correo_parti, celu_parti) VALUES (?,?,?);";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, nombre_parti);
            puente.setString(2, correo_parti);
            puente.setString(3, celu_parti);

            puente.executeUpdate();
            operacion = true;

            if (operacion == true) {
                
                //crear condicianal para traer el id con consulta nombre = id y taer lista de los id y registrar en la tabla registro
                

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

    /*
    public partiVO consultaId(String id_parti) {
        partiVO parVO = null;
        try {
            conexion = this.obtenerConexion();
            sql = "select * from participante where id_parti = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, id_parti);
            
            mensajero = puente.executeQuery();
            //utiliza el evento vo de sin el id obvi
            while (mensajero.next()) {
                parVO = new partiVO
                (
                    mensajero.getString(1),mensajero.getString(2), 
                    mensajero.getString(3), mensajero.getString(4)
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
        return parVO;
    }
    
    
    
    
     
   public ArrayList <partiVO>listar()
    {
        ArrayList<partiVO>listaParti = new ArrayList<>(); 
        
        try 
        {
            conexion = this.obtenerConexion();
           
           sql = "";
           puente = conexion.prepareStatement(sql);
           mensajero = puente.executeQuery();
           while(mensajero.next())
           {
               partiVO parVO = new partiVO(
                    mensajero.getString(1),
                    mensajero.getString(2), 
                    mensajero.getString(3), 
                    mensajero.getString(4)
                      
               );
               listaParti.add(parVO);
           }
        } catch (SQLException e) 
        {
            Logger.getLogger(eventoDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        finally
        {
            try 
            {
                this.cerrarConexion();
            } catch (SQLException e) 
            {
                Logger.getLogger(eventoDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return listaParti;
    }
     */
}
