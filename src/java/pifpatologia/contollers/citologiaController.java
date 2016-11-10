/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pifpatologia.contollers;
import java.util.ArrayList;
import java.util.List;
import modelo.dao.CitologiaDAO;
import org.springframework.stereotype.Controller;
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
    


    
 /*   @RequestMapping(value = "CarPermiso.htm", method = RequestMethod.POST)
    public ModelAndView listperfil(@RequestParam("id") int id) throws Exception {
      ModelAndView mv = new ModelAndView("cargatempPermisos");
      perfilDAO opc = new perfilDAO();
        List listaP = opc.listaPermisos();
        ArrayList<String> idp = new ArrayList<String>();
        ArrayList<String> nombre = new ArrayList<String>();
        ArrayList<String> url = new ArrayList<String>();
        List<Object[]> listDatosp = listaP;
        for (Object[] datos : listDatosp) {
            idp.add((String) datos[0].toString());
            nombre.add((String) datos[1]);
            url.add((String) datos[2]);
           
        }
        mv.addObject("idp",idp);
        mv.addObject("nomper",nombre);
        mv.addObject("urlp",url);
      return mv;
    }   
    */
    /*@RequestMapping(value = "guardaPerfil.htm", method = RequestMethod.POST) 
     public ModelAndView guarda(@RequestParam("nombre") String nombre,@RequestParam("desc") String desc,@RequestParam("per") String per,@RequestParam("bol") String bol) throws Exception {
      ModelAndView mv = new ModelAndView("cargatempPermisos");
        perfilDAO opc = new perfilDAO();
        String p1 = new String(nombre.getBytes("ISO-8859-1"), "UTF-8");
        String p2 = new String(desc.getBytes("ISO-8859-1"), "UTF-8");
        
        String idper = opc.guardaPerfil(p1,p2,bol);
        String[] per1 = per.split(",");
        for(int i=0;i<per1.length;i++){
             String insertPermiso = opc.guardaPerfilp(Integer.parseInt(per1[i]),Integer.parseInt(idper));
        }
        
        mv.addObject("resp","No");
      return mv;
    } */
    
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
     
     
//      @RequestMapping(value = "guardarcito.htm", method = RequestMethod.POST) 
//      public ModelAndView guarda(@RequestParam("idhasa"))
//      /*public ModelAndView guarda(@RequestParam("nombre") String nombre,@RequestParam("desc") String desc,@RequestParam("per") String per,@RequestParam("bol") String bol) throws Exception */{
//      ModelAndView mv = new ModelAndView("guardarcito");
//        CitologiaDAO opc = new CitologiaDAO();
//        String p1 = new String(nombre.getBytes("ISO-8859-1"), "UTF-8");
//        String p2 = new String(desc.getBytes("ISO-8859-1"), "UTF-8");
//        
//        String idper = opc.guardaPerfil(p1,p2,bol);
//        String[] per1 = per.split(",");
//        for(int i=0;i<per1.length;i++){
//             String insertPermiso = opc.guardaPerfilp(Integer.parseInt(per1[i]),Integer.parseInt(idper));
//        }
//        
//        mv.addObject("resp","No");
//      return mv;
//    } 
     
     
     
     
     
    /* @RequestMapping(value = "cargaVistaPerfil.htm", method = RequestMethod.POST) 
     public ModelAndView guarda(@RequestParam("idp") int idp) throws Exception {
      ModelAndView mv = new ModelAndView("pgCargaVistaPerfil");
        perfilDAO opc = new perfilDAO();
        
        List listaP1 = opc.cargaInfoPerfil(idp);
        String nombre = "";
        String desc = "";
        String estado = "";
        List<Object[]> listDatosp = listaP1;
        for (Object[] datos : listDatosp) {
            estado = (String) datos[0].toString();
            nombre = (String) datos[1].toString();
            desc = (String) datos[2].toString();
        }
        mv.addObject("nombrePerfil",nombre);
        mv.addObject("descPerfil",desc);
        mv.addObject("estado",estado);
        
        List listaP = opc.listaPermisos();
        ArrayList<String> idpr = new ArrayList<String>();
        ArrayList<String> nombreper = new ArrayList<String>();
        ArrayList<String> url = new ArrayList<String>();
        List<Object[]> listDatosp1 = listaP;
        for (Object[] datos : listDatosp1) {
            idpr.add((String) datos[0].toString());
            nombreper.add((String) datos[1]);
            url.add((String) datos[2]);
        }
        mv.addObject("idp",idpr);
        mv.addObject("nomper",nombreper);
        mv.addObject("urlp",url);
        
        List listaPer = opc.cargapermisosPerfil(idp);
        ArrayList<String> idspermiso = new ArrayList<String>();
        ArrayList<String> nombrepermiso = new ArrayList<String>();
        
        List<Object[]> listDatosp1r = listaPer;
        for (Object[] datos : listDatosp1r) {
            idspermiso.add((String) datos[1].toString());
            nombrepermiso.add((String) datos[0].toString());
        }
        mv.addObject("idpermisos",idspermiso);
        mv.addObject("nompermisos",nombrepermiso);
        
        
        
        mv.addObject("resp","No");
      return mv;
    }
     */
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     /*@RequestMapping(value = "updPerfil.htm", method = RequestMethod.POST) 
     public ModelAndView upPerfil(@RequestParam("nombre") String nombre,@RequestParam("desc") String desc,@RequestParam("per") String per,@RequestParam("bol") String bol,@RequestParam("idp") int idp) throws Exception {
      ModelAndView mv = new ModelAndView("cargatempPermisos");
        perfilDAO opc = new perfilDAO();
        String p1 = new String(nombre.getBytes("ISO-8859-1"), "UTF-8");
        String p2 = new String(desc.getBytes("ISO-8859-1"), "UTF-8");
        //Actualiza perfile
        
        String idper = opc.updPerfil(p1,p2,bol,idp);
        //Limpia permisos
        String limr = opc.limpiaperPerfil(idp);
        //inserta permisos
        String[] per1 = per.split(",");
        for(int i=0;i<per1.length;i++){
             String insertPermiso = opc.guardaPerfilp(Integer.parseInt(per1[i]),idp);
        }
        
        mv.addObject("resp","No");
      return mv;
    } */
    
     
     /*@RequestMapping(value = "updPerfilEstado.htm", method = RequestMethod.POST) 
     public ModelAndView upPerfil(@RequestParam("bol") String bol,@RequestParam("idp") int idp) throws Exception {
      ModelAndView mv = new ModelAndView("cargatempPermisos");
        perfilDAO opc = new perfilDAO();
        
        //Actualiza perfile
        
        String idper = opc.updPerfilestado(bol,idp);
        //Limpia permisos
        
        
        mv.addObject("resp","No");
      return mv;
    } */
}


