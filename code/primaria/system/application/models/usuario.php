<?php
class Usuario extends Doctrine_Record {

	public function setTableDefinition() {
		$this->hasColumn('USUARIO_ID as usuarioId', 'string', 50, array('unique' => 'true','notnull' => true, 'primary' => true));
		$this->hasColumn('USUARIO_NOMBRE as username', 'string', 50,array('unique' => 'true'));
		$this->hasColumn('USUARIO_PASSWORD as password', 'string', 50);
		$this->hasColumn('USUARIO_FACEBOOK_ID as facebookId', 'string', 50, array('unique' => 'true'));
		$this->hasColumn('USUARIO_FECHA_EXPIRACION AS fechaExpiracion', 'timestamp');
		$this->hasColumn('USUARIO_STATUS AS status', 'enum', null,array('values' => array('ACTIVO', 'INACTIVO'), 'default' => 'ACTIVO'));
	}

	public function setUp() {
		$this->setTableName('rwkn_usuario');
		$this->actAs('Timestampable');
		$this->hasMutator('password', '_encrypt_password');
		
		$this->hasMany('PersonaRol as PersonaRoles', array(
                'local' => 'usuarioId',
                'foreign' => 'personaRolId',
                'refClass' => 'PersonaRolUsuario'
            )
        );
		
	}

	protected function _encrypt_password($value) {
		$salt = '#*seCrEt!@-*%';
		$this->_set('password', md5($salt . $value));
	}
}
?>