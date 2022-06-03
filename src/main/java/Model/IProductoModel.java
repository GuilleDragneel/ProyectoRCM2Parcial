package Model;

import Entity.Productos;

public interface IProductoModel {

    public void crearRegistroP(Productos producto);

    public void eliminarRegistroP(Productos producto);

    public Productos obtenerRegistro(int idProducto);
}
