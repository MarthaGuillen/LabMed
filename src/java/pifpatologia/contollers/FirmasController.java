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
import modelo.dao.UsuarioDAO;
import modelo.dao.UsuarioPorPerfilDAO;
import modelo.pojo.Area;
import modelo.pojo.Firmasmedicos;
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
 * @author SIST001
 */
public class FirmasController {
    
     @RequestMapping("/Firmas.htm")
       public String ListaFirmas(Model m, HttpServletRequest request){
        FirmasDAO Firmasmedicos = new FirmasDAO();        
        ArrayList<Firmasmedicos> ListaFirmas = Firmasmedicos.ObtenerFirmas();
        m.addAttribute("listaFirmas", ListaFirmas);
        return "Parametria/ListaFirmas";
        
    }
    
}
