/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import modelo.pojo.Usuarios;
import modelo.pojo.Usuariosporperfil;
import modelo.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Administrador
 */
public class UsuarioPorPerfilDAO {    
    
    public void AgregarUsuarioPorPerfil(String valores, int usuario, int usuariocrea, String modulo){
        
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx;
        String sql =  "select crearusuarioperfil('"+valores+"',"+usuario+");";
        System.out.println(sql);
        List<String> resultado = new ArrayList<String>();
        try {
            tx = session.beginTransaction();
            Query q = session.createSQLQuery(sql);
            resultado=q.list();
            
            tx.commit();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        session.close();    
    }
    
    public ArrayList<String> ObtenerPerfilesUsuario(int idusuario){        
        Session session = HibernateUtil.getSessionFactory().openSession();
        String sql =  "SELECT * FROM Listarusuariosxperfil("+idusuario+";";
        ArrayList<String> Listado = new ArrayList<String>();
        
        try {
            Transaction tx = session.beginTransaction();
            Query q = session.createSQLQuery(sql);
            Iterator listasecciones =  q.list().iterator();

            while(listasecciones.hasNext()){
                Object[] registro= (Object[]) listasecciones.next();
                Listado.add((String) registro[2]);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        session.close(); 
        
        return Listado;
    }
}
