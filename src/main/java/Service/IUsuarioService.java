package Service;

import Entity.Usuario;
import java.util.List;

public interface IUsuarioService {

    public void crearRegistro(Usuario usuario);

    public void actualizarRegistro(Usuario usuario);

    public void eliminarRegistro(Usuario usuario);

    public List<Usuario> obtenerRegistros();

    public Usuario obtenerRegistro(int idUsuario);
}
