/*
    Autor= Guillermo Daniel Cruz Ortega
    Fecha creacion= 03/06/2022
    Fecha actualizacion= 03/06/2022
    Descripcion= Clase ProductoServiceimpl implementando IProductoService
 */
package Service;

import Entity.Productos;
import Model.IProductoModel;
import Model.ProductoModelimpl;
import java.util.List;

public class ProductoServiceimpl implements IProductoService {

    IProductoModel modelo = new ProductoModelimpl();

    @Override
    public void crearRegistroP(Productos producto) {
        modelo.crearRegistroP(producto);
    }

    @Override
    public void eliminarRegistroP(Productos producto) {
        modelo.eliminarRegistroP(producto);
    }

    @Override
    public Productos obtenerRegistro(int idProducto) {
        return modelo.obtenerRegistro(idProducto);
    }
    
    public List<Productos> obtenerRegistros() {
        return modelo.obtenerRegistros();
    }

}
