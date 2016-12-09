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
import modelo.dao.CatCitoDAO;
import modelo.dao.UsuarioPorPerfilDAO;
import modelo.pojo.Area;
import modelo.pojo.Perfiles;
import modelo.pojo.Catalogocitologias;
import modelo.util.EnviarCorreo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import org.springframework.stereotype.Controller;

/**
 *
 * @author SIST001
 */
@Controller
public class CatCitologiaController {
    
      
    @RequestMapping("/idCito.htm")
    public String AgregarIdCitologia(){
        return "Parametria/NuevoIdCito";
    }
    
      
     @RequestMapping(value="NuevoCatCito.htm", method = RequestMethod.POST)
    public String InsertNuevaCatCitologia(Model m, HttpServletRequest request, @RequestParam("NombreCatCitologia") String nombre, @RequestParam("Estado") String estado){
        CatCitoDAO catcitologia = new CatCitoDAO();
        boolean estadoU=true;
        if(estado.equals("Inactivo"))
            estadoU=false;
        catcitologia.AgregarCatCito(nombre, estadoU, 0, "");
        return "Parametria/ListasIDCitologia";
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}
