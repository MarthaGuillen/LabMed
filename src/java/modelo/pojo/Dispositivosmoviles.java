package modelo.pojo;
// Generated 10-nov-2016 22:20:20 by Hibernate Tools 4.3.1



/**
 * Dispositivosmoviles generated by hbm2java
 */
public class Dispositivosmoviles  implements java.io.Serializable {


     private int iddispositivosmoviles;
     private Usuarios usuarios;
     private String keydispositivo;
     private int idtblusuarios;

    public Dispositivosmoviles() {
    }

    public Dispositivosmoviles(Usuarios usuarios, String keydispositivo, int idtblusuarios) {
       this.usuarios = usuarios;
       this.keydispositivo = keydispositivo;
       this.idtblusuarios = idtblusuarios;
    }
   
    public int getIddispositivosmoviles() {
        return this.iddispositivosmoviles;
    }
    
    public void setIddispositivosmoviles(int iddispositivosmoviles) {
        this.iddispositivosmoviles = iddispositivosmoviles;
    }
    public Usuarios getUsuarios() {
        return this.usuarios;
    }
    
    public void setUsuarios(Usuarios usuarios) {
        this.usuarios = usuarios;
    }
    public String getKeydispositivo() {
        return this.keydispositivo;
    }
    
    public void setKeydispositivo(String keydispositivo) {
        this.keydispositivo = keydispositivo;
    }
    public int getIdtblusuarios() {
        return this.idtblusuarios;
    }
    
    public void setIdtblusuarios(int idtblusuarios) {
        this.idtblusuarios = idtblusuarios;
    }




}


