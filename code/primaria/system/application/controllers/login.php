<?php
class Login extends Controller {
	
	public function __construct() {
		parent::Controller();
		$this->load->model("login_model");
		$this->load->helper('url');
	}
	
	public function index(){
	
		/* Si ya se identificó en el sistema y regresa al login, se redirige. */
		if( $this->session->userdata("loggedIn") ){
			redirect('/home', 'location');			
		}else{
			$this->load->view('view_login' );	
		}
		
	}
	
	//Funcion generica que se manda a llamar cuando un usuario intenta loguearse en el sitio.
	public function entrar(){
	
		$respuesta['accion'] = "home"; // Accion 'principal' provisional. Se elige de acuerdo a los permisos del usuario logueado.
		
		if( $this->login( $this->input->post('user'), $this->input->post('pass') ) ){
			
			$respuesta['login'] = 1;
			
		}else{
			$respuesta['login'] = 0;
			$respuesta['texto'] = "El usuario y/o password son incorrectos.";
		}
		
		echo json_encode($respuesta);
	}
	
	public function login( $user, $pass ){
	
		if( $this->login_model->checkUserLogin( $user, $pass ) ){
		
		    $uid	 = $this->login_model->getUserId( $user );
	        $usuario = $this->login_model->obtenerNombreUsuario( $uid );
				
	        $this->session->set_userdata( "loggedIn", true );
	        $this->session->set_userdata( "loggedUserId", $uid );
			$this->session->set_userdata( "loggedUserName", $usuario );
					
			return TRUE;
	            
		} else {
	    	
	    	return FALSE;
			
	    }
	
	}
	
	
	
	//Funcion generica que se manda a llamar cuando un usuario presiona el link de salir
	public function salir(){
		$this->session->sess_destroy(); //Destruimos la sesion.
		
	}
	
}
