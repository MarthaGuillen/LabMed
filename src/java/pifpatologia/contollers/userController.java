/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pifpatologia.contollers;

import java.util.ArrayList;
import java.util.List;
import modelo.dao.PerfilesDAO;
import modelo.dao.UsuarioDAO;
import modelo.dao.UsuarioPorPerfilDAO;
import modelo.pojo.Perfiles;
import modelo.pojo.Usuarios;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Sinergia14
 */
@Controller
public class userController {
    
    
       
    @RequestMapping(value = "cargaVistaUser.htm", method = RequestMethod.POST) 
    public ModelAndView guarda(@RequestParam("idp") int idp) throws Exception {
      ModelAndView mv = new ModelAndView("pgCargaVistaUser");
        UsuarioDAO opc = new UsuarioDAO();
        
        ArrayList<Usuarios> lista = opc.ObtenerUsuario(idp);
        String nombre = "";
        String correo = "";
        //int area = 0;
        boolean estado = true;
        boolean web  = true; 
        boolean mobile = true;
        for (Usuarios datos : lista) {
            nombre = datos.getNombre();
            correo = datos.getCorreo();
            estado = datos.isEstado();
            web  = datos.isAccesoweb();
            mobile = datos.isAccesomovil();
        }
        mv.addObject("nombre",nombre);
        mv.addObject("correo",correo);
        mv.addObject("estado",estado);
        mv.addObject("web",web);
        mv.addObject("mobile",mobile);
        
        PerfilesDAO perfil = new PerfilesDAO();
        ArrayList<Perfiles> listaperfiles = perfil.ObtenerPerfilesEstado(true);
        
        mv.addObject("listaperfiles",listaperfiles);
        
        UsuarioPorPerfilDAO uxp = new UsuarioPorPerfilDAO();
        ArrayList<String> listaasignada = uxp.ObtenerPerfilesUsuario(idp);
        
        mv.addObject("listaasignada",listaasignada);  
        
        mv.addObject("resp","No");
      return mv;
    }
     
     
}
