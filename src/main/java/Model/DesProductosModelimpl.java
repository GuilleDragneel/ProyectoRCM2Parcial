/*
    Autor= Guillermo Daniel Cruz Ortega
    Fecha creacion= 07/06/2022
    Fecha actualizacion= 07/06/2022
    Descripcion= Clase IDesproductoModelimpl 
 */
package Model;

import Entity.Desproductos;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class DesProductosModelimpl implements IDesProductosModel {

    private SessionFactory sf;
    private Session s;

    @Override
    public void crearRegistroP(Desproductos desproducto) {
        try {
            sf = new Configuration().configure().buildSessionFactory();
            s = sf.openSession();
            s.beginTransaction();
            s.save(desproducto);
            s.getTransaction().commit();
            s.close();
            sf.close();
        } catch (HibernateException e) {
            System.out.println("Error al crear registro de producto " + e.getMessage());
        }
    }

    @Override
    public void eliminarRegistroP(Desproductos desproducto) {
        try {
            sf = new Configuration().configure().buildSessionFactory();
            s = sf.openSession();
            s.beginTransaction();
            s.delete(desproducto);
            s.getTransaction().commit();
            s.close();
            sf.close();
        } catch (HibernateException e) {
            System.out.println("Error al eliminar registro de producto" + e.getMessage());
        }
    }

    @Override
    public Desproductos obtenerRegistro(int idDesproducto) {
        try {
            sf = new Configuration().configure().buildSessionFactory();
            s = sf.openSession();
            Desproductos producto = (Desproductos) s.get(Desproductos.class, idDesproducto);
            s.close();
            sf.close();
            return producto;
        } catch (HibernateException e) {
            System.out.println("Error al obtener resgistro de producto" + e.getMessage());
        }
        return null;
    }

    @Override
    public List<Desproductos> obtenerRegistros() {
        List<Desproductos> listaProductos = null;
        try {
            sf = new Configuration().configure().buildSessionFactory();
            s = sf.openSession();
            listaProductos = s.createCriteria(Desproductos.class).list();
            s.close();
            sf.close();
        } catch (HibernateException e) {
            System.out.println("Error al obtener registros " + e.getMessage());
        }
        return listaProductos;
    }

}
