/*
    Autor= Guillermo Daniel Cruz Ortega
    Fecha creación= 19/04/2022
    Fecha actualización= 10/05/2022
    Descripción= Clase usuario IUsuarioService
 */
package Service;

import Entity.Usuario;
import java.util.List;

/*
    Interface de usuario
*/ 
public interface IUsuarioService {

/*
    Método para ocupar en service usuario
*/
    public void crearRegistro(Usuario usuario);

    public void actualizarRegistro(Usuario usuario);

    public void eliminarRegistro(Usuario usuario);

    public List<Usuario> obtenerRegistros();

    public Usuario obtenerRegistro(int idUsuario);
}
