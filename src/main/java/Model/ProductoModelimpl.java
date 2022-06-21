/*
    Autor= Guillermo Daniel Cruz Ortega
    Fecha creación= 03/06/2022
    Fecha actualización= 03/06/2022
    Descripción= Clase IProductoModel 
 */
package Model;

import Entity.Productos;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class ProductoModelimpl implements IProductoModel {
    
/*
    Definicion objetos a ocupar
*/
    private SessionFactory sf;
    private Session s;

/*
    Método de creación de producto
*/    
    @Override
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
//System.out.println("Error al crear registro de producto " + e.getMessage());
        }
    }

/*
    Método de eliminación producto
*/  
    @Override
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
//System.out.println("Error al eliminar registro de producto" + e.getMessage());
        }
    }

/*
    Método para obtener un producto
*/  
    @Override
    public Productos obtenerRegistro(int idProducto) {
        try {
            sf = new Configuration().configure().buildSessionFactory();
            s = sf.openSession();
            Productos producto = (Productos) s.get(Productos.class, idProducto);
            s.close();
            sf.close();
            return producto;
        } catch (HibernateException e) {
//System.out.println("Error al obtener resgistro de producto" + e.getMessage());
        }
        return null;
    }
    
/*
    Método para obtener una lista de productos
*/      
    public List<Productos> obtenerRegistros() {
        List<Productos> listaUsuario = null;
        try {
            sf = new Configuration().configure().buildSessionFactory();
            s = sf.openSession();
            listaUsuario = s.createCriteria(Productos.class).list();
            s.close();
            sf.close();
        } catch (HibernateException e) {
//System.out.println("Error al obtener registros " + e.getMessage());
        }
        return listaUsuario;
    }

}
