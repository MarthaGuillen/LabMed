package modelo.pojo;
// Generated 21-nov-2016 11:19:50 by Hibernate Tools 4.3.1



/**
 * Usuariosporperfil generated by hbm2java
 */
public class Usuariosporperfil  implements java.io.Serializable {


     private int idtblusuariosxperfil;
     private Perfiles perfiles;
     private Usuarios usuarios;
     private boolean estado;

    public Usuariosporperfil() {
    }

    public Usuariosporperfil(int idtblusuariosxperfil, Perfiles perfiles, Usuarios usuarios, boolean estado) {
       this.idtblusuariosxperfil = idtblusuariosxperfil;
       this.perfiles = perfiles;
       this.usuarios = usuarios;
       this.estado = estado;
    }
   
    public int getIdtblusuariosxperfil() {
        return this.idtblusuariosxperfil;
    }
    
    public void setIdtblusuariosxperfil(int idtblusuariosxperfil) {
        this.idtblusuariosxperfil = idtblusuariosxperfil;
    }
    public Perfiles getPerfiles() {
        return this.perfiles;
    }
    
    public void setPerfiles(Perfiles perfiles) {
        this.perfiles = perfiles;
    }
    public Usuarios getUsuarios() {
        return this.usuarios;
    }
    
    public void setUsuarios(Usuarios usuarios) {
        this.usuarios = usuarios;
    }
    public boolean isEstado() {
        return this.estado;
    }
    
    public void setEstado(boolean estado) {
        this.estado = estado;
    }




}


