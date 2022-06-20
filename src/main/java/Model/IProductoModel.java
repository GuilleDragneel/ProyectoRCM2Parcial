/*
    Autor= Guillermo Daniel Cruz Ortega
    Fecha creacion= 03/06/2022
    Fecha actualizacion= 03/06/2022
    Descripcion= Interfaz IProductoModel
 */
package Model;

import Entity.Productos;
import java.util.List;

/*
    Definición de una interface
*/
public interface IProductoModel {
    
/*
    Definición de métodos a ocupar en productos
*/
    public void crearRegistroP(Productos producto);

    public void eliminarRegistroP(Productos producto);

    public Productos obtenerRegistro(int idProducto);

    public List<Productos> obtenerRegistros();
}
