/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function guardarFirma(){
    $('#processing-modal').modal('show');        
    var nomp = $('#NombreDoc').val().trim();
    var code = $('#CodDoc').val().trim();
       
    var e=0;
    var variables="";
    if(nomp===""){
        e = 1;
        document.getElementById("NombreDoc").style["border-color"]="#A94442";
        variables += "- Nombre del Medico\n";
    }
    if(code===""){
        e = 1;
        document.getElementById("CodDoc").style["border-color"]="#A94442";
        variables += "- Codigo de busqueda del Medico\n";
    }
    if (e!==0) {
        var mensaje = '<h2>Favor validar:</h2>';
        $('#processing-modal').modal('hide');
        $('#processing-modal').modal('hide');
        swal({
            title: '',
            text:  mensaje+'<p>'+variables+'</p>',
            type: 'error'
        });
    }else{
        enviarFirma();    
    }  
}


function enviarFirma(){    
    var nomp = $('#NombreDoc').val().trim();
    var code = $('#CodDoc').val().trim();
    var estado = $('input[name="Estado"]:checked').val();
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (xhttp.readyState == 4 && xhttp.status == 200) {
            document.getElementById("creaNuevo").innerHTML = xhttp.responseText;
            swal({
                title:'Firma  creada correctamente.',
                text: "",
                type:'success',
                confirmButtonText: 'Ok'
            }).then(function() {                
                $('#processing-modal').modal('hide');
                $('#processing-modal').modal('hide');
                cargarContenido("listaFirmas.htm","contenido");
            })
        }
    }
    alert("NombreDoc="+nomp+"&CodDoc="+code+"&Estado="+estado);
    xhttp.open("POST","NuevaFirma2.htm", true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send("NombreDoc="+nomp+"&CodDoc="+code+"&Estado="+estado);
}


//function estFirmaEdit(id,est){
//    var estadoA = "";
//    if(est==="true"){
//        est='false';
//        estadoA="Desactivado";
//    }else{
//        est='true';
//        estadoA="Activado"
//    ;}
//   alert("---------------hola");
//    swal({
//        title: 'Alerta!',
//        text: "Desea cambiar el estado de la Firma, al modo "+estadoA+"?",
//        type: 'warning',
//        showCancelButton: true,
//        confirmButtonColor: '#3085d6',
//        cancelButtonColor: '#d33',
//        confirmButtonText: 'Si',
//        cancelButtonText: 'No'
//    }).then(function() {
//            $('#processing-modal').modal('show');
//            var xhttp = new XMLHttpRequest();
//            xhttp.onreadystatechange = function () {
//                if (xhttp.readyState == 4 && xhttp.status == 200) {
//                    $('#processing-modal').modal('hide');
//                    cargarContenido("listaFirmas.htm","contenido");
//                }
//            }
//            alert("---------------hola 2");
//            xhttp.open("POST", "upFirmaEstado.htm", true);
//            xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
//            xhttp.send("idp=" + id +"&bol="+est);
//    });
//    }
