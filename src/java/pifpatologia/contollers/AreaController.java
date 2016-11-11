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
import modelo.pojo.Area;
import modelo.pojo.Perfiles;
import modelo.pojo.Usuarios;
import modelo.util.EnviarCorreo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Sinergia14
 */
@Controller
public class AreaController {
       
    @RequestMapping("/NuevaArea.htm")
    public String NuevaArea(){        
        return "Parametria/NuevaArea";
    }
    
    @RequestMapping(value="/NuevaArea.htm", method = RequestMethod.POST)
    public String InsertNuevaArea(Model m, HttpServletRequest request, @RequestParam("NombreArea") String nombre, @RequestParam("Estado") String estado){
        AreaDAO area = new AreaDAO();
        boolean estadoU=true;
        
        if(estado.equals("Inactivo"))
            estadoU=false;
        
        area.AgregarArea(nombre, 0, "");
        return "principal";
    }
    
    @RequestMapping("/ListadoDeAreas.htm")
    public String ListaAreas(Model m, HttpServletRequest request){
        AreaDAO area = new AreaDAO();
        
        ArrayList<Area> listaArea = area.ObtenerAreasEstado(true);
        m.addAttribute("listaArea", listaArea);
        return "Parametria/ListaAreas";
    }
       
//    @RequestMapping(value = "cargaVistaUser.htm", method = RequestMethod.POST) 
//    public ModelAndView guarda(@RequestParam("idp") int idp) throws Exception {
//      ModelAndView mv = new ModelAndView("Seguridad/pgCargaVistaUser");
//        UsuarioDAO opc = new UsuarioDAO();
//        
//        ArrayList<Usuarios> lista = opc.ObtenerUsuario(idp);
//        String nombre = "";
//        String correo = "";
//        //int area = 0;
//        boolean estado = true;
//        boolean web  = true; 
//        boolean mobile = true;
//        int area = 0;
//        for (Usuarios datos : lista) {
//            nombre = datos.getNombre();
//            correo = datos.getCorreo();
//            estado = datos.isEstado();
//            web  = datos.isAccesoweb();
//            mobile = datos.isAccesomovil();
//        }
//        mv.addObject("nombre",nombre);
//        mv.addObject("correo",correo);
//        mv.addObject("estado",estado);
//        mv.addObject("web",web);
//        mv.addObject("mobile",mobile);
//        mv.addObject("area", area);
//        
//        PerfilesDAO perfil = new PerfilesDAO();
//        ArrayList<Perfiles> listaperfiles = perfil.ObtenerPerfilesEstado(true);        
//        mv.addObject("listaPerfiles",listaperfiles);
//        
//        
//        UsuarioPorPerfilDAO uxp = new UsuarioPorPerfilDAO();
//        ArrayList<String> listaasignada = uxp.ObtenerPerfilesUsuario(idp);        
//        mv.addObject("listaasignada",listaasignada);
//        
//        String perfilesAsig = "";
//        for(int i=0; i<listaasignada.size(); i++){
//            if(perfilesAsig.equals("")){
//                perfilesAsig = listaasignada.get(i);
//            }else{
//                perfilesAsig = perfilesAsig+"_xk12x_"+listaasignada.get(i);
//            }
//        }
//        
//        mv.addObject("perfilesAsig", perfilesAsig);
//        
//        AreaDAO areas = new AreaDAO();
//        ArrayList<Area> listaAreas = areas.ObtenerAreasEstado(true);
//        mv.addObject("listaAreas", listaAreas);
//        
//        
//        mv.addObject("resp","No");
//      return mv;
//    }
//    
//    
//    @RequestMapping(value = "updUsrEstado.htm", method = RequestMethod.POST) 
//    public void upUser(@RequestParam("bol") String bol,@RequestParam("idp") int idp) throws Exception {
//        //ModelAndView mv = new ModelAndView("cargatempPermisos");
//        UsuarioDAO opc = new UsuarioDAO();
//
//        String idper = opc.updUsrestado(bol,idp);
//        
//
//        //mv.addObject("resp","No");
//        //return mv;
//    } 
//    
//    @RequestMapping(value = "updUsuarioC.htm", method = RequestMethod.POST) 
//    public ModelAndView updateUser(@RequestParam("Nombre") String nombre, @RequestParam("Correo") String correo, @RequestParam("Area") int area, 
//            @RequestParam("Estado") String estado, @RequestParam("WebApp") boolean web, @RequestParam("MobileApp") boolean mobile, 
//            @RequestParam("asignados") String asignados, @RequestParam("idp") int idp) throws Exception {
//         
//        ModelAndView mv = new ModelAndView("cargatempPermisos");
//        UsuarioDAO usuario = new UsuarioDAO();
//        boolean estadoU=true;
//        
//        if(estado.equals("Inactivo"))
//            estadoU=false;
//                    
//        String num = usuario.EditarUsuario(new String(nombre.getBytes("ISO-8859-1"), "UTF-8"), new String(correo.getBytes("ISO-8859-1"), "UTF-8"), 
//                area, estadoU, web, mobile, 0, "");
//        
//        UsuarioPorPerfilDAO usxp = new UsuarioPorPerfilDAO();
//        usxp.AgregarUsuarioPorPerfil(asignados, Integer.valueOf(num), 0, "");
//        
//        mv.addObject("resp","No");
//      return mv;
//    }
}
