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
        
        area.AgregarArea(nombre, estadoU, 0, "");
        return "principal";
    }
    
    @RequestMapping("/ListaAreas.htm")
    public String ListaAreas(Model m, HttpServletRequest request){
        
        AreaDAO area = new AreaDAO();        
        ArrayList<Area> listaArea = area.ObtenerTodasAreas();
        m.addAttribute("listaArea", listaArea);
        return "Parametria/ListaAreas";
        
    }
       
@RequestMapping(value = "upAreaEstado.htm", method = RequestMethod.POST) 
    public ModelAndView upAreaEst(@RequestParam("bol") String bol,@RequestParam("idp") int idp) throws Exception {
        ModelAndView mv = new ModelAndView("cargatempPermisos");
        AreaDAO opc = new AreaDAO();

        String idper = opc.updAreaestado(bol,idp);       

        mv.addObject("resp","No");
        return mv;
    } 
}