/*
    Autor: Guillermo Daniel Cruz Ortega
    Fecha creacion: 07/06/2022
    Fecha actualizacion= 07/06/2022
    Descripcion= Clase Productos y metodos get y set
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
@Table(name = "productos")
public class Productos implements Serializable {
    
/*
    Definicion de datos
*/
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "codigo")
    private Integer codigo;
    @Column(name = "nombreprod", length = 20, nullable = true)
    private String nombreprod;
    @Column(name = "descripcion", length = 50, nullable = true)
    private String descripcion;
    @Column(name = "total")
    private Integer total;
    
/*
    Constructor vacio y con un parametro
*/
    public Productos() {
    }

    public Productos(Integer codigo) {
        this.codigo = codigo;
    }
    
/*
    Métodos set y get de los campos del producto
*/
    public Integer getCodigo() {
        return codigo;
    }

    public void setCodigo(Integer codigo) {
        this.codigo = codigo;
    }

    public String getNombreprod() {
        return nombreprod;
    }

    public void setNombreprod(String nombreprod) {
        this.nombreprod = nombreprod;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

}
