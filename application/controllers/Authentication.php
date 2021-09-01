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
  # This is Authentication Controller
  ###########################################################
 */
defined('BASEPATH') OR exit('No direct script access allowed');

class Authentication extends Cl_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Authentication_model');
        $this->load->model('Common_model');
        $this->load->library('form_validation');
    }

    public function index() {

 if ($this->session->userdata('user_id')) {
            //If the user is Super Admin
            if ($this->session->userdata('role') == 'Super Admin') {
                redirect("Admin/adminProfile");
            } elseif ($this->session->userdata('role') == 'Admin') {        
				redirect("Sale/POS");
            } elseif($this->session->userdata('role') == 'Kitchen User'){               
				redirect("Kitchen/panel");
			} elseif($this->session->userdata('role') == 'POS User'){          
				redirect("Sale/POS");
            } elseif($this->session->userdata('role') == 'Bar User'){ 
				redirect("Bar/panel");
            } elseif($this->session->userdata('role') == 'Waiter User'){ 
                redirect("Waiter/panel");
            } else {
                if (in_array('Sale', $this->session->userdata('menu_access'))) { 
                    redirect("Sale/POS");
                }
                if (in_array('Kitchen', $this->session->userdata('menu_access'))) {
                    redirect("Kitchen/panel");
                }
                if (in_array('Bar', $this->session->userdata('menu_access'))) {
                    redirect("Bar/panel");
                }
                if (in_array('Waiter', $this->session->userdata('menu_access'))) {
                    redirect("Waiter/panel");
                }
                redirect("Authentication/userProfile");
            }
        }
        $this->load->view('authentication/login');
    }

    /**
     * check login info
     * @access public
     * @return void
     * @param no
     */
    public function loginCheck() {
        if($this->input->post('submit') != 'submit'){
            redirect("Authentication/index");
        }

        $this->form_validation->set_rules('email_address', lang('email_address'), 'required|max_length[50]');
        $this->form_validation->set_rules('password', lang('password'), "required|max_length[25]");
        if ($this->form_validation->run() == TRUE) {
            $email_address =htmlspecialchars($this->input->post($this->security->xss_clean('email_address')));
            $password = md5($this->input->post($this->security->xss_clean('password')));
            $user_information = $this->Authentication_model->getUserInformation($email_address, $password);
            //If user exists
            if ($user_information) {

                //If the user is Active
                if ($user_information->active_status == 'Active') {
                    $company_info = $this->Authentication_model->getCompanyInformation($user_information->company_id);
                    if ($user_information->role == 'Admin') {
                        $menu_access_information = $this->Authentication_model->getMenuAccessInformation('');
                    }else{
                        $menu_access_information = $this->Authentication_model->getMenuAccessInformation($user_information->id);
                    }

                    $menu_access_container = array();
                    if (isset($menu_access_information)) {
                        foreach ($menu_access_information as $value) {
                            array_push($menu_access_container, ucfirst($value->controller_name));
                        }
                    }

                    //Menu access information
                    $primary_session_data['menu_access'] = $menu_access_container;
                    $this->session->set_userdata($primary_session_data);


                    // echo "string";

                    $login_session = array();
                    //User Information
                    $login_session['user_id'] = $user_information->id;
                    $login_session['language'] = $user_information->language;
                    $login_session['full_name'] = $user_information->full_name;
                    $login_session['phone'] = $user_information->phone;
                    $login_session['email_address'] = $user_information->email_address;
                    $login_session['role'] = $user_information->role;
                    $login_session['company_id'] = $user_information->company_id;
                    $login_session['session_outlets'] = $user_information->outlets;
                    $login_session['designation'] = $user_information->designation;

                    //Company Information


                    //Set session

                    $company_info_session = array();
                    $company_info_session['currency'] = $company_info->currency;
                    $company_info_session['zone_name'] = $company_info->zone_name;
                    $company_info_session['date_format'] = $company_info->date_format;
                    $company_info_session['business_name'] = $company_info->business_name;
                    $company_info_session['address'] = $company_info->address;
                    $company_info_session['website'] = $company_info->website;
                    $company_info_session['currency_position'] =$company_info->currency_position;
                    $company_info_session['precision'] =$company_info->precision;
                    $company_info_session['default_customer'] =$company_info->default_customer;

                    if(str_rot13($company_info->language_manifesto)!="eriutoeri"):
                        $company_info_session['default_waiter'] =$company_info->default_waiter;
                    endif;
                    $company_info_session['default_payment'] =$company_info->default_payment;
                    $company_info_session['default_payment'] =$company_info->default_payment;
                    $company_info_session['print_format'] = $company_info->print_format;
                    $company_info_session['invoice_footer'] = $company_info->invoice_footer;
                    $company_info_session['invoice_logo'] = $company_info->invoice_logo;
                    $company_info_session['language_manifesto'] = $company_info->language_manifesto;
                    $company_info_session['pre_or_post_payment'] = $company_info->pre_or_post_payment;
                    $company_info_session['collect_tax'] = $company_info->collect_tax;
                    $company_info_session['tax_title'] = $company_info->tax_title;
                    $company_info_session['tax_registration_no'] = $company_info->tax_registration_no;
                    $company_info_session['tax_is_gst'] = $company_info->tax_is_gst;
                    $company_info_session['state_code'] = $company_info->state_code;

                    $outlet_info = $this->db->query("SELECT * FROM tbl_outlets WHERE del_status='Live'")->row();
                    if(str_rot13($company_info->language_manifesto)=="fgjgldkfg"){
                        if ($user_information->role != 'Admin') {
                            if($outlet_info->active_status=="inactive"){
                                $this->session->set_flashdata('exception_1', lang('outlet_not_active'));
                                redirect('Authentication/index');
                            }
                        }
                        $this->session->set_userdata($login_session);
                        $this->session->set_userdata($company_info_session);

                        $outlet_session = array();
                        if(isset($outlet_info) && $outlet_info):
                            $outlet_session['outlet_id'] = $outlet_info->id;
                            $outlet_session['outlet_name'] = $outlet_info->outlet_name;
                            $outlet_session['address'] = $outlet_info->address;
                            $outlet_session['phone'] = $outlet_info->phone;
                            $outlet_session['email'] = $outlet_info->email;
                            $outlet_session['outlet_code'] = $outlet_info->outlet_code;
                            if(str_rot13($company_info->language_manifesto)=="eriutoeri"):
                                $outlet_session['default_waiter'] =$outlet_info->default_waiter;
                            endif;
                        endif;
                        $this->session->set_userdata($outlet_session);
                        redirect("Sale/POS");
                    }else{
                        $this->session->set_userdata($login_session);
                        $this->session->set_userdata($company_info_session);

                        if ($user_information->role == 'Admin') {
                            redirect("Outlet/outlets");
                        } else {
                            redirect("Outlet/setOutletSession/".$login_session['session_outlets']);
                        }
                    }
                } else {
                    $this->session->set_flashdata('exception_1', lang('user_not_active'));
                    redirect('Authentication/index');
                }
            } else {
                $this->session->set_flashdata('exception_1', lang('incorrect_email_password'));
                redirect('Authentication/index');
            }
        } else {
            $this->load->view('authentication/login');
        }
    }
    /**
     * check payment clear or not
     * @access public
     * @return void
     * @param no
     */
    public function paymentNotClear() {
        if (!$this->session->has_userdata('customer_id')) {
            redirect('Authentication/index');
        }
        $this->load->view('authentication/paymentNotClear');
    }
    /**
     * user profile data
     * @access public
     * @return void
     * @param no
     */
    public function userProfile() {
        if (!$this->session->has_userdata('user_id')) {
            redirect('Authentication/index');
        }
        if($this->session->userdata('role') == 'Kitchen User'){
            redirect("Kitchen/panel");
        }
        if($this->session->userdata('role') == 'Bar User'){
            redirect("Bar/panel");
        }
        if($this->session->userdata('role') == 'Waiter User'){
            redirect("Waiter/panel");
        }
        if($this->session->userdata('role') == 'POS User'){
            redirect("Sale/POS");
        }
        $data = array();
        $data['main_content'] = $this->load->view('authentication/userProfile', $data, TRUE);
        $this->load->view('userHome', $data);
    }
    /**
     * change password
     * @access public
     * @return void
     * @param no
     */
    public function changePassword() {
        if (!$this->session->has_userdata('user_id')) {
            redirect('Authentication/index');
        }
        if ($this->input->post('submit') == 'submit') {
            $this->form_validation->set_rules('old_password',lang('old_password'), 'required|max_length[50]');
            $this->form_validation->set_rules('new_password', lang('new_password'), 'required|max_length[50]|min_length[6]');
            if ($this->form_validation->run() == TRUE) {
                $old_password =htmlspecialchars($this->input->post($this->security->xss_clean('old_password')));
                $user_id = $this->session->userdata('user_id');

                $password_check = $this->Authentication_model->passwordCheck(md5($old_password), $user_id);

                if ($password_check) {
                    $new_password =htmlspecialchars($this->input->post($this->security->xss_clean('new_password')));

                    $this->Authentication_model->updatePassword(md5($new_password), $user_id);

                    mail($this->session->userdata['email_address'], "Change Password", "Your new password is : " . $new_password);

                    $this->session->set_flashdata('exception',lang('password_changed'));
                    redirect('Authentication/changePassword');
                } else {
                    $this->session->set_flashdata('exception_1',lang('old_password_not_match'));
                    redirect('Authentication/changePassword');
                }
            } else {
                $data = array();
                $data['main_content'] = $this->load->view('authentication/changePassword', $data, TRUE);
                $this->load->view('userHome', $data);
            }
        } else {
            $data = array();
            $data['main_content'] = $this->load->view('authentication/changePassword', $data, TRUE);
            $this->load->view('userHome', $data);
        }
    }
    /**
     * forgot password
     * @access public
     * @return void
     * @param no
     */
    public function forgotPassword() {
        $this->load->view('authentication/forgotPassword');
    }
    /**
     * send auto password through email
     * @access public
     * @return void
     * @param no
     */
    public function sendAutoPassword() {
        if ($this->input->post('submit') == 'submit') {
            $this->form_validation->set_rules('email_address', lang('email_address'), 'required|valid_email|callback_checkEmailAddressExistance');
            if ($this->form_validation->run() == TRUE) {
                $email_address =htmlspecialchars($this->input->post($this->security->xss_clean('email_address')));

                $user_details = $this->Authentication_model->getAccountByMobileNo($email_address);

                $user_id = $user_details->id;

                $auto_generated_password = mt_rand(100000, 999999);

                $this->Authentication_model->updatePassword($auto_generated_password, $user_id);

                //Send Password by Email
                $this->load->library('email');

                $config['protocol'] = 'sendmail';
                $config['mailpath'] = '/usr/sbin/sendmail';
                $config['charset'] = 'iso-8859-1';
                $config['wordwrap'] = TRUE;
                $this->email->initialize($config);

                mail($email_address, "Change Password", "Your new password is : " . $auto_generated_password);

                $this->load->view('authentication/forgotPasswordSuccess');
            } else {
                $this->load->view('authentication/forgotPassword');
            }
        } else {
            $this->load->view('authentication/forgotPassword');
        }
    }
    /**
     * check email address that is exist or not
     * @access public
     * @return void
     * @param boolean
     */
    public function checkEmailAddressExistance() {
        $email_address =htmlspecialchars($this->input->post($this->security->xss_clean('email_address')));

        $checkEmailAddressExistance = $this->Authentication_model->getAccountByMobileNo($email_address);

        if (count($checkEmailAddressExistance) <= 0) {
            $this->form_validation->set_message('checkEmailAddressExistance', 'Email Address does not exist');
            return false;
        } else {
            return true;
        }
    }
    /**
     * logout from system
     * @access public
     * @return void
     * @param no
     */
    public function logOut() {
        //User Information 
        $this->session->unset_userdata('user_id');
        $this->session->unset_userdata('full_name');
        $this->session->unset_userdata('phone');
        $this->session->unset_userdata('email_address');
        $this->session->unset_userdata('role');
        $this->session->unset_userdata('customer_id');
        $this->session->unset_userdata('company_id');
        $this->session->unset_userdata('outlet_id');

        //Shop Information
        $this->session->unset_userdata('currency');
        $this->session->unset_userdata('zone_name');
        $this->session->unset_userdata('date_format');
        $this->session->unset_userdata('business_name');
        $this->session->unset_userdata('address');
        $this->session->unset_userdata('website');
        $this->session->unset_userdata('currency_position');
        $this->session->unset_userdata('precision');
        $this->session->unset_userdata('default_customer');
        $this->session->unset_userdata('default_waiter');
        $this->session->unset_userdata('default_payment');
        $this->session->unset_userdata('outlet_code');
        $this->session->unset_userdata('default_payment');
        $this->session->unset_userdata('print_format');
        $this->session->unset_userdata('invoice_footer');
        $this->session->unset_userdata('invoice_logo');
        $this->session->unset_userdata('language_manifesto');
        $this->session->unset_userdata('pre_or_post_payment');
        $this->session->unset_userdata('collect_tax');
        $this->session->unset_userdata('tax_title');
        $this->session->unset_userdata('tax_registration_no');
        $this->session->unset_userdata('tax_is_gst');
        $this->session->unset_userdata('state_code');

        redirect('Authentication/index');
    }
    /**
     * sms setting data
     * @access public
     * @return void
     * @param int
     */
    public function SMSSetting($id='') {
        $company_id = $this->session->userdata('company_id');

        if ($this->input->post('submit')) {

            $this->form_validation->set_rules('email_address',lang('email_address'), "required|valid_email|max_length[50]");
            $this->form_validation->set_rules('password',lang('password'), "required|max_length[50]"); 
            if ($this->form_validation->run() == TRUE) {
                $sms_info = array();
                $sms_info['email_address'] =htmlspecialchars($this->input->post($this->security->xss_clean('email_address')));
                $sms_info['password'] =htmlspecialchars($this->input->post($this->security->xss_clean('password')));

                $data_json['sms_details'] = json_encode($sms_info);
                $this->Common_model->updateInformation($data_json, $id, "tbl_companies");
                $this->session->set_flashdata('exception', lang('update_success')); 
                redirect('Authentication/SMSSetting/'.$id);
            } else { 
                $data = array();
                $data['sms_information'] = $this->Authentication_model->getSMSInformation($company_id);
                  $data['company_id'] = ($company_id);
                $data['main_content'] = $this->load->view('authentication/sms_setting', $data, TRUE);
                $this->load->view('userHome', $data); 
            }
        } else { 
            $data = array();
            $data['sms_information'] = $this->Authentication_model->getSMSInformation($company_id);
              $data['company_id'] = ($company_id);
            $data['main_content'] = $this->load->view('authentication/sms_setting', $data, TRUE);
            $this->load->view('userHome', $data); 
        }
    }
    /**
     * white label data
     * @access public
     * @return void
     * @param int
     */
    public function whiteLabel($id = '') {
        $company_id = $this->session->userdata('company_id');
        if ($this->input->post('submit')) {
            /*form validation check*/
            $this->form_validation->set_rules('site_name', lang('site_name'), 'required|max_length[300]');
            $this->form_validation->set_rules('footer', lang('footer'), 'required|max_length[300]');
            $this->form_validation->set_rules('system_logo', lang('logo'), 'callback_validate_system_logo');


            if ($this->form_validation->run() == TRUE) {
                $data = array();
                $data['site_name'] =htmlspecialchars($this->input->post($this->security->xss_clean('site_name')));
                $data['footer'] =htmlspecialchars($this->input->post($this->security->xss_clean('footer')));

                if ($_FILES['system_logo']['name'] != "") {
                    $data['system_logo'] = $this->session->userdata('system_logo');;
                    $this->session->unset_userdata('system_logo');
                    @unlink("./images/".$this->input->post($this->security->xss_clean('old_system_logo')));
                }else{
                    $data['system_logo'] =htmlspecialchars($this->input->post($this->security->xss_clean('old_system_logo')));
                }

                $json_data['white_label'] = json_encode($data);

                $this->Common_model->updateInformation($json_data, $id, "tbl_companies");

                redirect('Authentication/whiteLabel');
            } else {
                $data = array();
                $data['main_content'] = $this->load->view('authentication/whiteLabel', $data, TRUE);
                $this->load->view('userHome', $data);
            }
        } else {
            $data = array();
            $data['main_content'] = $this->load->view('authentication/whiteLabel', $data, TRUE);
            $this->load->view('userHome', $data);
        }
    }
    /**
     * change profile data
     * @access public
     * @return void
     * @param int
     */
    public function changeProfile($id = '') {
        $id = $this->custom->encrypt_decrypt($id, 'decrypt');
        $company_id = $this->session->userdata('company_id');
        if ($id != '') {
            $user_details = $this->Common_model->getDataById($id, "tbl_users");
        }

        if ($this->input->post('submit')) {

            if ($id != '') {
                $post_email_address =htmlspecialchars($this->input->post($this->security->xss_clean('email_address')));
                $existing_email_address = $user_details->email_address;
                if ($post_email_address != $existing_email_address) {
                    $this->form_validation->set_rules('email_address', lang('email_address'), "required|valid_email|max_length[50]|is_unique[tbl_users.email_address]");
                } else {
                    $this->form_validation->set_rules('email_address',lang('email_address'), "required|valid_email|max_length[50]");
                }
            } else {
                $this->form_validation->set_rules('email_address', lang('email_address'), "required|valid_email|max_length[50]|is_unique[tbl_users.email_address]");
            }

            if ($this->form_validation->run() == TRUE) {
                $user_info = array();
                $user_info['full_name'] =htmlspecialchars($this->input->post($this->security->xss_clean('full_name')));
                $user_info['email_address'] =htmlspecialchars($this->input->post($this->security->xss_clean('email_address')));
                $user_info['phone'] =htmlspecialchars($this->input->post($this->security->xss_clean('phone')));
                $this->Common_model->updateInformation($user_info, $id, "tbl_users");
                $this->session->set_flashdata('exception', lang('update_success'));
   
                $this->session->set_userdata('full_name', $user_info['full_name']);  
                $this->session->set_userdata('phone', $user_info['phone']);  
                $this->session->set_userdata('email_address', $user_info['email_address']);  

                redirect('Authentication/changeProfile');
            } else {
                if ($id == "") {
                    $data = array();
                    $data['profile_info'] = $this->Authentication_model->getProfileInformation();
                    $data['main_content'] = $this->load->view('authentication/changeProfile', $data, TRUE);
                    $this->load->view('userHome', $data);
                } else {
                    $data = array();
                    $data['profile_info'] = $this->Authentication_model->getProfileInformation();
                    $data['main_content'] = $this->load->view('authentication/changeProfile', $data, TRUE);
                    $this->load->view('userHome', $data);
                }
            }
        } else {
            if ($id == "") {
                $data = array();
                $data['profile_info'] = $this->Authentication_model->getProfileInformation();
                $data['main_content'] = $this->load->view('authentication/changeProfile', $data, TRUE);
                $this->load->view('userHome', $data);
            } else {
                $data = array();
                $data['profile_info'] = $this->Authentication_model->getProfileInformation();
                $data['main_content'] = $this->load->view('authentication/changeProfile', $data, TRUE);
                $this->load->view('userHome', $data);
            }
        }
    }
    /**
     * valideted system logo data
     * @access public
     * @return boolean
     * @param no
     */
    public function validate_system_logo() {

        if ($_FILES['system_logo']['name'] != "") {
            $config['upload_path'] = './images';
            $config['allowed_types'] = 'jpg|jpeg|png';
            $config['max_size'] = '2048';
            $config['encrypt_name'] = TRUE;
            $config['detect_mime'] = TRUE;
            $this->load->library('upload', $config);
            if ($this->upload->do_upload("system_logo")) {
                $upload_info = $this->upload->data();
                $system_logo = $upload_info['file_name'];
                $config['image_library'] = 'gd2';
                $config['source_image'] = './images/' . $system_logo;
                $config['maintain_ratio'] = TRUE;
                $config['width'] = 230;
                $config['height'] = 50;
                $this->load->library('image_lib', $config);
                $this->image_lib->resize();
                $this->session->set_userdata('system_logo', $system_logo);
            } else {
                $this->form_validation->set_message('validate_system_logo', $this->upload->display_errors());
                return FALSE;
            }
        }
    }
    /**
     * set language on session
     * @access public
     * @return void
     * @param no
     */
    public function setlanguage(){
    $id=$this->session->userdata('user_id');
    $language=$this->input->post('language');
    if ($language == "") {
        $language = "english";
    }
    $data['language']=$language;
    $this->session->set_userdata('language', $language);
    $this->db->WHERE('id',$id);
    $this->db->update('tbl_users',$data);
    redirect($_SERVER["HTTP_REFERER"]);
   }

    /**
     * set language on session from POS screen
     * @access public
     * @return void
     * @param string
     */
    public function setlanguagePOS($lng){
    $id=$this->session->userdata('user_id');
    $language=$lng;
    if ($language == "") {
        $language = "english";
    }
    $data['language']=$language;
    $this->session->set_userdata('language', $language);
    $this->db->WHERE('id',$id);
    $this->db->update('tbl_users',$data);
    redirect("Sale/POS");
   }

    /**
     * sorting main menu
     * @access public
     * @return object
     * @param no
     */
    public function sortingMainMenu() {
        if (!$this->session->has_userdata('user_id')) {
            redirect('Authentication/index');
        }
        $menus = $this->input->get('menus');
        $i = 1;
        foreach ($menus as $key=>$value){
            $data = array();
            $data['order_by'] = $i;
            $this->Common_model->updateInformation($data,$menus[$key], "tbl_admin_user_menus");
            $i++;
        }
        echo json_encode('success');
    }
 

}
