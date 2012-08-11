<?php
class Usuario_Actual {
	
	private static $usuario;
	
	private function __construct() {}
	
	
	
	//Funcion para acceder al usuario logueado, returna falso si no hay un usuario logueado, y si lo hay retorno el objeto del usuario
	public static function usuario() {
	
		//Si aun no existe la varible de $usuario, (por si se cerro el navegador o se abre en otra pestaña)	
		if( !isset( self::$usuario ) ){
			
			$CI =& get_instance();
			$CI->load->library('session');
			
			//Si esta seteado en session el id del usuario logueado, lo toma para consultar el objeto, si no devuelve falso
			if ( !$user_id = $CI->session->userdata('usuario_id') ){
				return FALSE;
			}
			
			//Si no  se puede obtener el objeto del usuario con el id obtenido de la session devolvemos falso
			if ( !$u = Doctrine::getTable('Usuario')->find($user_id) ){
				return FALSE;
			}
			
			//Asignamos a nuestra varaible el objeto del usuario
			self::$usuario = $u;
			
		}
		
		//Devolvemos el objeto del usuario a la funcion que llamo el metodo
		return self::$usuario;
	}
	
	
	//Autentificar usuario.
	public static function login( $username, $password ){
		
		//Obtiene el objecto usuario buscando por username
		if( $u = Doctrine::getTable('Usuario')->findOneByUsername($username) ){
		
			//Obtenemos la version mutada del password que recibimos como parametro.
			$u_input = new Usuario();
			$u_input->password = $password;
			
			// Revisando coincidencia de passwords.
			if ( $u->password == $u_input->password ){
				
				unset( $u_input );
				
				$CI =& get_instance();
				$CI->load->library('session');
				$CI->session->set_userdata('usuario_id',$u->usuarioId);
				self::$usuario = $u;
				
				return TRUE;
			}
			
			unset( $u_input );
		}
		
		//Falló login, no se encontro coincidencia de usuario y password en la base.
		return FALSE;
		
	}
	
	//Se deshabilita lo opción de clonar. ( Leer: Patrón Singleton ).
	public function __clone() {
		trigger_error('Clone is not allowed.', E_USER_ERROR);
	}
	
}
