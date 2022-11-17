/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloVO;

/**
 *
 * @author Sena
 */
public class registroVO {
    
    
    private String id_reg, 
                    id_even,
                    id_parti,
                    fecha_reg;

    public registroVO(String id_reg, String id_even, String id_parti, String fecha_reg) {
        this.id_reg = id_reg;
        this.id_even = id_even;
        this.id_parti = id_parti;
        this.fecha_reg = fecha_reg;
    }

    public String getId_reg() {
        return id_reg;
    }

    public void setId_reg(String id_reg) {
        this.id_reg = id_reg;
    }

    public String getId_even() {
        return id_even;
    }

    public void setId_even(String id_even) {
        this.id_even = id_even;
    }

    public String getId_parti() {
        return id_parti;
    }

    public void setId_parti(String id_parti) {
        this.id_parti = id_parti;
    }

    public String getFecha_reg() {
        return fecha_reg;
    }

    public void setFecha_reg(String fecha_reg) {
        this.fecha_reg = fecha_reg;
    }

   
   

    
}
