package Service;

import Entity.Usuario;
import Model.IUsuarioModel;
import Model.UsuarioModelimpl;
import java.util.List;

public class UsuarioServiceimpl implements IUsuarioService {

    IUsuarioModel modelo = new UsuarioModelimpl();

    @Override
    public void crearRegistro(Usuario usuario) {
        modelo.crearRegistro(usuario);
    }

    @Override
    public void actualizarRegistro(Usuario usuario) {
        modelo.actualizarRegistro(usuario);
    }

    public void eliminarRegistro(Usuario usuario) {
        modelo.eliminarRegistro(usuario);
    }

    public List<Usuario> obtenerRegistros() {
        return modelo.obtenerRegistros();
    }

    public Usuario obtenerRegistro(int idUsuario) {
        return modelo.obtenerRegistro(idUsuario);
    }

}
