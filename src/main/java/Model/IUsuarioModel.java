package Model;

import Entity.Usuario;
import java.util.List;

public interface IUsuarioModel {

    public void crearRegistro(Usuario usuario);

    public void actualizarRegistro(Usuario usuario);

    public void eliminarRegistro(int idUsuario);

    public List<Usuario> obtenerRegistros();

    public Usuario obtenerRegistro(int idUsuario);
}
