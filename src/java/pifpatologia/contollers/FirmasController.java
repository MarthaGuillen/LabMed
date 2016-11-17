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
import modelo.dao.FirmasDAO;
import modelo.pojo.Firmasmedicos;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class FirmasController {
    
    
//     @RequestMapping("/NuevaFirma.htm")
//       public String ListaFirmas(Model m, HttpServletRequest request){
//        FirmasDAO Firmasmedicos = new FirmasDAO();        
//        ArrayList<Firmasmedicos> ListaFirmas = Firmasmedicos.ObtenerFirmas();
//        m.addAttribute("listaFirmas", ListaFirmas);
//        return "Parametria/ListaFirmas";
//        
//    }
       
     @RequestMapping(value="NuevaFirma2.htm", method = RequestMethod.POST)
        public String InsertNuevaFirma(Model m, HttpServletRequest request, 
                @RequestParam("NombreDoc") String nombre, @RequestParam("CodDoc") String codigo ,
                @RequestParam("Estado") String estado){
        FirmasDAO firmas = new FirmasDAO();
        boolean estadoU=true;
        if(estado.equals("Inactivo"))
            estadoU=false;
        firmas.AgregarFirma(nombre, codigo, estadoU, 0,"");
        return "principal";
    }
        
//        @RequestMapping(value="NuevaFirma.htm", method = RequestMethod.POST)
//        public ModelAndView guardar(@RequestParam("NombreDoc") String nombre, @RequestParam("CodDoc") String codigo ,@RequestParam("Estado") String estado) throws Exception {
//        System.out.println("------------------------------------------------------------------------------------1");
//        ModelAndView mv = new ModelAndView("cargatempPermisos");
//        FirmasDAO firmas = new FirmasDAO();
//        boolean estadoU=true;
//        if(estado.equals("Inactivo"))
//            estadoU=false;
//        System.out.println("------------------------------------------------------------------------------------adads");
//        //firmas.AgregarFirma(nombre, codigo, estadoU);
//       firmas.AgregarFirma(nombre, codigo, estadoU);
//        mv.addObject("resp","No");
//      return mv;
//    } 
       
}
