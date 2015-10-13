<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Extender el Core de Codeigniter, para crear un Master Controller
 *
 * @package         COPAER_NP
 * @subpackage      CORE
 * @category        Controlador
 * @author          Gabriel Garcia
 * @author          Gabriel Garcia
 * @link            http://Gabrielgarcia.com.ar
 * @version         Current v1.0.0 
 * @copyright       Gabriel Garcia
 * @license         MIT
 * @since           12/10/2015
 */
class MY_Controller extends CI_Controller {

    public $controlador;
    public $titulo;
    public $url;
    public $vista;

    public function __construct() {
        parent::__construct();
        $this->controlador = controlador();
        $this->titulo = humanize($this->controlador);
    }

}
