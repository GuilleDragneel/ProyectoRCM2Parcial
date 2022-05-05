package Model;

import Entity.Usuario;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class UsuarioModelimpl implements IUsuarioModel {

    private SessionFactory sf;
    private Session s;

    @Override
    public void crearRegistro(Usuario usuario) {
        try {
            sf = new Configuration().configure().buildSessionFactory();
            s = sf.openSession();
            s.beginTransaction();
            s.save(usuario);
            s.getTransaction().commit();
            s.close();
            sf.close();
        } catch (HibernateException e) {
            System.out.println("Error al crear registro " + e.getMessage());
        }
    }

    @Override
    public void actualizarRegistro(Usuario usuario) {
        try {
            sf = new Configuration().configure().buildSessionFactory();
            s = sf.openSession();
            s.beginTransaction();
            s.update(usuario);
            s.getTransaction().commit();
            s.close();
            sf.close();
        } catch (HibernateException e) {
            System.out.println("Error al actualizar registro " + e.getMessage());
        }
    }

    @Override
    public void eliminarRegistro(Usuario usuario) {
        try {
            sf = new Configuration().configure().buildSessionFactory();
            s = sf.openSession();
            s.beginTransaction();
            s.delete(usuario);
            s.getTransaction().commit();
            s.close();
            sf.close();
        } catch (HibernateException e) {
            System.out.println("Error al eliminar registro " + e.getMessage());
        }
    }

    @Override
    public List<Usuario> obtenerRegistros() {
        List<Usuario> listaUsuario = null;
        try {
            sf = new Configuration().configure().buildSessionFactory();
            s = sf.openSession();
            listaUsuario = s.createCriteria(Usuario.class).list();
            s.close();
            sf.close();
        } catch (HibernateException e) {
            System.out.println("Error al obtener registros " + e.getMessage());
        }
        return listaUsuario;
    }

    @Override
    public Usuario obtenerRegistro(int idUsuario) {
        Usuario usuario = null;
        try {
            sf = new Configuration().configure().buildSessionFactory();
            s = sf.openSession();
            usuario = s.get(Usuario.class, idUsuario);
            s.close();
            sf.close();
        } catch (HibernateException e) {
            System.out.println("Error al obtener resgistro " + e.getMessage());
        }
        return usuario;
    }
}
