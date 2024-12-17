<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Auth extends CI_Controller {
public function index()
	{
        $data = array(
            'title'    => 'Dashboard Admin'
        );
		$this->load->view('admin/login',$data);
	}
    public function login(){
        $username = $this->input->post('username');
        $password = md5($this->input->post('password'));
        $this->db->from('user')->where('username',$username);
        $user = $this->db->get()->row();
        if($user==NULL){
            $this->session->set_flashdata('alert', '
            <div class="alert alert-success" role="alert">
                    USERNAME TIDAK DITEMUKAN!!
                  </div>
            ');
            redirect('admin/auth'); 
        } else if($user->password==$password){
            $data = array( 
                'username'  => $user->username,
                'nama'      => $user->nama,
                'level'     => $user->level,
                'id_user'   => $user->id_user,
            );
            $this->session->set_userdata($data);
            redirect('admin/home');
        }else{
            $this->session->set_flashdata('alert', '
            <div class="alert alert-primary alert-dismissible fade show" role="alert">
                <i class="fa fa-exclamation-circle me-2"></i>Pasword Salah
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            ');
            redirect('admin/auth');
        }
    }
    public function logout(){
        $this->session->sess_destroy();
        redirect('home');
    }
}
