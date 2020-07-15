<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->library('form_validation');
	}
	public function index()
	{
		$this->form_validation->set_rules('email', "Email", 'trim|required|valid_email');
		$this->form_validation->set_rules('password', "Password", 'trim|required');

		if ($this->form_validation->run() == false) {
			$data['title'] = 'esa ';
			$this->load->view('template/auth_header', $data);
			$this->load->view('auth/login');
			$this->load->view('template/auth_footer');
		} else {
			$this->_login();
		}
	}
	private function _login()
	{
		$email = $this->input->post('email');
		$password = $this->input->post('password');

		$user = $this->db->get_where('user', ['email' => $email])->row_array();
		if ($user) {
			if ($user['is_active'] == 1) {
				if (password_verify($password, $user['password'])) {
					$data = [
						'email' => $user['email'],
						'role_id' => $user['role_id'],
					];
					$this->session->set_userdata($data);
					if ($user['role_id'] == 1) {
						redirect('user');
					} if ($user['role_id'] == 2) {
						redirect('member');
					}if ($user['role_id'] == 3){
						redirect('admin');
					}
				} else {
					$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">wrong password!
		  </div>');
					redirect(auth);
				}
			} else {
				$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">email has not actived!
		  </div>');
				redirect(auth);
			}
		} else {
			$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">email not register!
		  </div>');
			redirect(auth);
		}
	}


	public function registration()
	{
		$this->form_validation->set_rules('name', 'Name', 'required|trim');
		$this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email|is_unique[user.email]', ['is_unique' => 'This email has already registered']);
		$this->form_validation->set_rules(
			'password1',
			'Password',
			'required|matches[password2]',
			[

				'matches' => 'password dont matches'

			]
		);
		$this->form_validation->set_rules('password2', 'Password', 'required|trim|matches[password1]');
		if ($this->form_validation->run() == false) {
			$data['title'] = 'esa ';
			$this->load->view('template/auth_header', $data);
			$this->load->view('auth/registration');
			$this->load->view('template/auth_footer');
		} else {
			$data = [
				'name' => htmlspecialchars($this->input->post('name', true)),
				'email' => htmlspecialchars($this->input->post('email', true)),
				'image' => 'default.jpg',
				'password' => password_hash($this->input->post('password1'), PASSWORD_DEFAULT),
				'role_id ' => ($this->input->post('role_id')),
				'is_active' => 1,
				'date_created' => time()
			];
			$this->db->insert('user', $data);
			$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">sukses . plase login!
		  </div>');
			redirect(auth);
		}
	}
	public function logout()
	{
		$this->session->unset_userdata('email');
		$this->session->unset_userdata('role_id');
		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">sukses logout!
		  </div>');
		redirect(auth);
	}
}
