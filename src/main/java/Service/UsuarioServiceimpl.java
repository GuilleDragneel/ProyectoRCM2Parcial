/*
    Autor= Guillermo Daniel Cruz Ortega
    Fecha creacion= 19/04/2022
    Fecha actualizacion= 10/05/2022
    Descripcion= Clase UsuarioServiceimpl implementando IUsuarioService
 */
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

    @Override
    public void eliminarRegistro(Usuario usuario) {
        modelo.eliminarRegistro(usuario);
    }

    @Override
    public List<Usuario> obtenerRegistros() {
        return modelo.obtenerRegistros();
    }

    @Override
    public Usuario obtenerRegistro(int idUsuario) {
        return modelo.obtenerRegistro(idUsuario);
    }

}
