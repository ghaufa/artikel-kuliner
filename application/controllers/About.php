<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class About extends CI_Controller {
    public function __construct(){
    parent::__construct();
    }
	public function index(){
        $this->db->from('konfigurasi');
        $konfig = $this->db->get()->row();

        $this->db->from('caraousel');
        $caraousel = $this->db->get()->result_array();

        $this->db->from('kategori');
        $kategori = $this->db->get()->result_array();
        $data = array(
            'judul' => "Beranda | Ghaufaa",
            'konfig' => $konfig,
            'kategori' => $kategori,
            'caraousel' => $caraousel,
        );
		$this->template->load('template_user','user/about' ,$data);
	}
}