<?php
/**
 * return  characters to HTML entities.
 * @return string
 * @param string
 */
function escape_output($string){
    if($string){
        return htmlentities($string, ENT_QUOTES, 'UTF-8');
    }else{
        return '';
    }

}
/**
 * get Main Menu
 * @access
 * @return object
 * @param no
 */
function getMainMenu() {
    $CI = & get_instance();

    $access = $CI->session->userdata('menu_access');
    $CI->db->select('*');
    $CI->db->from('tbl_admin_user_menus');
    $CI->db->where('is_ignore!=', 1);
    $CI->db->where_in('controller_name', $access);
    $CI->db->order_by('order_by asc');
    $main_row =  $CI->db->get()->result();
    foreach ($main_row as $key=>$value){
        $main_row[$key]->sub_menus = getAllByCustomId($value->id,"parent_id","tbl_admin_user_menus","");
    }
    return $main_row;
}

/**
 * get Main Menu
 * @access
 * @return object
 * @param no
 */
function getLastSaleId() {
    $CI = & get_instance();
    $outlet_id = $CI->session->userdata('outlet_id');
    $CI->db->select('*');
    $CI->db->from('tbl_sales');
    $CI->db->where('outlet_id', $outlet_id);
    $CI->db->where('del_status', "Live");
    $CI->db->order_by('id desc');
    $last_row =   $CI->db->get()->row();
    return $last_row?$last_row->id:'';
}
/**
 * get Main Menu
 * @access
 * @return object
 * @param no
 */
function returnSessionLng() {
    $CI = & get_instance();
    $language = $CI->session->userdata('language');
    return isset($language) && $language?$language:'';
}
/**
 * get All By Custom Id
 * @access public
 * @return boolean
 * @param int
 * @param string
 * @param string
 * @param string
 */
function getAllByCustomId($id,$filed,$tbl,$order=''){
    $CI = & get_instance();
    $CI->db->select('*');
    $CI->db->from($tbl);
    $CI->db->where($filed,$id);
    if($order!=''){
        $CI->db->order_by('id',$order);
    }
    $CI->db->where("del_status", 'Live');
    $result = $CI->db->get();

    if($result != false){
        return $result->result();
    }else{
        return false;
    }
}
/**
 * get Language Manifesto
 * @access public
 * @return array
 * @param no
 */
function getLanguageManifesto(){
    $CI = & get_instance();
    $language_manifesto = $CI->session->userdata('language_manifesto');
    $outlet_id = $CI->session->userdata('outlet_id');
    if(str_rot13($language_manifesto)=="eriutoeri"){
        return [$language_manifesto,"Outlet/outlets"];
    }else if(str_rot13($language_manifesto)=="fgjgldkfg"){
        return [$language_manifesto,"Outlet/addEditOutlet/".$outlet_id];
    }
}
/**
 * get Company Info
 * @access public
 * @return object
 * @param no
 */
function getCompanyInfo() {
    $CI = & get_instance();
    $CI->db->select("*");
    $CI->db->from("tbl_companies");
    $CI->db->order_by("id", "DESC");
    $CI->db->limit(1);
    return $CI->db->get()->row();
}
/**
 * get All Outlet By Assign User
 * @access public
 * @return object
 * @param no
 */
function getAllOutlestByAssign() {
    $CI = & get_instance();
    $role = $CI->session->userdata('role');
    $outlets = $CI->session->userdata('session_outlets');
    if($role=="Admin"){
        $result = $CI->db->query("SELECT * FROM tbl_outlets WHERE del_status='Live'")->result();
    }else{
        $result = $CI->db->query("SELECT * FROM tbl_outlets WHERE FIND_IN_SET(`id`, '$outlets') AND del_status='Live'")->result();
    }
    return $result;
}
/**
 * get Total Lanuage Manifesto
 * @access public
 * @return array
 * @param no
 */
function getTotalLanuageManifesto(){
    $CI = & get_instance();
    $company = $CI->db->query("SELECT * FROM tbl_companies WHERE del_status='Live'")->row();
    $outlet_info1 = $CI->db->query("SELECT * FROM tbl_outlets WHERE del_status='Live'")->result();

    if(str_rot13($company->language_manifesto)=="eriutoeri"){
        $return_menu = "Outlet/outlets";
    }else if(str_rot13($company->language_manifesto)=="fgjgldkfg"){
        $outlet_info = $CI->db->query("SELECT * FROM tbl_outlets WHERE del_status='Live'")->row();
        $return_menu = "Outlet/addEditOutlet/".(isset($outlet_info->id) && $outlet_info->id?$outlet_info->id:'');
    }
    return [$company->language_manifesto,sizeof($outlet_info1),$return_menu,$company->outlet_qty];
}
/**
 * get Outlets
 * @access public
 * @return string
 * @param string
 */
function getOutlets($outlets){
    $CI = & get_instance();
    $outlet_info1 = $CI->db->query("SELECT * FROM tbl_outlets WHERE FIND_IN_SET(`id`, '$outlets') AND del_status='Live'")->result();
    $outlet_names = '';
    if($outlet_info1){
        foreach ($outlet_info1 as $key=>$name){
            $outlet_names.= $name->outlet_name;
            if($key < (sizeof($outlet_info1) -1)){
                $outlet_names.=", ";
            }
        }
    }

    return $outlet_names;
}
/**
 * get Outlet Name By Id
 * @access public
 * @return string
 * @param int
 */
function getOutletNameById($outlet_id){
    $CI = & get_instance();
    $outlet_info1 = $CI->db->query("SELECT * FROM tbl_outlets WHERE id='$outlet_id' AND del_status='Live'")->row();
    if($outlet_info1){
        return $outlet_info1->outlet_name;
    }else{
        return "";
    }
}

function getColumnById($table, $columnName, $columnID, $idValue){
    $CI = & get_instance();
    $data = $CI->db->query("SELECT $columnName FROM $table WHERE $columnID='$idValue'")->row();
    if($data){
        return $data->$columnName;
    }else{
        return "";
    }
}

/**
 * total Users
 * @access public
 * @return int
 * @param int
 */
function totalUsers($company_id) {
    $CI = & get_instance();
    $total_users = $CI->db->query("SELECT * FROM tbl_users where `company_id`='$company_id'")->num_rows();
    return $total_users;
}
/**
 * get White Label for setting info
 * @access public
 * @return object
 * @param no
 */
function getWhiteLabel() {
    $company_info = getCompanyInfo();
    $getWhiteLabel = json_decode($company_info->white_label);
    return $getWhiteLabel;
}
/**
 * return food menu id for outlet
 * @access public
 * @return string
 * @param no
 */
function getFMIds() {
    $CI = & get_instance();
    $outlet_id = $CI->session->userdata('outlet_id');
    $language_manifesto = $CI->session->userdata('language_manifesto');
    if(str_rot13($language_manifesto)=="fgjgldkfg"){
        $CI->db->select("id");
        $CI->db->from("tbl_food_menus");
        $CI->db->where("del_status","Live");
        $result = $CI->db->get()->result();
        $main_arr = '';
        if(isset($result) && $result){
            foreach ($result as $keys=>$value){
                $main_arr.=$value->id;
                if($keys < (sizeof($result)) -1){
                    $main_arr.=",";
                }
            }
        }
        return $main_arr;
    }else{
        $CI->db->select("*");
        $CI->db->from("tbl_outlets");
        $CI->db->where("id",$outlet_id);
        $CI->db->where("del_status","Live");
        $result = $CI->db->get()->row();
        $food_menus =  $result->food_menus;

        if(isset($food_menus)&& $food_menus){
            return $food_menus;
        }else{
            $CI->db->select("id");
            $CI->db->from("tbl_food_menus");
            $CI->db->where("del_status","Live");
            $result = $CI->db->get()->result();
            $main_arr = '';
            if(isset($result) && $result){
                foreach ($result as $keys=>$value){
                    $main_arr.=$value->id;
                    if($keys < (sizeof($result)) -1){
                        $main_arr.=",";
                    }
                }
            }
            return $main_arr;
        }
    }

}
/**
 * return food menu id for outlet
 * @access public
 * @return string
 * @param no
 */
function getFMIdsOutlet($outlet_id) {
    $CI = & get_instance();
    $language_manifesto = $CI->session->userdata('language_manifesto');
    if(str_rot13($language_manifesto)=="fgjgldkfg"){
        $CI->db->select("id");
        $CI->db->from("tbl_food_menus");
        $CI->db->where("del_status","Live");
        $result = $CI->db->get()->result();
        $main_arr = '';
        if(isset($result) && $result){
            foreach ($result as $keys=>$value){
                $main_arr.=$value->id;
                if($keys < (sizeof($result)) -1){
                    $main_arr.=",";
                }
            }
        }
        return $main_arr;
    }else{
        $CI->db->select("*");
        $CI->db->from("tbl_outlets");
        $CI->db->where("id",$outlet_id);
        $CI->db->where("del_status","Live");
        $result = $CI->db->get()->row();
        $food_menus =  $result->food_menus;

        if(isset($food_menus)&& $food_menus){
            return $food_menus;
        }else{
            $CI->db->select("id");
            $CI->db->from("tbl_food_menus");
            $CI->db->where("del_status","Live");
            $result = $CI->db->get()->result();
            $main_arr = '';
            if(isset($result) && $result){
                foreach ($result as $keys=>$value){
                    $main_arr.=$value->id;
                    if($keys < (sizeof($result)) -1){
                        $main_arr.=",";
                    }
                }
            }
            return $main_arr;
        }
    }

}
/**
 * is LMni
 * @access public
 * @return boolean
 * @param no
 */
function isLMni() {
    $data_c = getLanguageManifesto();
    if(str_rot13($data_c[0])=="eriutoeri"){
        return true;
    }else{
        return false;
    }
}
/**
 * get FM Id Dashboard
 * @access public
 * @return string
 * @param int
 */
function getFMIdDashboard($outlet_id) {
    $CI = & get_instance();
    $CI->db->select("*");
    $CI->db->from("tbl_outlets");
    $CI->db->where("id",$outlet_id);
    $CI->db->where("del_status","Live");
    $result = $CI->db->get()->row();
    return $result->food_menus;
}
/**
 * user Name
 * @access public
 * @return string
 * @param int
 */
function userName($user_id) {
    $CI = & get_instance();
    $user_information = $CI->db->query("SELECT * FROM tbl_users where `id`='$user_id'")->row();
    return isset($user_information->full_name) && $user_information->full_name?$user_information->full_name:'';
}
function getExpenseItemName($user_id) {
    $CI = & get_instance();
    $user_information = $CI->db->query("SELECT * FROM tbl_expense_items where `id`='$user_id'")->row();
    return isset($user_information->name) && $user_information->name?$user_information->name:'';
}
/**
 * get Customer Name
 * @access public
 * @return string
 * @param int
 */
function getCustomerName($customer_id) {
    $CI = & get_instance();
    $information = $CI->db->query("SELECT * FROM tbl_customers where `id`='$customer_id'")->row();
    return isset($information->name) && $information->name?$information->name:'';
}
/**
 * get Order Type
 * @access public
 * @return string
 * @param int
 */
function getOrderType($order_type_id) {
    if ($order_type_id == 1) {
       return "Dine In";
    }elseif ($order_type_id == 2) {
        return "Take Away";
    }elseif ($order_type_id == 3) {
        return "Delivery";
    }
}
/**
 * get Table Name
 * @access public
 * @return string
 * @param int
 */
function getTableName($table_id) {
    $CI = & get_instance();
    $information = $CI->db->query("SELECT * FROM tbl_tables where `id`='$table_id'")->row();
    return $information->name;
}
/**
 * get Consumption ID
 * @access public
 * @return string
 * @param int
 */
function getConsumptionID($id) {
    $CI = & get_instance();
    $selectRow = $CI->db->query("SELECT * FROM tbl_sale_consumptions where `sale_id`='$id'")->row();
    if (!empty($selectRow)) {
        return $selectRow->id;
    } else {
        return '0';
    }
}
/**
 * vat Name
 * @access public
 * @return string
 * @param int
 */
function vatName($id){
    $CI = & get_instance();
    $expense_item_information = $CI->db->query("SELECT * FROM tbl_vats where `id`='$id'")->row();

    return $expense_item_information->name;
}
/**
 * expense Item Name
 * @access public
 * @return string
 * @param int
 */
function expenseItemName($id) {
    $CI = & get_instance();
    $expense_item_information = $CI->db->query("SELECT * FROM tbl_expense_items where `id`='$id'")->row();
    return $expense_item_information->name;
}
/**
 * employee Name
 * @access public
 * @return string
 * @param int
 */
function employeeName($id) {
    $CI = & get_instance();
    $employee_information = $CI->db->query("SELECT * FROM tbl_users where `id`='$id'")->row();
    if (!empty($employee_information)) {
       return $employee_information->full_name;
    }else{
        return "N/A";
    } 
}
/**
 * category Name
 * @access public
 * @return string
 * @param int
 */
function categoryName($category_id) {
    $CI = & get_instance();
    $category_information = $CI->db->query("SELECT * FROM tbl_ingredient_categories where `id`='$category_id'")->row();
    return $category_information->category_name;
}
/**
 * food Menu Category Name
 * @access public
 * @return string
 * @param int
 */
function foodMenucategoryName($category_id) {
    $CI = & get_instance();
    $category_information = $CI->db->query("SELECT * FROM tbl_food_menu_categories where `id`='$category_id'")->row();
    return $category_information->category_name;
}
/**
 * food Menu Name
 * @access public
 * @return string
 * @param int
 */
function foodMenuName($id) {
    $CI = & get_instance();
    $food_information = $CI->db->query("SELECT * FROM tbl_food_menus where `id`='$id'")->row();
    return $food_information->name;
}
/**
 * food Menu Name Code
 * @access public
 * @return string
 * @param int
 */
function foodMenuNameCode($id) {
    $CI = & get_instance();
    $food_information = $CI->db->query("SELECT * FROM tbl_food_menus where `id`='$id'")->row();
    return "(" . $food_information->code . ")";
}
/**
 * unitName
 * @access public
 * @return object
 * @param int
 */
function unitName($unit_id) {
    $CI = & get_instance();
    $unit_information = $CI->db->query("SELECT * FROM tbl_units where `id`='$unit_id'")->row();
    if (!empty($unit_information)) {
        return $unit_information->unit_name;
    } else {
        return '';
    }
}
/**
 * totalIngredients
 * @access public
 * @return int
 * @param int
 */
function totalIngredients($food_menu_id) {
    $CI = & get_instance();
    $total_count = $CI->db->query("SELECT * FROM tbl_food_menus_ingredients where `food_menu_id`='$food_menu_id'")->num_rows();
    return $total_count;
}
/**
 * food Menu Ingredients
 * @access public
 * @return object
 * @param int
 */
function foodMenuIngredients($food_menu_id) {
    $CI = & get_instance();
    $food_menu_ingredients = $CI->db->query("SELECT * FROM tbl_food_menus_ingredients where `food_menu_id`='$food_menu_id'")->result();
    return $food_menu_ingredients;
}
/**
 * modifier Ingredients
 * @access public
 * @return object
 * @param int
 */
function modifierIngredients($modifier_id) {
    $CI = & get_instance();
    $food_menu_ingredients = $CI->db->query("SELECT * FROM tbl_modifier_ingredients where `modifier_id`='$modifier_id'")->result();
    return $food_menu_ingredients;
}
/**
 * get Payment Name
 * @access public
 * @return string
 * @param int
 */
function getPaymentName($id) {
    $CI = & get_instance();
    $getPaymentName = $CI->db->query("SELECT * FROM tbl_payment_methods where `id`='$id'")->row();
    return $getPaymentName->name;
}
/**
 * get Alert Count
 * @access public
 * @return string
 * @param int
 */
function getAlertCount() {
    $CI = & get_instance();
    $company_id = $CI->session->userdata('company_id');
    $outlet_id = $CI->session->userdata('outlet_id');
    $where = '';
    $getFMIds = getFMIds();
    $result = $CI->db->query("SELECT ingr_tbl.*,i.id as food_menu_id,ingr_cat_tbl.category_name,ingr_unit_tbl.unit_name, (select SUM(quantity_amount) from tbl_purchase_ingredients where ingredient_id=i.id AND outlet_id=$outlet_id AND del_status='Live') total_purchase, 
(select SUM(consumption) from tbl_sale_consumptions_of_menus where ingredient_id=i.id AND outlet_id=$outlet_id AND del_status='Live') total_consumption,
(select SUM(consumption) from tbl_sale_consumptions_of_modifiers_of_menus where ingredient_id=i.id AND outlet_id=$outlet_id AND  del_status='Live') total_modifiers_consumption,
(select SUM(waste_amount) from tbl_waste_ingredients  where ingredient_id=i.id AND outlet_id=$outlet_id AND tbl_waste_ingredients.del_status='Live') total_waste,
(select SUM(consumption_amount) from tbl_inventory_adjustment_ingredients  where ingredient_id=i.id AND outlet_id=$outlet_id AND  tbl_inventory_adjustment_ingredients.del_status='Live' AND  tbl_inventory_adjustment_ingredients.consumption_status='Plus') total_consumption_plus,
(select SUM(consumption_amount) from tbl_inventory_adjustment_ingredients  where ingredient_id=i.id AND outlet_id=$outlet_id AND  tbl_inventory_adjustment_ingredients.del_status='Live' AND  tbl_inventory_adjustment_ingredients.consumption_status='Minus') total_consumption_minus,
        (select SUM(quantity_amount) from tbl_transfer_ingredients  where ingredient_id=i.id AND to_outlet_id=$outlet_id AND  tbl_transfer_ingredients.del_status='Live' AND  tbl_transfer_ingredients.status=1) total_transfer_plus,
        (select SUM(quantity_amount) from tbl_transfer_ingredients  where ingredient_id=i.id AND from_outlet_id=$outlet_id AND  tbl_transfer_ingredients.del_status='Live' AND (tbl_transfer_ingredients.status=1)) total_transfer_minus
FROM tbl_ingredients i  LEFT JOIN (select * from tbl_ingredients where del_status='Live') ingr_tbl ON ingr_tbl.id = i.id LEFT JOIN (select * from tbl_ingredient_categories where del_status='Live') ingr_cat_tbl ON ingr_cat_tbl.id = ingr_tbl.category_id LEFT JOIN (select * from tbl_units where del_status='Live') ingr_unit_tbl ON ingr_unit_tbl.id = ingr_tbl.unit_id WHERE i.company_id= '$company_id' AND i.del_status='Live' $where  GROUP BY i.id")->result();
    $alertCount = 0;
    foreach ($result as $value) {
        $totalStock = $value->total_purchase - $value->total_consumption - $value->total_modifiers_consumption - $value->total_waste + $value->total_consumption_plus  + $value->total_transfer_plus  - $value->total_transfer_minus - $value->total_consumption_minus + $value->total_transfer_plus  - $value->total_transfer_minus;
        if ((int)$totalStock <= (int)$value->alert_quantity) {
            if($value->id):
                $alertCount++;
                endif;
        }
    }
    return $alertCount;
}
/**
 * collect GST
 * @access public
 * @return string
 * @param int
 */
function collectGST(){
    $CI = & get_instance();
    $outlet_id = $CI->session->userdata('outlet_id');
    if($outlet_id){
        $outlet_info = $CI->db->query("SELECT * FROM tbl_companies where `id`='$outlet_id'")->row();
        return $outlet_info->tax_is_gst;    
    }else{
        return "No";
    }
}
/**
 * get Ingredient Name By Id
 * @access public
 * @return string
 * @param int
 */
function getIngredientNameById($id) {
    $CI = & get_instance();
    $ig_information = $CI->db->query("SELECT * FROM tbl_ingredients where `id`='$id'")->row();
    if (!empty($ig_information)) {
        return $ig_information->name;
    } else {
        return '';
    }
}
/**
 * get Modifier Name By Id
 * @access public
 * @return string
 * @param int
 */
function getModifierNameById($id) {
    $CI = & get_instance();
    $m_information = $CI->db->query("SELECT * FROM tbl_modifier where `id`='$id'")->row();
    if (!empty($m_information)) {
        return $m_information->name;
    } else {
        return '';
    }
}
/**
 * get Ingredient Code By Id
 * @access public
 * @return string
 * @param int
 */
function getIngredientCodeById($id) {
    $CI = & get_instance();
    $ig_information = $CI->db->query("SELECT * FROM tbl_ingredients where `id`='$id'")->row();
    return $ig_information->code;
}
/**
 * get Supplier Name By Id
 * @access public
 * @return string
 * @param int
 */
function getSupplierNameById($id) {
    $CI = & get_instance();
    $supplier_information = $CI->db->query("SELECT * FROM tbl_suppliers where `id`='$id'")->row();
    return $supplier_information->name;
}
/**
 * get Unit Id By Ig Id
 * @access public
 * @return string
 * @param int
 */
function getUnitIdByIgId($id) {
    $CI = & get_instance();
    $ig_information = $CI->db->query("SELECT * FROM tbl_ingredients where `id`='$id'")->row();
    if (!empty($ig_information)) {
        return $ig_information->unit_id;
    } else {
        return '';
    }
}
/**
 * get Last Purchase Amount
 * @access public
 * @return float
 * @param int
 */
function getLastPurchaseAmount($id) {
    $CI = & get_instance();
    $purchase_ingredients = $CI->db->query("SELECT * FROM tbl_purchase_ingredients where `ingredient_id`='$id' ORDER BY id DESC")->row();
    if (!empty($purchase_ingredients)) {
        $returnPrice = $purchase_ingredients->unit_price;
    } else {
        $returnPrice = 0.0;
    }
    return $returnPrice;
}
/**
 * get Purchase Ingredients
 * @access public
 * @return string
 * @param int
 */
function getPurchaseIngredients($id) {
    $CI = & get_instance();
    $purchase_ingredients = $CI->db->query("SELECT * FROM tbl_purchase_ingredients where `purchase_id`='$id'")->result();
    if (!empty($purchase_ingredients)) {
        $pur_ingr_all = "";
        $key = 1;
        $pur_ingr_all .= "<b>SN-Ingredient-Qty/Amount-Unit Price-Total</b><br>";
        foreach ($purchase_ingredients as $value) { 
            $pur_ingr_all .= $key ."-". getIngredientNameById($value->ingredient_id)."-".$value->quantity_amount ."-". $value->unit_price ."-". $value->total."<br>";
            $key++;
        }
        return $pur_ingr_all;
    }else{
        return "Not found!";
    }
}
/**
 * get Last Purchase Price
 * @access public
 * @return float
 * @param int
 */
function getLastPurchasePrice($ingredient_id) {
    $CI = & get_instance();
    $purchase_info = $CI->db->query("SELECT *
    FROM tbl_purchase_ingredients
    WHERE ingredient_id = $ingredient_id
    ORDER BY id DESC
    LIMIT 1")->row();
    if (!empty($purchase_info)) {
        return $purchase_info->unit_price;
    } else {
        $ig_information = $CI->db->query("SELECT * FROM tbl_ingredients where `id`='$ingredient_id'")->row();
        return $ig_information->purchase_price;
    }
}
/**
 * ingredient Count
 * @access public
 * @return int
 * @param int
 */
function ingredientCount($id) {
    $CI = & get_instance();
    $ingredient_count = $CI->db->query("SELECT COUNT(*) AS ingredient_count
    FROM tbl_waste_ingredients
    WHERE waste_id = $id")->row();
    return $ingredient_count->ingredient_count;
}
/**
 * ingredient Count Consumption
 * @access public
 * @return int
 * @param int
 */
function ingredientCountConsumption($id) {
    $CI = & get_instance();
    $ingredient_count = $CI->db->query("SELECT COUNT(*) AS ingredient_count
    FROM tbl_inventory_adjustment_ingredients
    WHERE inventory_adjustment_id = $id")->row();
    return $ingredient_count->ingredient_count;
}
/**
 * company Information
 * @access public
 * @return object
 * @param int
 */
function companyInformation($company_id) {
    $CI = & get_instance();
    $company_info = $CI->db->query("SELECT * FROM tbl_companies where `id`='$company_id'")->row();
    return $company_info;
}
/**
 * find Date
 * @access public
 * @return string
 * @param int
 */
function findDate($date) {
    $format = null;
    if ($date == '') {
        return '';
    } else {
        $format = 'd/m/Y';
    }
    return date($format, strtotime($date));
}
/**
 * alter Date Format return
 * @access public
 * @return string
 * @param int
 */
function alterDateFormat($date) {
    $query1 = mysql_query("SELECT date_format FROM company_info where id='1'");
    $row = mysql_fetch_array($query1);
    $format = null;
    if ($date != "") {
        $dateSlug = explode('/', $date);
        //return $dateSlug[2].'-'.$dateSlug[1].'-'.$dateSlug[0];
        switch ($row['date_format']) {
            case 'dd/mm/yyyy':
                $format = $dateSlug[2] . '-' . $dateSlug[1] . '-' . $dateSlug[0];
                break;
            case 'mm/dd/yyyy':
                $format = $dateSlug[2] . '-' . $dateSlug[0] . '-' . $dateSlug[1];
                break;
            case 'yyyy/mm/dd':
                $format = $dateSlug[0] . '-' . $dateSlug[1] . '-' . $dateSlug[2];
                break;
            default:
                $format = $dateSlug[2] . '-' . $dateSlug[1] . '-' . $dateSlug[0];
                break;
        }
        return $format;
    } else {
        return "0000-00-00 00:00:00";
    }
}
/**
 * get Customer Due Receive
 * @access public
 * @return float
 * @param int
 */
function getCustomerDueReceive($customer_id){
    $CI = & get_instance();
    $information = $CI->db->query("SELECT sum(amount) as amount FROM tbl_customer_due_receives where `customer_id`='$customer_id' and del_status='Live'")->row(); 
    return $information->amount;
}
/**
 * getSupplierDuePayment
 * @access public
 * @return float
 * @param int
 */
function getSupplierDuePayment($supplier_id){
    $CI = & get_instance();
    $information = $CI->db->query("SELECT sum(amount) as amount FROM tbl_supplier_payments where `supplier_id`='$supplier_id' and del_status='Live'")->row(); 
    return $information->amount;
}
