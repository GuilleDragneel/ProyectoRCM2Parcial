/*
    Autor= Guillermo Daniel Cruz Ortega
    Fecha creacion= 07/06/2022
    Fecha actualizacion= 07/06/2022
    Descripcion= Clase Desproductos y metodos get y set
 */
package Entity;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "desproductos")
public class Desproductos implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "codigo")
    private Integer codigo;
    @Column(name = "nom_producto", length = 20, nullable = true)
    private String nomProducto;
    @Column(name = "descripcion", length = 60, nullable = true)
    private String descripcion;
    @Column(name = "precio")
    private Integer precio;
    @Column(name = "imagen", length = 20, nullable = true)
    private String imagen;

    public Desproductos() {
    }

    public Desproductos(Integer codigo) {
        this.codigo = codigo;
    }

    public Integer getCodigo() {
        return codigo;
    }

    public void setCodigo(Integer codigo) {
        this.codigo = codigo;
    }

    public String getNomProducto() {
        return nomProducto;
    }

    public void setNomProducto(String nomProducto) {
        this.nomProducto = nomProducto;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Integer getPrecio() {
        return precio;
    }

    public void setPrecio(Integer precio) {
        this.precio = precio;
    }
    
    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }
}
