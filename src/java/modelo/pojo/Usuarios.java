package modelo.pojo;
// Generated 10-nov-2016 22:20:20 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Usuarios generated by hbm2java
 */
public class Usuarios  implements java.io.Serializable {


     private int idtblusuarios;
     private Area area;
     private String nombre;
     private String password;
     private String correo;
     private boolean estado;
     private boolean accesomovil;
     private boolean accesoweb;
     private Dispositivosmoviles dispositivosmoviles;
     private Set usuariosporperfils = new HashSet(0);

    public Usuarios() {
    }

	
    public Usuarios(int idtblusuarios, Area area, String nombre, String password, String correo, boolean estado, boolean accesomovil, boolean accesoweb) {
        this.idtblusuarios = idtblusuarios;
        this.area = area;
        this.nombre = nombre;
        this.password = password;
        this.correo = correo;
        this.estado = estado;
        this.accesomovil = accesomovil;
        this.accesoweb = accesoweb;
    }
    public Usuarios(int idtblusuarios, Area area, String nombre, String password, String correo, boolean estado, boolean accesomovil, boolean accesoweb, Dispositivosmoviles dispositivosmoviles, Set usuariosporperfils) {
       this.idtblusuarios = idtblusuarios;
       this.area = area;
       this.nombre = nombre;
       this.password = password;
       this.correo = correo;
       this.estado = estado;
       this.accesomovil = accesomovil;
       this.accesoweb = accesoweb;
       this.dispositivosmoviles = dispositivosmoviles;
       this.usuariosporperfils = usuariosporperfils;
    }
   
    public int getIdtblusuarios() {
        return this.idtblusuarios;
    }
    
    public void setIdtblusuarios(int idtblusuarios) {
        this.idtblusuarios = idtblusuarios;
    }
    public Area getArea() {
        return this.area;
    }
    
    public void setArea(Area area) {
        this.area = area;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public String getCorreo() {
        return this.correo;
    }
    
    public void setCorreo(String correo) {
        this.correo = correo;
    }
    public boolean isEstado() {
        return this.estado;
    }
    
    public void setEstado(boolean estado) {
        this.estado = estado;
    }
    public boolean isAccesomovil() {
        return this.accesomovil;
    }
    
    public void setAccesomovil(boolean accesomovil) {
        this.accesomovil = accesomovil;
    }
    public boolean isAccesoweb() {
        return this.accesoweb;
    }
    
    public void setAccesoweb(boolean accesoweb) {
        this.accesoweb = accesoweb;
    }
    public Dispositivosmoviles getDispositivosmoviles() {
        return this.dispositivosmoviles;
    }
    
    public void setDispositivosmoviles(Dispositivosmoviles dispositivosmoviles) {
        this.dispositivosmoviles = dispositivosmoviles;
    }
    public Set getUsuariosporperfils() {
        return this.usuariosporperfils;
    }
    
    public void setUsuariosporperfils(Set usuariosporperfils) {
        this.usuariosporperfils = usuariosporperfils;
    }




}


