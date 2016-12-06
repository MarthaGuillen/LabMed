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
import modelo.dao.FirmasDAO;
import modelo.pojo.Area;
import modelo.pojo.Firmasmedicos;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class FirmasController {
    
 

    
    @RequestMapping("/listaFirmas.htm")
    public String ListaFirmas(Model m, HttpServletRequest request){
        FirmasDAO Firmasm = new FirmasDAO();
        ArrayList<Firmasmedicos> ListaFirmas = Firmasm.ObtenerFirmas();
        m.addAttribute("ListaFirmas", ListaFirmas); 
        return "Parametria/listaFirmas";
    }
              
       @RequestMapping(value="NuevaFirma2.htm", method = RequestMethod.POST)
        public String InsertNuevaFirma(Model m, HttpServletRequest request,@RequestParam("NombreDoc") String nombre, @RequestParam("CodDoc") String codigo,@RequestParam("Estado") String estado){
        FirmasDAO firmas = new FirmasDAO();
        boolean estadoU=true;
        if(estado.equals("Inactivo"))
            estadoU=false;
        firmas.AgregarFirma(nombre, codigo, estadoU, 0,"");
        return "principal";
    }
        
      @RequestMapping(value = "cargaVistaFirma.htm", method = RequestMethod.POST) 
     public ModelAndView guarda(@RequestParam("idp") int idf) throws Exception {
      ModelAndView mv = new ModelAndView("pgCargaVistaFirma");
        FirmasDAO opc = new FirmasDAO();

        
        List listaP1 = opc.cargaInfoArea(idf);
        String nombre = "";
        String codigo = "";
        String estado = "";
        List<Object[]> listDatosp = listaP1;
        for (Object[] datos : listDatosp) {
            nombre = (String) datos[0].toString();
            codigo = (String) datos[1].toString();
            estado = (String) datos[2].toString();
        }
        mv.addObject("nombre",nombre);
        mv.addObject("codigo",codigo);
        mv.addObject("estado",estado);
        
        mv.addObject("resp","No");
      return mv;
    }   
        
        
        

       
}
