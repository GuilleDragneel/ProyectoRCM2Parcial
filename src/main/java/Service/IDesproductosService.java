/*
    Autor= Guillermo Daniel Cruz Ortega
    Fecha creación= 06/06/2022
    Fecha actualización= 06/06/2022
    Descripción= Clase IDesproductoService 
 */
package Service;

import Entity.Desproductos;
import java.util.List;

/*
    Interface de desproductos
*/  
public interface IDesproductosService {

/*
    Método para ocupar en service desproductos
*/  
    public void crearRegistro(Desproductos desproducto);

    public void eliminarRegistro(Desproductos desproducto);

    public List<Desproductos> obtenerRegistros();

    public Desproductos obtenerRegistro(int idDesproducto);
}
