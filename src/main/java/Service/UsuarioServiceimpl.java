package Service;

import Entity.Usuario;
import Model.IUsuarioModel;
import Model.UsuarioModelimpl;
import java.util.List;

public class UsuarioServiceimpl implements IUsuarioService {

    IUsuarioModel modelo = new UsuarioModelimpl();

    public void crearRegistro(Usuario usuario) {
        modelo.crearRegistro(usuario);
    }

    public void actualizarRegistro(Usuario usuario) {
        modelo.actualizarRegistro(usuario);
    }

    public void eliminarRegistro(int idUsuario) {
        modelo.eliminarRegistro(idUsuario);
    }

    public List<Usuario> obtenerRegistros() {
        return modelo.obtenerRegistros();
    }

    public Usuario obtenerRegistro(int idUsuario) {
        return modelo.obtenerRegistro(idUsuario);
    }
}
