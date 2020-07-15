<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin extends CI_Controller
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
        $data['myp'] = 'Dashboard';
        $this->load->view('template/header', $data);
        $this->load->view('admin/slidbar', $data);
        $this->load->view('template/top_bar', $data);
        $this->load->view('admin/index', $data);
        $this->load->view('template/footer', $data);
    }
    public function vidio(){
        $data['user1'] = $this->user_model->all();
        
        $data['user'] = $this->db->get_where('user', ['email' =>
        $this->session->userdata('email')])->row_array();
        $data['title'] = 'esa ';
        $this->load->view('template/header', $data);
        $this->load->view('admin/slidbar', $data);
        $this->load->view('template/top_bar', $data);
        $this->load->view('admin/vidio', $data);
        
        $this->load->view('template/footer', $data);
    }
    public function conten()
{
    $data['user1'] = $this->user_model->all();

    $data['user'] = $this->db->get_where('user', ['email' =>
        $this->session->userdata('email')])->row_array();
        $data['title'] = 'esa ';
        $this->load->view('template/header', $data);
        $this->load->view('admin/slidbar', $data);
        $this->load->view('template/top_bar', $data);

    $this->load->view('admin/conten', $data);
    $this->load->view('template/footer', $data);
}
}
