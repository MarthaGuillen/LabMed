/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function guardarCitologia()
{
                var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
            if (xhttp.readyState == 4 && xhttp.status == 200) {
                document.getElementById("creaNuevo").innerHTML = xhttp.responseText;
                $('#processing-modal').modal('hide');
                swal({
                    title: 'Perfil creado correctamente.',
                    text: "",
                    type: 'success',
                    confirmButtonText: 'Ok'
                }).then(function() {
                    cargarContenido("ListaPerfiles.htm","contenido");
                })
            }
            }
            xhttp.open("POST", "guardarCitologia.htm", true);
            xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xhttp.send("nombre="+nomp+"&desc="+desc+"&per="+mn+"&bol="+bool);
            deteccioncancer_, indicemaduracion_, otrosindices_,  diagnosticoclinico_, fur_,  fup_,   gravidad_,  para_, abortos_,  idtblcatcito_,  idtblfirma1_,   idtblfirma2_, otros_,  fechainforme_,  fechamuestra_,  informe_
           // @RequestParam("DetCancer") boolean deteccioncancer_, @RequestParam("IndMaduracion") boolean indicemaduracion_,@RequestParam("Otros") String otrosindices_,@RequestParam("Medico") String diagnosticoclinico_,@RequestParam("FUR") String fur_,@RequestParam("FUP") String fup_,@RequestParam("TOPOG") String  gravidad_,@RequestParam("Para") String para_,@RequestParam("Abortos") int abortos_,@RequestParam("idcito") int idtblcatcito_,@RequestParam("Firma1") int idtblfirma1_, @RequestParam("Firma2") int  idtblfirma2_,@RequestParam("Otros2") String otros_,@RequestParam("FechaInforme") Date fechainforme_,@RequestParam("FechaMuestra") Date fechamuestra_,@RequestParam("DescMacro") String informe_
}