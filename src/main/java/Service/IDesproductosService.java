/*
    Autor= Guillermo Daniel Cruz Ortega
    Fecha creacion= 06/06/2022
    Fecha actualizacion= 06/06/2022
    Descripcion= Clase IDesproductoService 
 */
package Service;

import Entity.Desproductos;
import java.util.List;

public interface IDesproductosService {

    public void crearRegistro(Desproductos desproducto);

    public void eliminarRegistro(Desproductos desproducto);

    public List<Desproductos> obtenerRegistros();

    public Desproductos obtenerRegistro(int idDesproducto);
}
