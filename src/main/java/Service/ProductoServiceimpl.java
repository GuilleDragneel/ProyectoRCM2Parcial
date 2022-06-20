/*
    Autor= Guillermo Daniel Cruz Ortega
    Fecha creación= 03/06/2022
    Fecha actualización= 03/06/2022
    Descripción= Clase ProductoServiceimpl implementando IProductoService
 */
package Service;

import Entity.Productos;
import Model.IProductoModel;
import Model.ProductoModelimpl;
import java.util.List;

/*
    Clase service de productos
*/
public class ProductoServiceimpl implements IProductoService {

/*
    Definición objeto a ocupar
*/
    IProductoModel modelo = new ProductoModelimpl();

/*
    Método para crear producto
*/
    @Override
    public void crearRegistroP(Productos producto) {
        modelo.crearRegistroP(producto);
    }

/*
    Método para eliminar producto
*/
    @Override
    public void eliminarRegistroP(Productos producto) {
        modelo.eliminarRegistroP(producto);
    }

/*
    Método para obtener un producto
*/
    @Override
    public Productos obtenerRegistro(int idProducto) {
        return modelo.obtenerRegistro(idProducto);
    }
    
/*
    Método para obtener una lista de producto
*/
    public List<Productos> obtenerRegistros() {
        return modelo.obtenerRegistros();
    }

}
