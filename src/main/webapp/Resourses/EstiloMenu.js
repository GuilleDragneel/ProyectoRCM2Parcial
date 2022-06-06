/*
 Autor= Guillermo Daniel Cruz Ortega
 Fecha creacion= 19/04/2022
 Fecha actualizacion= 06/06/2022
 Descripcion= Documento de funciones javascript
 */

function Total(id) {
    $("#tot" + id).val($("#cant" + id).val() * $("#price" + id).val());
}