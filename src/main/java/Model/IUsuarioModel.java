/*
    Autor= Guillermo Daniel Cruz Ortega
    Fecha creacion= 19/04/2022
    Fecha actualizacion= 10/05/2022
    Descripcion= Interfaz IUsuarioModel
 */
package Model;

import Entity.Usuario;
import java.util.List;

/*
    Definición de una interface
*/
public interface IUsuarioModel {
    
/*
    Definición de métodos a ocupar en usuario
*/
    public void crearRegistro(Usuario usuario);

    public void actualizarRegistro(Usuario usuario);

    public void eliminarRegistro(Usuario usuario);

    public List<Usuario> obtenerRegistros();

    public Usuario obtenerRegistro(int idUsuario);
}
