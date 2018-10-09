<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Checkup extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->helper(array('form', 'url', 'date'));
		$this->load->library(array('session'));
		$this->load->model(array('Login_model2','model_gejala_penyakit','model_gejala','model_penyakit','model_kategori'));	
		// chek_session();
	}
	
	
	public function index()
	{
		$data["title"] = "";
		$data["sub_title"] = "";
		if(!$this->input->post("gejala"))
		{
			$data["view"]="home/diagnosa/form";
			$data['listKelompok'] = $this->model_kategori->get_list_data(); 
			$this->load->view("home/diagnosa/index", $data);
		}
		else
		{
			$data["view"]="home/diagnosa/result";
			$gejala = implode(",", $this->input->post("gejala"));
			$data["listGejala"] = $this->model_gejala->get_list_by_id($gejala);
			//hitung
			$listPenyakit = $this->model_gejala_penyakit->get_by_gejala($gejala);
                        
                        $penyakit = [];
			$i=0;
			foreach($listPenyakit->result() as $value){
				$listGejala = $this->model_gejala_penyakit->get_gejala_by_penyakit($value->id_penyakit,$gejala);
				$combineCFmb=0;
				$combineCFmd=0;
				$CFBefore=0;
				$j=0;
				foreach($listGejala->result() as $value2){
					$j++;
					if($j==3){
						$combineCFmb=$value2->mb;
                        $combineCFmd=$value2->md;
                    }
					else
					$combineCFmb =$combineCFmb + ($value2->mb * (1 - $combineCFmb));
                    $combineCFmd =$combineCFmd + ($value2->md * (1 - $combineCFmd));
                    $combinehasil=$combineCFmb-$combineCFmd;
				}
				if($combinehasil >=0.5)
				//if($combinehasil);
                                
				{
                                       
                                        $penyakit[$j]=array('kode'=>$value->kode_penyakit,
										'nama'=>$value->nama_penyakit,
										'kepercayaan'=>$combineCFmb*100,
										'hasilcf'=>$combinehasil*100,
										'tidakpercaya'=>$combineCFmd*100,
										'keterangan'=>$value->keterangan);
					$i++;
				}
			}
			
			function cmp($a, $b)
			{
				return ($a["kepercayaan"] > $b["kepercayaan"]) ? -1 : 1;
			}
			usort($penyakit, "cmp");
			$data["listPenyakit"] = $penyakit;
		
			$this->load->view("home/diagnosa/index", $data);
		}
	}


}
