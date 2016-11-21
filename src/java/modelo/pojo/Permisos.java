package modelo.pojo;
// Generated 21-nov-2016 11:19:50 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Permisos generated by hbm2java
 */
public class Permisos  implements java.io.Serializable {


     private int idtblpermisos;
     private String nombre;
     private String url;
     private Boolean estado;
     private Set perfilporpermisos = new HashSet(0);

    public Permisos() {
    }

	
    public Permisos(int idtblpermisos, String nombre) {
        this.idtblpermisos = idtblpermisos;
        this.nombre = nombre;
    }
    public Permisos(int idtblpermisos, String nombre, String url, Boolean estado, Set perfilporpermisos) {
       this.idtblpermisos = idtblpermisos;
       this.nombre = nombre;
       this.url = url;
       this.estado = estado;
       this.perfilporpermisos = perfilporpermisos;
    }
   
    public int getIdtblpermisos() {
        return this.idtblpermisos;
    }
    
    public void setIdtblpermisos(int idtblpermisos) {
        this.idtblpermisos = idtblpermisos;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getUrl() {
        return this.url;
    }
    
    public void setUrl(String url) {
        this.url = url;
    }
    public Boolean getEstado() {
        return this.estado;
    }
    
    public void setEstado(Boolean estado) {
        this.estado = estado;
    }
    public Set getPerfilporpermisos() {
        return this.perfilporpermisos;
    }
    
    public void setPerfilporpermisos(Set perfilporpermisos) {
        this.perfilporpermisos = perfilporpermisos;
    }




}


