<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Regist_user extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('Regist_model'); //load model gejala
	}
	
	public function index()
	{
		$data['contentuser'] = 'user/regist'; 
		$this->load->view('templates/user/login/index', $data);
	}

	public function create()
	{
		if (isset($_POST['submit'])){
			$this->Regist_model->insert();
			redirect('login_user/index');
		}
		
		$data['contentuser'] = 'user/login'; 
		$this->load->view('templates/user/index', $data);
	}

}