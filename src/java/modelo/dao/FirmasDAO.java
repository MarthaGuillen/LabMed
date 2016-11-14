/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.dao;

import java.util.ArrayList;
import java.util.Iterator;
import modelo.pojo.Firmasmedicos;
import modelo.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author SIST001
 */
public class FirmasDAO {
    
       
    
        
         public ArrayList<Firmasmedicos> ObtenerFirmas(){        
        Session session = HibernateUtil.getSessionFactory().openSession();
        String sql =  "SELECT * FROM listafirmas();";
        Firmasmedicos cat;
        ArrayList<Firmasmedicos> ListadoFirmas= new ArrayList<Firmasmedicos>();
        
        try {
            Transaction tx = session.beginTransaction();
            Query q = session.createSQLQuery(sql);
            Iterator listasecciones =  q.list().iterator();

            while(listasecciones.hasNext()){
                Object[] registro= (Object[]) listasecciones.next();
                cat= new Firmasmedicos();
                cat.setIdtblfirmamed((int) registro[0]);
                cat.setNombre((String) registro[1]);
                cat.setCodigo((String) registro[2]);
                ListadoFirmas.add(cat);
                
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        session.close(); 
        
        return ListadoFirmas;
    }
    
    
    
    
    
    
}
