<?php
defined('BASEPATH') or exit('No direct script access allowed');

class User extends CI_Controller
{
    public function __construct()
	{
		parent::__construct();
		$this->load->helper("url");
		$this->load->model('user_model');
	}
    public function index()
    {
        $data['user'] = $this->db->get_where('user', ['email' =>
        $this->session->userdata('email')])->row_array();
        $data['title'] = 'esa ';
        $data['myp'] = 'My Profil';
        $this->load->view('template/header', $data);
        $this->load->view('user/slidbar', $data);
        $this->load->view('template/top_bar', $data);
        $this->load->view('user/index', $data);
        $this->load->view('template/footer', $data);
    }
    public function vidio()
    {
        $data['user1'] = $this->user_model->all();
        
        $data['user'] = $this->db->get_where('user', ['email' =>
        $this->session->userdata('email')])->row_array();
        $data['title'] = 'esa ';
        $this->load->view('template/header', $data);
        $this->load->view('user/slidbar', $data);
        $this->load->view('template/top_bar', $data);
        $this->load->view('user/vidio', $data);
        
        $this->load->view('template/footer', $data);
    }
    public function conten()
    {
    $data2['user2'] = $this->user_model->all();

    $data['user'] = $this->db->get_where('user', ['email' =>
        $this->session->userdata('email')])->row_array();
        $data['title'] = 'esa ';
        $this->load->view('template/header', $data);
        $this->load->view('user/slidbar', $data);
        $this->load->view('template/top_bar', $data);

    $this->load->view('user/conten', $data2);
    $this->load->view('template/footer', $data);
    }


}
