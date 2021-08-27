<?php
/*
  ###########################################################
  # PRODUCT NAME: 	SaipBar - Restaurant POS
  ###########################################################
  # AUTHER:		ResetSv
  ###########################################################
  # EMAIL:		info@ResetSv.com
  ###########################################################
  # COPYRIGHTS:		RESERVED BY ResetSv
  ###########################################################
  # WEBSITE:		https://www.ResetSv.com
  ###########################################################
  # This is User Controller
  ###########################################################
 */

defined('BASEPATH') OR exit('No direct script access allowed');

class User extends Cl_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Common_model');
         $this->load->model('Authentication_model');
        $this->load->model('User_model');
        $this->Common_model->setDefaultTimezone();
        $this->load->library('form_validation');
        
        if (!$this->session->has_userdata('user_id')) {
            redirect('Authentication/index');
        }
        $getAccessURL = ucfirst($this->uri->segment(1));
        if (!in_array($getAccessURL, $this->session->userdata('menu_access'))) {
            redirect('Authentication/userProfile');
        }
    }


     /**
     * users
     * @access public
     * @return void
     * @param no
     */
    public function users() {
        $company_id = $this->session->userdata('company_id');

        $data = array();
        $data['users'] = $this->User_model->getUsersByCompanyId($company_id, "tbl_users");
        $data['main_content'] = $this->load->view('user/users', $data, TRUE);
        $this->load->view('userHome', $data);
    }
     /**
     * delete User
     * @access public
     * @return void
     * @param int
     */
    public function deleteUser($id) {
        $id = $this->custom->encrypt_decrypt($id, 'decrypt');

        $this->Common_model->deleteStatusChange($id, "tbl_users");

        $this->session->set_flashdata('exception',  lang('delete_success'));
        redirect('User/users');
    }
     /**
     * add/Edit User
     * @access public
     * @return void
     * @param int
     */
    public function addEditUser($encrypted_id = "") {
        $id = $this->custom->encrypt_decrypt($encrypted_id, 'decrypt');
        $company_id = $this->session->has_userdata('company_id');
        $outlet_id = $this->session->has_userdata('outlet_id');
        if ($id != '') {
            $user_menu_access_obj = $this->User_model->getUserMenuAccess($id);
            $user_menu_access_arr = array();
            foreach ($user_menu_access_obj as $value) {
                $user_menu_access_arr[] = $value->menu_id;
            }
            $user_details = $this->Common_model->getDataById($id, "tbl_users");
        }
        if ($this->input->post('submit')) {
            $this->form_validation->set_rules('full_name',  lang('name'), 'required|max_length[50]');
            if ($id != '') {
                $post_phone =htmlspecialchars($this->input->post($this->security->xss_clean('phone')));
                $existing_phone = $user_details->phone;
                if ($post_phone != $existing_phone) {
                    $this->form_validation->set_rules('phone',  lang('phone'), "required|is_unique[tbl_users.phone]|numeric");
                } else {
                    $this->form_validation->set_rules('phone',  lang('phone'), "required|numeric");
                }
            } else {
                $this->form_validation->set_rules('phone', lang('phone'), "required|is_unique[tbl_users.phone]|numeric");
            }

            if ($id != '') {
                $post_email_address =htmlspecialchars($this->input->post($this->security->xss_clean('email_address')));
                $existing_email_address = $user_details->email_address;
                if ($post_email_address != $existing_email_address) {
                    $this->form_validation->set_rules('email_address',  lang('email_address'), "required|valid_email|max_length[50]|is_unique[tbl_users.email_address]");
                } else {
                    $this->form_validation->set_rules('email_address',  lang('email_address'), "required|valid_email|max_length[50]");
                }
            } else {
                $this->form_validation->set_rules('email_address',  lang('email_address'), "required|valid_email|max_length[50]|is_unique[tbl_users.email_address]");
            }
            $this->form_validation->set_rules('designation',  lang('designation'), "required|max_length[50]|min_length[3]");
            if($this->input->post($this->security->xss_clean('will_login'))=='Yes' && $id == ""){
                $this->form_validation->set_rules('password',  lang('password'), "required|max_length[50]|min_length[6]");
                $this->form_validation->set_rules('confirm_password',  lang('confirm_password'), "required|max_length[50]|min_length[6]|matches[password]");
                if(is_null($this->input->post('user_type')) || $this->input->post('user_type')==""){
                    $this->form_validation->set_rules('menu_id',  lang('menu_access'), "callback_check_menu_access");
                }    
            }
            if ($this->form_validation->run() == TRUE) {
                $ids = '';
                    $language_manifesto = $this->session->userdata('language_manifesto');
                    if(str_rot13($language_manifesto)=="eriutoeri"):
                        $outlets =$this->input->post($this->security->xss_clean('outlets'));
                        foreach ($outlets as $k1 => $outlet):
                            $ids.= $outlet;
                            if($k1 < (sizeof($outlets) -1)){
                                $ids.=",";
                            }
                        endforeach;
                      else:

                          $ids = $outlet_id;
                          endif;
                $user_info = array();
                $user_info['full_name'] =htmlspecialchars($this->input->post($this->security->xss_clean('full_name')));
                $user_info['email_address'] =htmlspecialchars($this->input->post($this->security->xss_clean('email_address')));
                $user_info['phone'] =htmlspecialchars($this->input->post($this->security->xss_clean('phone')));
                $user_info['designation'] =htmlspecialchars($this->input->post($this->security->xss_clean('designation')));
                $user_info['will_login'] =htmlspecialchars($this->input->post($this->security->xss_clean('will_login')));
                if($this->input->post($this->security->xss_clean('will_login'))=='Yes' && $this->input->post($this->security->xss_clean('password'))){
                    $user_info['password'] = md5($this->input->post($this->security->xss_clean('password')));
                    if($id==''){
                        $user_info['role'] = (is_null($this->input->post('user_type')) || $this->input->post('user_type')=="")?'User':$this->input->post('user_type');
                    }
                }
                $user_info['outlets'] = $ids;
                $user_info['outlet_id'] = $outlet_id;
                $user_info['company_id'] = $this->session->userdata('company_id');
                if ($id == "") {
                    
                    $user_id = $this->Common_model->insertInformation($user_info, "tbl_users");
                    if($this->input->post($this->security->xss_clean('will_login'))=='Yes'){
                        if($user_info['role']=="POS User"){
                            $uma = array();
                            $uma['menu_id'] = 1;
                            $uma['user_id'] = $user_id;
                            $this->Common_model->insertInformation($uma, "tbl_user_menu_access");
                            $uma = array();
                            $uma['menu_id'] = 15;
                            $uma['user_id'] = $user_id;
                            $this->Common_model->insertInformation($uma, "tbl_user_menu_access");
                        }else{
                            if(isset($_POST['menu_id'])){
                                $this->saveUserMenusAccess($_POST['menu_id'], $user_id, 'tbl_user_menu_access');    
                            }
                                
                        }
                    }
                    $this->session->set_flashdata('exception',  lang('insertion_success'));
                } else {
                    $this->Common_model->updateInformation($user_info, $id, "tbl_users");
                    $data['outlets'] = $this->Common_model->getAllByCompanyIdForDropdown($company_id, "tbl_outlets");
                    
                    $this->db->delete('tbl_user_menu_access', array('user_id' => $id));
                    if($this->input->post($this->security->xss_clean('will_login'))=='Yes'){
                        if(isset($_POST['menu_id'])){
                            $this->saveUserMenusAccess($_POST['menu_id'], $id, 'tbl_user_menu_access');
                        }
                    }
                    $this->session->set_flashdata('exception', lang('update_success'));
                }
                redirect('User/users');
            } else {

                if ($id == "") {
                    $data = array();
                    $data['user_menus'] = $this->Common_model->getUserMenus();
                    $data['outlets'] = $this->Common_model->getAllByCompanyIdForDropdown($company_id, "tbl_outlets");
                    $data['main_content'] = $this->load->view('user/addUser', $data, TRUE);
                    $this->load->view('userHome', $data);
                } else {
                    $data = array();
                    $data['encrypted_id'] = $encrypted_id;
                    $data['user_details'] = $this->Common_model->getDataById($id, "tbl_users");
                    $data['outlets'] = $this->Common_model->getAllByCompanyIdForDropdown($company_id, "tbl_outlets");
                    $data['user_menus'] = $this->Common_model->getUserMenus();
                    //$data['user_menu_access'] = $this->User_model->getUserMenuAccess($id);
                    $data['user_menu_access'] = $user_menu_access_arr;
                    $data['main_content'] = $this->load->view('user/editUser', $data, TRUE);
                    $this->load->view('userHome', $data);
                }
            }
        } else {
            if ($id == "") {
                $data = array();
                $data['user_menus'] = $this->Common_model->getUserMenus();
                $data['outlets'] = $this->Common_model->getAllByCompanyIdForDropdown($company_id, "tbl_outlets");
                $data['main_content'] = $this->load->view('user/addUser', $data, TRUE);
                $this->load->view('userHome', $data);
            } else {
                $data = array();
                $data['encrypted_id'] = $encrypted_id;
                $data['user_details'] = $this->Common_model->getDataById($id, "tbl_users");
                $data['user_menus'] = $this->Common_model->getUserMenus();
                $data['outlets'] = $this->Common_model->getAllByCompanyIdForDropdown($company_id, "tbl_outlets");
                $data['user_menu_access'] = $user_menu_access_arr;
                $data['main_content'] = $this->load->view('user/editUser', $data, TRUE);

                $this->load->view('userHome', $data);
            }
        }
    }
     /**
     * check menu access
     * @access public
     * @return boolean
     * @param no
     */
    public function check_menu_access() {
        $menu_id = $this->input->post('menu_id');

        if (count($menu_id) <= 0) {
            $this->form_validation->set_message('check_menu_access', 'At least 1 menu access should be selected');
            return false;
        } else {
            return true;
        }
    }
     /**
     * save User Menus Access
     * @access public
     * @return void
     * @param string
     * @param int
     * @param string
     */
    public function saveUserMenusAccess($user_menu_ids, $user_id, $table_name) {
        foreach ($user_menu_ids as $row => $umi):
            $uma = array();
            $uma['menu_id'] = $umi;
            $uma['user_id'] = $user_id;
            $this->Common_model->insertInformation($uma, "tbl_user_menu_access");
        endforeach;
    }
     /**
     * deactivate User
     * @access public
     * @return void
     * @param int
     */
    public function deactivateUser($encrypted_id) {
        $id = $this->custom->encrypt_decrypt($encrypted_id, 'decrypt');
        $user_info = array();
        $user_info['active_status'] = 'Inactive';
        $this->Common_model->updateInformation($user_info, $id, "tbl_users");
        $this->session->set_flashdata('exception',lang('user_deactivate'));
        redirect('User/users');
    }
     /**
     * activate User
     * @access public
     * @return void
     * @param int
     */
    public function activateUser($encrypted_id) {
        $id = $this->custom->encrypt_decrypt($encrypted_id, 'decrypt');
        $user_info = array();
        $user_info['active_status'] = 'Active';
        $this->Common_model->updateInformation($user_info, $id, "tbl_users");
        $this->session->set_flashdata('exception', lang('user_activate'));
        redirect('User/users');
    }

}
