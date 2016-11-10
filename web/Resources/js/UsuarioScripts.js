/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function cargaInfoUsuarios(id){  
    $("#tempIdPerfil").val(id);
    $('#processing-modal').modal('show');
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (xhttp.readyState == 4 && xhttp.status == 200) {
            document.getElementById("cargaPreviaUser").innerHTML = xhttp.responseText;
             $('#processing-modal').modal('hide');
             $('#editausr').modal('show');
        }
    }
    xhttp.open("POST", "cargaVistaUser.htm", true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send("idp=" + id);
    
}

