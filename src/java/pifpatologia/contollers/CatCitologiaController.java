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
import modelo.dao.CatCitoDAO;
import modelo.pojo.Catalogocitologias;
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
    
      
     @RequestMapping(value="idCito.htm", method = RequestMethod.POST)
    public String InsertNuevaCatCitologia(Model m, HttpServletRequest request, @RequestParam("NombreCatCitologia") String nomp, @RequestParam("Estado") String estado){
        CatCitoDAO catcitologia = new CatCitoDAO();
        boolean estadoU=true;
        if(estado.equals("Inactivo"))
            estadoU=false;
        catcitologia.AgregarCatCito(nomp, estadoU, 0, "");
        return "principal";
    }
    
    
    
     @RequestMapping("/ListaIDCitologia.htm")
    public String ListaCatCito(Model m, HttpServletRequest request){
        CatCitoDAO  catcitologia= new CatCitoDAO();
        System.out.println("------------------------------------------------controller");   
        ArrayList<Catalogocitologias> listacatcitologia = catcitologia.ObtenerTodosCatCitologias();
        m.addAttribute("listacatcitologia", listacatcitologia);
        return "Parametria/ListaIDCitologia";
        
    }
   
}
