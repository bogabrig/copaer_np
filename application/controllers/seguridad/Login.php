<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

    public function __construct() {
        parent::__construct();
       
    }

    /**
     *          - Si los datos no son validados le devuelve mensaje de error al usuario
     */

    public function index() {
        $this->load->view(THEME . TEMPLATELOGIN, array('contenido' => 'seguridad/login/index'));
    }
}