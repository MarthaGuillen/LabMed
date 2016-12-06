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
        public ModelAndView guarda(@RequestParam("idp") int idp) throws Exception {
        ModelAndView mv = new ModelAndView("Seguridad/pgCargaVistaFirma");
        FirmasDAO opc = new FirmasDAO();
        ArrayList<Firmasmedicos> Listado = opc.cargaInfoFirma(idp);
        System.out.println(idp);
        String nombre = "";
        String codigo = "";
        boolean estado = false;
        for (int i=0; i< Listado.size(); i++){
            nombre = Listado.get(i).getNombre();
            codigo = Listado.get(i).getCodigo();
            estado = Listado.get(i).isEstado();
        }
                    
        mv.addObject("Nombre",nombre);
        mv.addObject("Codigo",codigo);
        mv.addObject("estado",true);          
                    
        mv.addObject("resp","No");
      return mv;
    }   
       
}
