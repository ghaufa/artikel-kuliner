<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Detail extends CI_Controller {
    public function __construct(){
    parent::__construct();
    }
	public function index($id) {
        $this->db->from('konfigurasi');
        $konfig = $this->db->get()->row();
    
        $this->db->from('caraousel');
        $caraousel = $this->db->get()->result_array();
    
        // Joining kategori table with konten table
        $this->db->select('konten.*, kategori.nama_kategori');
        $this->db->from('konten');
        $this->db->join('kategori', 'kategori.id_kategori = konten.id_kategori');
        $this->db->where('konten.id_konten', $id);
        $konten = $this->db->get()->result_array();


        $id_kategori = $konten[0]['id_kategori'];
        $this->db->select('konten.judul,konten.foto,konten.id_kategori,konten.id_konten, kategori.nama_kategori');
        $this->db->from('konten');
        $this->db->join('kategori', 'kategori.id_kategori = konten.id_kategori');
        $this->db->where('konten.id_kategori', $id_kategori);
        $this->db->where('konten.id_konten !=', $id); 
        $this->db->order_by('RAND()'); 
        $this->db->limit(3); 
        $rekomendasi = $this->db->get()->result_array();
    
    
        $this->db->from('kategori');
        $kategori = $this->db->get()->result_array();
    
        $data = array(
            'judul' => "Beranda | Ghaufaa",
            'konfig' => $konfig,
            'kategori' => $kategori,
            'caraousel' => $caraousel,
            'konten' => $konten,
            'rekomendasi' => $rekomendasi,
        );
    
        $this->template->load('template_user', 'user/detail', $data);
    }
    
    public function artikel(){
        
    }
}