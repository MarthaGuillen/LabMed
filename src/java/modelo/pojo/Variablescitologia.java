package modelo.pojo;
// Generated 15-nov-2016 8:51:03 by Hibernate Tools 4.3.1



/**
 * Variablescitologia generated by hbm2java
 */
public class Variablescitologia  implements java.io.Serializable {


     private int idtblvariablescito;
     private Citologia citologia;
     private String nombrevar;
     private String valorvariable;

    public Variablescitologia() {
    }

    public Variablescitologia(int idtblvariablescito, Citologia citologia, String nombrevar, String valorvariable) {
       this.idtblvariablescito = idtblvariablescito;
       this.citologia = citologia;
       this.nombrevar = nombrevar;
       this.valorvariable = valorvariable;
    }
   
    public int getIdtblvariablescito() {
        return this.idtblvariablescito;
    }
    
    public void setIdtblvariablescito(int idtblvariablescito) {
        this.idtblvariablescito = idtblvariablescito;
    }
    public Citologia getCitologia() {
        return this.citologia;
    }
    
    public void setCitologia(Citologia citologia) {
        this.citologia = citologia;
    }
    public String getNombrevar() {
        return this.nombrevar;
    }
    
    public void setNombrevar(String nombrevar) {
        this.nombrevar = nombrevar;
    }
    public String getValorvariable() {
        return this.valorvariable;
    }
    
    public void setValorvariable(String valorvariable) {
        this.valorvariable = valorvariable;
    }




}


