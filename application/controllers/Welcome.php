<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {


	function __construct(){
		parent::__construct();
		$this->load->model(array('Kelompok_model', 'Nilaicf_model', 'Gejala_model'));
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

		if (!$this->input->post('gejala')) {
			$data['contentuser'] = 'user/diagnosa'; //nama file yang akan jadi kontent di template
			$data['listKelompok'] = $this->Kelompok_model->get_list_data();
			$this->load->view('templates/user/diagnosa/index', $data);

		}else{
			$data["contentuser"]="user/hasil_diagnosa";
			$gejala = implode(",", $this->input->post("gejala"));
			$data["listGejala"] = $this->Gejala_model->get_list_by_id($gejala);
			//hitung
			$listPenyakit = $this->Nilaicf_model->get_by_gejala($gejala);
			$penyakit = array();
			$i=0;
			foreach($listPenyakit->result() as $value){
				$listGejala = $this->Nilaicf_model->get_gejala_by_penyakit($value->penyakit_id,$gejala);
				$combineCF=0;
				$CFBefore=0;
				$j=0;
				foreach($listGejala->result() as $value2){
					$j++;
					if($j==1)
						$combineCF=$value2->mb;
					else
					$combineCF =$combineCF + ($value2->mb * (1 - $combineCF));
				}
				if($combineCF>=0.5)
				{
					$penyakit[$i]=array('kode'=>$value->kode,
										'nama'=>$value->nama,
										'kepercayaan'=>$combineCF*100,
										'keterangan'=>$value->keterangan);
					$this->db->insert('hasil_diagnosa', $penyakit[$i]);
					$i++;
				}
			}

			function cmp($a, $b)
			{
				return ($a["kepercayaan"] > $b["kepercayaan"]) ? -1 : 1;
			}
			usort($penyakit, "cmp");
			$data["listPenyakit"] = $penyakit;
			$this->load->view('templates/user/diagnosa/index', $data);
		}
	}

	public function dashboard()
	{
		if($this->session->userdata('is_login') == FALSE || $this->session->userdata('level') != 'admin'){
			redirect('welcome/admin');
		}
		$data['content'] = 'admin/dashboard'; //nama file yang akan jadi kontent di template
		$this->load->view('templates/admin/index', $data);
	}

}
