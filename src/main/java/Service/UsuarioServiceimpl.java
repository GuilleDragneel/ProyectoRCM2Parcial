/*
    Autor= Guillermo Daniel Cruz Ortega
    Fecha creación= 19/04/2022
    Fecha actualización= 10/05/2022
    Descripción= Clase UsuarioServiceimpl implementando IUsuarioService
 */
package Service;

import Entity.Usuario;
import Model.IUsuarioModel;
import Model.UsuarioModelimpl;
import java.util.List;

public class UsuarioServiceimpl implements IUsuarioService {

/*
    Definición objeto a ocupar
*/
    IUsuarioModel modelo = new UsuarioModelimpl();

/*
    Método para crear un usuario
*/
    @Override
    public void crearRegistro(Usuario usuario) {
        modelo.crearRegistro(usuario);
    }

/*
    Método para actualizar un usuario
*/
    @Override
    public void actualizarRegistro(Usuario usuario) {
        modelo.actualizarRegistro(usuario);
    }

/*
    Método para eliminar un usuario
*/
    @Override
    public void eliminarRegistro(Usuario usuario) {
        modelo.eliminarRegistro(usuario);
    }

/*
    Método para obtener uns lista de usuarios
*/
    @Override
    public List<Usuario> obtenerRegistros() {
        return modelo.obtenerRegistros();
    }

/*
    Método para obtener un usuario
*/
    @Override
    public Usuario obtenerRegistro(int idUsuario) {
        return modelo.obtenerRegistro(idUsuario);
    }

}
