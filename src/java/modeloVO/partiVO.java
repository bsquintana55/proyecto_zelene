/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloVO;

/**
 *
 * @author solan
 */
public class partiVO {
    
    private String id_parti, nombre_parti, correo_parti, celu_parti;

    public partiVO() { 
    }
    
    
    public partiVO(String id_parti, String nombre_parti, String correo_parti, String celu_parti) {
        this.id_parti = id_parti;
        this.nombre_parti = nombre_parti;
        this.correo_parti = correo_parti;
        this.celu_parti = celu_parti;
    }

    public partiVO(String id_parti) {
        this.id_parti = id_parti;
    }

   

    public String getId_parti() {
        return id_parti;
    }

    public void setId_parti(String id_parti) {
        this.id_parti = id_parti;
    }

    public String getNombre_parti() {
        return nombre_parti;
    }

    public void setNombre_parti(String nombre_parti) {
        this.nombre_parti = nombre_parti;
    }

    public String getCorreo_parti() {
        return correo_parti;
    }

    public void setCorreo_parti(String correo_parti) {
        this.correo_parti = correo_parti;
    }

    public String getCelu_parti() {
        return celu_parti;
    }

    public void setCelu_parti(String celu_parti) {
        this.celu_parti = celu_parti;
    }
    
    
    
    

   
    
}
