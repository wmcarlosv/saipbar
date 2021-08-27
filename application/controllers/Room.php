<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Room extends Cl_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Common_model');
        $this->load->library('form_validation');
        $this->Common_model->setDefaultTimezone();

        if (!$this->session->has_userdata('user_id')) {
            redirect('Authentication/index');
        }
        $getAccessURL = ucfirst($this->uri->segment(1));
        if (!in_array($getAccessURL, $this->session->userdata('menu_access'))) {
            redirect('Authentication/userProfile');
        }
    }


     /**
     * tables
     * @access public
     * @return void
     * @param no
     */
    public function rooms() {
        $company_id = $this->session->userdata('company_id');

        $data = array();
        $data['rooms'] = $this->Common_model->getAllByCompanyId($company_id, "tbl_rooms");
        $data['main_content'] = $this->load->view('master/room/rooms', $data, TRUE);
        $this->load->view('userHome', $data);
    }
     /**
     * delete Table
     * @access public
     * @return void
     * @param int
     */
    public function deleteRoom($id) {
        $id = $this->custom->encrypt_decrypt($id, 'decrypt');

        $this->Common_model->deleteStatusChange($id, "tbl_rooms");

        $this->session->set_flashdata('exception', lang('delete_success'));
        redirect('room/rooms');
    }
     /**
     * add/Edit Table
     * @access public
     * @return void
     * @param int
     */
    public function addEditRoom($encrypted_id = "") {
        $company_id = $this->session->userdata('company_id');
        $id = $this->custom->encrypt_decrypt($encrypted_id, 'decrypt');
        if ($this->input->post('submit')) {
            $this->form_validation->set_rules('name',lang('room_name'), 'required|max_length[150]');
            if ($this->form_validation->run() == TRUE) {
                $igc_info = array();
                $igc_info['name'] = htmlspecialchars($this->input->post($this->security->xss_clean('name')));
                $igc_info['outlet_id'] =htmlspecialchars($this->input->post($this->security->xss_clean('outlet')));
                $igc_info['user_id'] = $this->session->userdata('user_id');
                $igc_info['company_id'] = $this->session->userdata('company_id');
                if ($id == "") {
                    $this->Common_model->insertInformation($igc_info, "tbl_rooms");
                    $this->session->set_flashdata('exception', lang('insertion_success'));
                } else {
                    $this->Common_model->updateInformation($igc_info, $id, "tbl_rooms");
                    $this->session->set_flashdata('exception', lang('update_success'));
                }
                redirect('room/rooms');
            } else {
                if ($id == "") {
                    $data = array();
                    $data['outlets'] = $this->Common_model->getAllByCompanyIdForDropdown($company_id, 'tbl_outlets');
                    $data['main_content'] = $this->load->view('master/room/addRoom', $data, TRUE);
                    $this->load->view('userHome', $data);
                } else {
                    $data = array();
                    $data['encrypted_id'] = $encrypted_id;
                    $data['outlets'] = $this->Common_model->getAllByCompanyIdForDropdown($company_id, 'tbl_outlets');
                    $data['room_information'] = $this->Common_model->getDataById($id, "tbl_rooms");
                    $data['main_content'] = $this->load->view('master/room/editRoom', $data, TRUE);
                    $this->load->view('userHome', $data);
                }
            }
        } else {
            if ($id == "") {
                $data = array();
                $data['outlets'] = $this->Common_model->getAllByCompanyIdForDropdown($company_id, 'tbl_outlets');
                $data['main_content'] = $this->load->view('master/room/addRoom', $data, TRUE);
                $this->load->view('userHome', $data);
            } else {
                $data = array();
                $data['encrypted_id'] = $encrypted_id;
                $data['outlets'] = $this->Common_model->getAllByCompanyIdForDropdown($company_id, 'tbl_outlets');
                $data['room_information'] = $this->Common_model->getDataById($id, "tbl_rooms");
                $data['main_content'] = $this->load->view('master/room/editRoom', $data, TRUE);
                $this->load->view('userHome', $data);
            }
        }
    }
}
