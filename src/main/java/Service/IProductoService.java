/*
    Autor= Guillermo Daniel Cruz Ortega
    Fecha creación= 03/06/2022
    Fecha actualización= 03/06/2022
    Descripción= Clase IProductoService 
 */
package Service;

import Entity.Productos;
import java.util.List;

/*
    Interface de productos
*/ 
public interface IProductoService {
    
/*
    Método para ocupar en service productos
*/
    public void crearRegistroP(Productos producto);

    public void eliminarRegistroP(Productos producto);

    public Productos obtenerRegistro(int idProducto);

    public List<Productos> obtenerRegistros();

}
