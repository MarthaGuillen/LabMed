/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pifpatologia.contollers;


import java.security.SecureRandom;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import modelo.dao.CitologiaDAO;
import modelo.dao.FirmasDAO;
import modelo.pojo.Firmasmedicos;
import modelo.pojo.Citologia;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author SIST001
 */
@Controller
public class citologiaController {
    
    
    @RequestMapping("/citologia.htm")
    public String Citologia(Model m, HttpServletRequest request){
        FirmasDAO Firmasm = new FirmasDAO();
        ArrayList<Firmasmedicos> ListaFirmas = Firmasm.ObtenerFirmas();
        m.addAttribute("ListaFirmas", ListaFirmas);  
       
        
            
        return "Resultados/Citologia";
    }
            
    

    @RequestMapping(value = "cargacamphansa.htm", method = RequestMethod.POST) 
     public ModelAndView guarda(@RequestParam("idh") int idh) throws Exception {
      ModelAndView mv = new ModelAndView("cargacamphansa");
        CitologiaDAO opc = new CitologiaDAO();
        
        List listaP1 = opc.cargacamposhansa(idh);
        String idhansa = "";
        String orden = "";
        String correo = "";
        String paciente = "";
        String direccion = "";
        String medico = "";
        String edad = "";
        String sexo = "";
        String sede = "";
        
        List<Object[]> listDatosp = listaP1;
        for (Object[] datos : listDatosp) {
            idhansa = (String) datos[0].toString();
            orden = (String) datos[1].toString();
            correo = (String) datos[2].toString();
            paciente = (String) datos[3].toString( );
            direccion = (String) datos[4].toString();
            medico = (String) datos[5].toString();
            edad = (String) datos[6].toString();
            sexo = (String) datos[7].toString();
            sede = (String) datos[8].toString();
        }
        mv.addObject("idhansa",idh);
        mv.addObject("orden",orden);
        mv.addObject("correo",correo);
        mv.addObject("paciente",paciente);
        mv.addObject("direccion",direccion);
        mv.addObject("medico",medico);
        mv.addObject("edad",edad);
        mv.addObject("sexo",edad);
        mv.addObject("sede",sede);
        
      return mv;
    }
     
     
      @RequestMapping(value = "guardarCitologia.htm", method = RequestMethod.POST) 
      public ModelAndView guarda(@RequestParam("DetCancer") boolean deteccioncancer_, @RequestParam("IndMaduracion") boolean indicemaduracion_,@RequestParam("Otros") String otrosindices_,@RequestParam("Medico") String diagnosticoclinico_,@RequestParam("FUR") String fur_,@RequestParam("FUP") String fup_,@RequestParam("TOPOG") String  gravidad_,@RequestParam("Para") String para_,@RequestParam("Abortos") int abortos_,@RequestParam("idcito") int idtblcatcito_,@RequestParam("Firma1") int idtblfirma1_, @RequestParam("Firma2") int  idtblfirma2_,@RequestParam("Otros2") String otros_,@RequestParam("FechaInforme") Date fechainforme_,@RequestParam("FechaMuestra") Date fechamuestra_,@RequestParam("DescMacro") String informe_)throws Exception{
      ModelAndView mv = new ModelAndView("guardarCitologia");
        CitologiaDAO opc = new CitologiaDAO();
//        String p1 = new String(nombre.getBytes("ISO-8859-1"), "UTF-8");
//        String p2 = new String(desc.getBytes("ISO-8859-1"), "UTF-8");
//        boolean deteccioncancer_;
//        boolean indicemaduracion_
//        String otrosindices_, 
//        String diagnosticoclinico_,
//        String fur_, 
//        String fup_, 
//        String  gravidad_, 
//        String para_,
//        int abortos_, 
//        int idtblcatcito_, 
//        int idtblfirma1_, 
//        int  idtblfirma2_,
//        String otros_, 
//        Date fechainforme_, 
//        Date fechamuestra_,
//        String informe_
        String idCito = opc.guardarCitologia( deteccioncancer_, indicemaduracion_, otrosindices_,  diagnosticoclinico_, fur_,  fup_,   gravidad_,  para_, abortos_,  idtblcatcito_,  idtblfirma1_,   idtblfirma2_, otros_,  fechainforme_,  fechamuestra_,  informe_);
       
        mv.addObject("resp","No");
      return mv;
    } 
     
 
}


