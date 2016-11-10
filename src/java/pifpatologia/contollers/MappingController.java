/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pifpatologia.contollers;

import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import modelo.dao.AreaDAO;
import modelo.dao.PerfilesDAO;
import modelo.dao.UsuarioDAO;
import modelo.dao.UsuarioPorPerfilDAO;
import modelo.dao.perfilDAO;
import modelo.pojo.Area;
import modelo.pojo.Perfiles;
import modelo.pojo.Usuarios;
import modelo.util.EnviarCorreo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Administrador
 */@Controller
    
public class MappingController {
    @RequestMapping("/inicio.htm")
    public String index(){
        return "index";
    }
    
    @RequestMapping("/principal.htm")
    public String principal(){
        return "principal";
    }
    
    @RequestMapping("/menu.htm")
    public String menuSuperior(){
        return "BarraSuperior";
    }
    
    @RequestMapping("/hispatologia.htm")
    public String ResultadoHispatologia(){
        return "Resultados/Hispatologia";
    }
        
    @RequestMapping("/citologia.htm")
    public String ResultadoCitologia(){
        return "Resultados/Citologia";
    }
    
    @RequestMapping("/firmas.htm")
    public String AgreagarFirma(){
        return "Parametria/NuevaFirma";
    }
    
    @RequestMapping("/idCito.htm")
    public String AgregarIdCitologia(){
        return "Parametria/NuevoIdCito";
    }
    
    @RequestMapping("/vacio.htm")
    public String PagSinContenido(){
        return "Vacio";
    }
    
    @RequestMapping("/Pefiles.htm")
    public String NuevoPerfil(){
        return "Seguridad/NuevoPerfil";
    }
    
    @RequestMapping("/NuevoUsuario.htm")
    public String NuevoUsuario(Model m, HttpServletRequest request){
        AreaDAO areas = new AreaDAO();
        ArrayList<Area> listaAreas = areas.ObtenerAreasEstado(true);
        m.addAttribute("listaAreas", listaAreas);
        PerfilesDAO perfiles = new PerfilesDAO();
        ArrayList<Perfiles> listaPerfiles = perfiles.ObtenerPerfilesEstado(true);
        m.addAttribute("listaPerfiles", listaPerfiles);        
        return "Seguridad/NuevoUsuario";
    }
    
    @RequestMapping("/ListaUsuarios.htm")
    public String ListaUsuarios(Model m, HttpServletRequest request){
        UsuarioDAO usuario = new UsuarioDAO();
        ArrayList<Usuarios> listaUsuario = usuario.ObtenerTodosUsuarios();
        m.addAttribute("listaUsuario", listaUsuario);
        return "Seguridad/ListaUsuarios";
    }
   
     @RequestMapping("/ListaPerfiles.htm")
    public String ListaPerfiles(Model m){
        perfilDAO opc = new perfilDAO();
        List listaP = opc.listaPerfiles();
        ArrayList<String> idp = new ArrayList<String>();
        ArrayList<String> nombre = new ArrayList<String>();
        ArrayList<String> descripcion = new ArrayList<String>();
        ArrayList<String> estado = new ArrayList<String>();
        List<Object[]> listDatosp = listaP;
        for (Object[] datos : listDatosp) {
            idp.add((String) datos[0].toString());
            nombre.add((String) datos[1].toString());
            descripcion.add((String) datos[2].toString());
            estado.add((String) datos[3].toString());
        }
        m.addAttribute("idp",idp);
        m.addAttribute("nomperf",nombre);
        m.addAttribute("desL",descripcion);
        m.addAttribute("estL",estado);
        return "Seguridad/ListaPerfiles";
    }
    
    @RequestMapping("/Bitacora.htm")
    public String Bitacora(){
        return "Seguridad/Bitacora";
    }
     
    @RequestMapping("/BuscarReportes.htm")
    public String BuscarReportes(){
        return "HojasdeTrabajo/BuscarReportes";
    }
    
    @RequestMapping("/Patologia.htm")
    public String Patologia(){
        return "EstadisticaPatologia/Patologia";
    }
    
    @RequestMapping("/listaFirmas.htm")
    public String listaFirmas(){
        return "Parametria/listaFirmas";
    }
   
    @RequestMapping("/ListaIDCitologia.htm")
    public String ListaIDCitologia(){
        return "Parametria/ListaIDCitologia";
    }
    
    @RequestMapping("/NuevaArea.htm")
    public String NuevaArea(){        
        return "Parametria/NuevaArea";
    }
    
    @RequestMapping(value="/NuevaArea.htm", method = RequestMethod.POST)
    public String InsertNuevaArea(Model m, HttpServletRequest request, @RequestParam("NombreArea") String nombre){
        AreaDAO area = new AreaDAO();
        area.AgregarArea(nombre, 0, "");
        return "principal";
    }
    
    @RequestMapping(value="/NuevoUsuario.htm", method = RequestMethod.POST)
    public String InsertNuevoUsuario(Model m, HttpServletRequest request, @RequestParam("Nombre") String nombre, 
            @RequestParam("Correo") String correo, @RequestParam("Area") int area, @RequestParam("Estado") String estado, 
            @RequestParam("WebApp") boolean web, @RequestParam("MobileApp") boolean mobile, @RequestParam("asignados") String asignados){
        
        
        SecureRandom random = new SecureRandom();
        String passw = new BigInteger(130, random).toString(32).substring(0, 6).toUpperCase();
        UsuarioDAO usuario = new UsuarioDAO();
        boolean estadoU=true;
        
        if(estado.equals("Inactivo"))
            estadoU=false;
                    
        String num = usuario.AgregarUsuario(nombre, correo, area, estadoU, web, mobile, 0, "", passw);
        
        UsuarioPorPerfilDAO usxp = new UsuarioPorPerfilDAO();
        usxp.AgregarUsuarioPorPerfil(asignados, Integer.valueOf(num), 0, "");
        
        EnviarCorreo enviocorreo = new EnviarCorreo();
        String mensajeCorreo = "<p style='font-family: Verdana, sans-serif;text-align: center;font-size:25px; '>Bienvenido al sistema PIF Patología</p>" 
                                +"<div style='font-family: Arial, Helvetica, sans-serif;font-size:16px;text-align: justify;'><br/>"
                                +"Hola "+nombre+", te damos la bienvenida a tu nuevo asistente de laboratorio, acontinuación te adjuntamos tus credenciales nuevas: <br/>"
                                +"<ul style='list-style-type:disc'>" 
                                +"  <li>Usuario: "+correo+"</li>" 
                                +"  <li>Contraseña: "+passw+"</li>"  
                                +"</ul><br/>"
                                + "Esperamos que le saque el mejor provecho a esta nueva plataforma.<br/></div>";
        
        
        enviocorreo.send_mail(correo,"","Bienvenido a PIF Patología",mensajeCorreo);
        
        return "principal";
    }
    
}
