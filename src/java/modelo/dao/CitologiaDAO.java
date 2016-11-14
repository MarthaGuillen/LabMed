/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.dao;
import java.util.Date;
        
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import modelo.pojo.Citologia;
import modelo.pojo.Firmasmedicos;
import modelo.pojo.Area;
import modelo.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;



/**
 *
 * @author SIST001
 */
public class CitologiaDAO {  
    
    
   public String guardarCitologia(boolean deteccioncancer_,boolean indicemaduracion_,String otrosindices_, String diagnosticoclinico_,String fur_, String fup_, String  gravidad_, String para_,int abortos_, int idtblcatcito_, int idtblfirma1_, int  idtblfirma2_,String otros_, Date fechainforme_, Date fechamuestra_, String informe_){
        
        Session session = HibernateUtil.getSessionFactory().openSession();
        String sql = "select fn_insert_cito('"+ deteccioncancer_ +"','"+ indicemaduracion_ +"','"+ otrosindices_ +"','"+ diagnosticoclinico_ +"','"+ fur_ +"','" + fup_  +"','"+ gravidad_  +"','"+  para_  +"','"+ abortos_ +"','"+ idtblcatcito_ +"','"+ idtblfirma1_ +"','"+ idtblfirma2_ +"','"+ otros_ +"','"+ fechainforme_ +"','"+ fechamuestra_ +"','"+informe_+"' );";
        
        List<String> filmList = new ArrayList<String>();
        try {
            
            org.hibernate.Transaction tx = session.beginTransaction();
            Query q = session.createSQLQuery(sql);
            //int result = q.executeUpdate();
            filmList = q.list();
            tx.commit();

        } catch (Exception e) {
            e.printStackTrace();
        }
        session.close();
        return filmList.get(0).toString();
    }
    
 
    
    public List cargacamposhansa(int idhansa){
        
        Session session = HibernateUtil.getSessionFactory().openSession();
        String sql = "Select * from listarcamposhansbyid('"+idhansa+"')";
        
        List<Object[]> listaget = new ArrayList<Object[]>();
        try {
            org.hibernate.Transaction tx = session.beginTransaction();
            Query q = session.createSQLQuery(sql);
            listaget = q.list();

        } catch (Exception e) {
            e.printStackTrace();
        }finally { 
          session.close();
        }

       
        return listaget;
    }
  
}
