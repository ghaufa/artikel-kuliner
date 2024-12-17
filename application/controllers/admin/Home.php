<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
	public function __construct(){
        parent::__construct();
        if($this->session->userdata('level')==NULL){
            redirect('admin/auth');
        }
    }
	public function index()
	{
		$data = array(
            'title'    => 'Dashboard Admin',
            'judul'    => 'SELAMAT DATANG DI HALAMAN, DASHBOARD'
        );
		$this->template->load('admin/dashboard','admin/beranda',$data);
	}
	public function tambah()
	{
		$data = array(
            'title'    => 'Dashboard Admin',
            'judul'    => 'SELAMAT DATANG DI HALAMAN, DASHBOARD'
        );
		$this->template->load('admin/dashboard','admin/beranda',$data);
	}
}