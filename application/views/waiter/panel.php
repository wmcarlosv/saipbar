<?php 
$notification_number = 0;
if(count($notifications)>0){
    $notification_number = count($notifications);
}

/************************************************************************************************************************
 * Construct notification list ***********************************************************************************
 * **********************************************************************************************************************
 */
$notification_list_show = '';

foreach ($notifications as $single_notification){
    $notification_list_show .= '<div class="single_row_notification fix" id="single_notification_row_'.$single_notification->id.'">';
    $notification_list_show .= '<div class="fix single_notification_check_box">';
    $notification_list_show .= '<input class="single_notification_checkbox" type="checkbox" id="single_notification_'.$single_notification->id.'" value="'.$single_notification->id.'">';
    $notification_list_show .= '</div>';
    $notification_list_show .= '<div class="fix single_notification">'.$single_notification->notification.'</div>';
    $notification_list_show .= '<div class="fix single_serve_button">';
    $notification_list_show .= '<button class="single_serve_b" id="notification_serve_button_'.$single_notification->id.'">'.lang('collect').'</button>';
    $notification_list_show .= '</div>';
    $notification_list_show .= '</div>';
    
}

/************************************************************************************************************************
 * End of Construct notification list ***********************************************************************************
 * **********************************************************************************************************************
 */


?>
<?php
$wl = getWhiteLabel();
if($wl){
    if($wl->site_name){
        $site_name = $wl->site_name;
    }
    if($wl->footer){
        $footer = $wl->footer;
    }
    if($wl->system_logo){
        $system_logo = base_url()."images/".$wl->system_logo;
    }
}
?>
<!DOCTYPE html>
<html>

<head>
    <title>SaipBar - ResetSv</title>
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/waiter_panel/css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Yantramanav" rel="stylesheet">
    <link rel="stylesheet"
          href="<?php echo base_url(); ?>assets/bower_components/font-awesome/v5/all.min.css">
    <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/waiter_panel/css/sweetalert2.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/select2/dist/css/select2.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>asset/plugins/iCheck/minimal/color-scheme.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/dist/css/common.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/dist/css/custom/waiterPanel.css">

    <script src="<?php echo base_url()?>assets/waiter_panel/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/waiter_panel/js/jquery.slimscroll.min.js">
    </script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/waiter_panel/js/sweetalert2.all.min.js">
    </script>
    <script type="text/javascript"
        src="<?php echo base_url(); ?>assets/bower_components/select2/dist/js/select2.full.min.js"></script>

    <base data-base="<?php echo base_url(); ?>">
    </base>
    <base data-collect-vat="<?php echo escape_output($this->session->userdata('collect_vat')); ?>">
    </base>
    <base data-currency="<?php echo escape_output($this->session->userdata('currency')); ?>">
    </base>
    <base data-role="<?php echo escape_output($this->session->userdata('role')); ?>">
    </base>

    <!-- Favicon -->
    <link rel="shortcut icon" href="<?php echo base_url(); ?>images/favicon.ico" type="image/x-icon">
    <!-- Favicon -->
    <link rel="icon" href="<?php echo base_url(); ?>images/favicon.ico" type="image/x-icon">

</head>

<body>

    <input type="hidden" id="csrf_name_" value="<?php echo escape_output($this->security->get_csrf_token_name()); ?>">
    <input type="hidden" id="csrf_value_" value="<?php echo escape_output($this->security->get_csrf_hash()); ?>">

    <span class="ir_display_none" id="selected_order_for_refreshing_help"></span>
    <div class="wrapper fix">
        <div class="top fix">
            <h1 class="main_header"><?php echo lang('waiter_panel'); ?> -
                <?php echo escape_output($this->session->userdata('outlet_name')); ?></h1>
            <div class="header_button_div">
                <a href="<?php echo base_url(); ?>Authentication/logOut" id="logout_button"><i
                        class="fas fa-sign-out-alt"></i> <?php echo lang('logout'); ?></a>
                <button id="notification_button"><i class="fas fa-bell"></i> <?php echo lang('notification'); ?> (<span
                        id="notification_counter"><?php echo escape_output($notification_number); ?></span>)</button>
                <a href="<?php echo base_url(); ?>Authentication/userProfile" id="logout_button"><i
                        class="fas fas-caret-square-left"></i><?php echo lang('back'); ?></a>
                <?php echo form_open(base_url() . 'Authentication/setlanguage', $arrayName = array('id' => 'language')) ?>
                <select tabindex="2" class="form-control select2 ir_w_100" name="language"
                    onchange='this.form.submit()'>
                    <option value=""><?php echo lang('select_language'); ?></option>
                    <option value="english" <?php if(isset($language)){
                                    if ($language == 'english') 
                                        echo "selected";
                                    } else echo set_select('language', "english");
                                    ?>>English</option>
                    <option value="spanish" <?php if(isset($language)){
                                    if ($language == 'spanish') 
                                        echo "selected";
                                    } else echo set_select('language', "spanish");
                                    ?>>Spanish</option>
                    <option value="arabic" <?php if(isset($language)){
                                    if ($language == 'arabic') 
                                        echo "selected";
                                    } else echo set_select('language', "arabic");
                                    ?>>Arabic</option>
                </select>
                </form>
            </div>

        </div>
        <div class="bottom fix" class="ir_min_height">
            <div class="notification_wrapper fix">
                <h1 id="modal_notification_header"><?php echo lang('notification_list'); ?></h1>
                <div id="notification_list_header_holder">
                    <div class="single_row_notification_header fix ir_h_bm">
                        <div class="fix single_notification_check_box">
                            <input type="checkbox" id="select_all_notification">
                        </div>
                        <div class="fix single_notification"><strong><?php echo lang('select_all'); ?></strong></div>
                        <div class="fix single_serve_button">
                        </div>
                    </div>
                </div>


                <div id="notification_list_holder" class="fix">
                    <!--This variable could not be escaped because this is html content-->
                    <?php echo $notification_list_show;?>
                </div>
                <!-- <span class="close">&times;</span> -->
                <!-- <p>Some text in the Modal..</p> -->
                <div id="notification_close_delete_button_holder">
                    <button id="notification_remove_all"><?php echo lang('remove'); ?></button>
                    <!-- <button id="notification_close">Close</button> -->
                </div>
            </div>
        </div>
    </div>

    <!-- The Modal -->
    <div id="help_modal" class="modal">

        <!-- Modal content -->
        <div class="modal-content" id="modal_help_content">
            <p class="cross_button_to_close">&times;</p>
        
            <h1 class="main_header"><?php echo lang('help'); ?></h1>
            <p class="help_content">
                <?php echo lang('waiter_help_text_first_para'); ?> </br>
                <?php echo lang('waiter_help_text_second_para'); ?><br />
                <?php echo lang('waiter_help_text_third_para'); ?>

            </p>
        </div>

    </div>
    <!-- end of item modal -->
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/waiter_panel/js/marquee.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/waiter_panel/js/custom.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/waiter_panel/js/datable.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/waiter_panel/js/jquery.cookie.js"></script>
</body>

</html>

<!-- 



-->