/*
    Autor= Guillermo Daniel Cruz Ortega
    Fecha creación= 06/06/2022
    Fecha actualización= 06/06/2022
    Descripción= Clase DesproductoServiceimpl implementando IDesproductoService
 */
package Service;

import Entity.Desproductos;
import Model.DesProductosModelimpl;
import Model.IDesProductosModel;
import java.util.List;

/*
    Clase service de desproductos
*/  
public class DesproductosServiceimpl implements IDesproductosService {

/*
    Definición objeto a ocupar
*/
    IDesProductosModel modelo = new DesProductosModelimpl();
    
/*
    Método para crear desproducto
*/  
    @Override
    public void crearRegistro(Desproductos desproducto) {
        modelo.crearRegistroP(desproducto);
    }

/*
    Método para eliminar un desproducto
*/  
    @Override
    public void eliminarRegistro(Desproductos desproducto) {
        modelo.eliminarRegistroP(desproducto);
    }

/*
    Método obtener una lista de desproductos
*/      
    @Override
    public List<Desproductos> obtenerRegistros() {
        return modelo.obtenerRegistros();
    }

/*
    Método para obtener un desproducto
*/  
    @Override
    public Desproductos obtenerRegistro(int idDesproducto) {
        return modelo.obtenerRegistro(idDesproducto);
    }
}
