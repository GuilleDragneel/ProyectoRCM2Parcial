/*
    Autor= Guillermo Daniel Cruz Ortega
    Fecha creacion= 07/06/2022
    Fecha actualizacion= 07/06/2022
    Descripcion= Clase IDesproductoModel 
 */
package Model;

import Entity.Desproductos;
import java.util.List;

/*
    Definición de una interface
*/
public interface IDesProductosModel {
    
/*
    Definición de métodos a ocupar en desproductos
*/
    public void crearRegistroP(Desproductos desproducto);

    public void eliminarRegistroP(Desproductos desproducto);

    public Desproductos obtenerRegistro(int idDesproducto);

    public List<Desproductos> obtenerRegistros();
    
}
