<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
    public function __construct(){
    parent::__construct();
    }
	public function index(){
        $this->db->from('konfigurasi');
        $konfig = $this->db->get()->row();

        $this->db->from('caraousel');
        $caraousel = $this->db->get()->result_array();

        $this->db->select('*')->from('konten a');
        $this->db->join('kategori b','a.id_kategori=b.id_kategori','left');
        $this->db->join('user c','a.username=c.username','left');
		$this->db->order_by('tanggal','DESC');
		$konten = $this->db->get()->result_array();

        $this->db->from('kategori');
        $kategori = $this->db->get()->result_array();
        $data = array(
            'judul' => "Beranda | Ghaufaa",
            'konfig' => $konfig,
            'konfig' => $konfig,
            'kategori' => $kategori,
            'caraousel' => $caraousel,
            'konten' => $konten,
        );
		$this->template->load('template_user','user/beranda' ,$data);
	}
    public function artikel(){
        
    }
    public function kontak(){
        $this->db->from('konfigurasi');
        $konfig = $this->db->get()->row();

        $this->db->select('*')->from('konten a');
        $this->db->join('kategori b','a.id_kategori=b.id_kategori','left');
        $this->db->join('user c','a.username=c.username','left');
		$this->db->order_by('tanggal','DESC');
		$konten = $this->db->get()->result_array();

        $this->db->from('kategori');
        $kategori = $this->db->get()->result_array();
        $data = array(
            'judul' => "Beranda | Ghaufaa",
            'konfig' => $konfig,
            'konfig' => $konfig,
            'kategori' => $kategori,
            'caraousel' => $caraousel,
            'konten' => $konten,
        );
		$this->template->load('template_user','user/kontak' ,$data);
    }
}