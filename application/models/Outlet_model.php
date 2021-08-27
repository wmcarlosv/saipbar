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
  # This is Outlet_model Model
  ###########################################################
 */
class Outlet_model extends CI_Model {
    /**
     * generate Outlet Code
     * @access public
     * @return string
     * @param no
     */
    public function generateOutletCode() {
        $count = $this->db->query("SELECT count(id) as count
               FROM tbl_outlets")->row('count');
        $code = str_pad($count + 1, 6, '0', STR_PAD_LEFT);
        return $code;
    }
    /**
     * outlet count
     * @access public
     * @return object
     * @param no
     */
    public function outlet_count() {
        $this->db->select("*");
        $this->db->from("tbl_outlets");
        $this->db->where("company_id", $this->session->userdata('company_id'));
        $this->db->where("del_status", 'Live');
        return $this->db->get()->num_rows();
    }


}

