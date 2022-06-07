/*
    Autor= Guillermo Daniel Cruz Ortega
    Fecha creacion= 06/06/2022
    Fecha actualizacion= 06/06/2022
    Descripcion= Clase DesproductoServiceimpl implementando IDesproductoService
 */
package Service;

import Entity.Desproductos;
import Model.DesProductosModelimpl;
import Model.IDesProductosModel;
import java.util.List;

public class DesproductosServiceimpl implements IDesproductosService {

    IDesProductosModel modelo = new DesProductosModelimpl();

    @Override
    public void crearRegistro(Desproductos desproducto) {
        modelo.crearRegistroP(desproducto);
    }

    @Override
    public void eliminarRegistro(Desproductos desproducto) {
        modelo.eliminarRegistroP(desproducto);
    }

    @Override
    public List<Desproductos> obtenerRegistros() {
        return modelo.obtenerRegistros();
    }

    @Override
    public Desproductos obtenerRegistro(int idDesproducto) {
        return modelo.obtenerRegistro(idDesproducto);
    }
}
