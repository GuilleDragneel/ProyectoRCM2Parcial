/*
    Autor= Guillermo Daniel Cruz Ortega
    Fecha creacion= 03/06/2022
    Fecha actualizacion= 03/06/2022
    Descripcion= Clase IProductoModel 
 */
package Model;

import Entity.Productos;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class ProductoModelimpl implements IProductoModel {

    private SessionFactory sf;
    private Session s;

    public void crearRegistroP(Productos producto) {
        try {
            sf = new Configuration().configure().buildSessionFactory();
            s = sf.openSession();
            s.beginTransaction();
            s.save(producto);
            s.getTransaction().commit();
            s.close();
            sf.close();
        } catch (HibernateException e) {
            System.out.println("Error al crear registro de producto " + e.getMessage());
        }
    }

    public void eliminarRegistroP(Productos producto) {
        try {
            sf = new Configuration().configure().buildSessionFactory();
            s = sf.openSession();
            s.beginTransaction();
            s.delete(producto);
            s.getTransaction().commit();
            s.close();
            sf.close();
        } catch (HibernateException e) {
            System.out.println("Error al eliminar registro de producto" + e.getMessage());
        }
    }

    public Productos obtenerRegistro(int idProducto) {
        try {
            sf = new Configuration().configure().buildSessionFactory();
            s = sf.openSession();
            Productos producto = (Productos) s.get(Productos.class, idProducto);
            s.close();
            sf.close();
            return producto;
        } catch (HibernateException e) {
            System.out.println("Error al obtener resgistro de producto" + e.getMessage());
        }
        return null;
    }

}
