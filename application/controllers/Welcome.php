<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {


	function __construct(){
		parent::__construct();
		// if($this->session->userdata('is_login') == FALSE){redirect('login_user');}
	}
	
	public function admin()
	{
		// $data['content'] = 'admin/dashboard'; //nama file yang akan jadi kontent di template
		$this->load->view('templates/login/index');
	}

	public function index()
	{
		$data['contentuser'] = 'user/home'; //nama file yang akan jadi kontent di template
		$this->load->view('templates/user/home/index', $data);
	}

	public function diagnosa()
	{
		if($this->session->userdata('is_login') == FALSE){redirect('login_user');}
		$data['contentuser'] = 'user/diagnosa'; //nama file yang akan jadi kontent di template
		$this->load->view('templates/user/diagnosa/index', $data);
	}

	public function dashboard()
	{
		if($this->session->userdata('is_login') == FALSE || $this->session->userdata('level') != 'admin'){
			redirect('welcome');
		}
		$data['content'] = 'admin/dashboard'; //nama file yang akan jadi kontent di template
		$this->load->view('templates/admin/index', $data);
	}

}
