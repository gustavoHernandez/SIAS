/* Author: Gustavo Hernandez */

/* urlSite se modifica dependiendo del dominio en donde se aloje el sistema. */
var urlSite = "http://localhost/primaria/";


//Función de Login.
function login( user, pass, fbId ){

	// Llamada AJAX por método POST
	$.post( urlSite + "login/entrar", { user: user, pass: pass, fbId:fbId }, function( data ) {
     	
     	var obj = $.parseJSON( data );
		
		if( obj.login ){
		
			window.location = urlSite + obj.accion;
			
		}else{
			
			$( "#errorLogin" ).html( obj.texto ).show( "bounce", '', 200, function(){
				$( "#errorLogin" ).fadeOut(750, function(){
					$('#password').val('');
					$('#username').focus();
				});
			});
		}
   });
}

//FUNCION DE LOGOUT
function logout(){
	$.post(urlSite+"login/salir", { accion: "logout" },function( data ) {
     	var obj = $.parseJSON(data);
		window.location = urlSite + "login";
   });
}

$(document).ready(function() {
	
	$('#loginSite').click(function(){
		
		var usuario = $("#userAdminL").val();
		var password = $("#passAdminL").val();

		login( usuario, password, 'ifFacebookIdisGiven' );
		
	});
	
});
























