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
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>SaipBar - ResetSv</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- jQuery 3 -->
    <script src="<?php echo base_url(); ?>assets/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Select2 -->
    <script src="<?php echo base_url(); ?>assets/bower_components/select2/dist/js/select2.full.min.js"></script>
    <!-- Select2 -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/select2/dist/css/select2.min.css">

    <!-- InputMask -->
    <script src="<?php echo base_url(); ?>assets/plugins/input-mask/jquery.inputmask.js"></script>
    <script src="<?php echo base_url(); ?>assets/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
    <script src="<?php echo base_url(); ?>assets/plugins/input-mask/jquery.inputmask.extensions.js"></script>
    <!-- iCheck -->
    <script src="<?php echo base_url(); ?>assets/plugins/iCheck/icheck.min.js"></script>
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/iCheck/all.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/custom_css.css">

    <!-- Sweet alert -->
    <script src="<?php echo base_url(); ?>assets/POS/sweetalert2/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/POS/sweetalert2/dist/sweetalert.min.css">

    <!-- Numpad -->
    <script src="<?php echo base_url(); ?>assets/bower_components/numpad/jquery.numpad.js"></script>
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/numpad/jquery.numpad.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/numpad/theme.css">
    <!--datepicker-->
    <!-- bootstrap datepicker -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/datepicker/datepicker.css">

    <!-- bootstrap datepicker -->
    <script src="<?php echo base_url(); ?>assets/bower_components/datepicker/bootstrap-datepicker.js"></script>

    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet"
        href="<?php echo base_url(); ?>assets/bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/Ionicons/css/ionicons.min.css">

    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/dist/css/jquery.mCustomScrollbar.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/dist/css/skins/_all-skins.css">
    <!-- iCheck -->
    <link href="<?php echo base_url(); ?>asset/plugins/iCheck/minimal/color-scheme.css" rel="stylesheet">
    <!-- Favicon -->
    <link rel="shortcut icon" href="<?php echo base_url(); ?>images/favicon.ico" type="image/x-icon">
    <!-- Favicon -->
    <link rel="icon" href="<?php echo base_url(); ?>images/favicon.ico" type="image/x-icon">

    <!-- Theme style -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/dist/css/AdminLTE.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/dist/css/custom/userHome.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/dist/css/common.css">

    <!-- Google Font -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/local/google_font.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/custom_tooltip.css">
    <script src="<?php echo base_url(); ?>assets/js/user_home.js"></script>

</head>

<?php $uri = $this->uri->segment(2); ?>
<div class="loader"></div>
<!-- ADD THE CLASS sidebar-collapse TO HIDE THE SIDEBAR PRIOR TO LOADING THE SITE -->

<body class="hold-transition skin-blue sidebar-mini sidebar-collapse">
<input type="hidden" id="ingredient" value="<?php echo lang('ingredient'); ?>">
<input type="hidden" id="stock_value" value="<?php echo lang('stock_value'); ?>">
<input type="hidden" id="currency" value="<?php echo escape_output($this->session->userdata('currency')); ?>">
<input type="hidden" id="csrf_name_" value="<?php echo escape_output($this->security->get_csrf_token_name()); ?>">
<input type="hidden" id="csrf_value_" value="<?php echo escape_output($this->security->get_csrf_hash()); ?>">
<input type="hidden" id="warning" value="<?php echo lang('alert'); ?>">
<input type="hidden" id="a_error" value="<?php echo lang('error'); ?>">
<input type="hidden" id="ok" value="<?php echo lang('ok'); ?>">
<input type="hidden" id="cancel" value="<?php echo lang('cancel'); ?>">
<input type="hidden" id="are_you_sure" value="<?php echo lang('are_you_sure'); ?>">
<input type="hidden" id="not_closed_yet" value="<?php echo lang('not_closed_yet'); ?>">
<input type="hidden" id="opening_balance" value="<?php echo lang('opening_balance'); ?>">
<input type="hidden" id="paid_amount" value="<?php echo lang('paid_amount'); ?>">
<input type="hidden" id="customer_due_receive" value="<?php echo lang('customer_due_receive'); ?>">
<input type="hidden" id="opening_balance" value="<?php echo lang('opening_balance'); ?>">
<input type="hidden" id="paid_amount" value="<?php echo lang('paid_amount'); ?>">
<input type="hidden" id="customer_due_receive" value="<?php echo lang('customer_due_receive'); ?>">
<input type="hidden" id="in_" value="<?php echo lang('in'); ?>">
<input type="hidden" id="cash" value="<?php echo lang('cash'); ?>">
<input type="hidden" id="paypal" value="<?php echo lang('paypal'); ?>">
<input type="hidden" id="sale" value="<?php echo lang('sale'); ?>">
<input type="hidden" id="card" value="<?php echo lang('card'); ?>">
<input type="hidden" id="base_url_" value="<?php echo base_url(); ?>">
<input type="hidden" id="site_logo" value="<?php echo base_url(); ?>assets/media/logo.png">
<input type="hidden" id="site_favicon" value="<?php echo base_url(); ?>images/favicon.ico">
<input type="hidden" id="saas_m_ch" value="<?=file_exists(APPPATH.'controllers/Saas.php')?'yes':''?>">
<?php $language = $this->session->userdata('language'); ?>

    <!-- Site wrapper -->
    <div class="wrapper">
        <header class="main-header <?=isset($language) && $language=="arabic"?'sidebar2_active"':''?>">
            <!-- Logo -->
            <a href="#" class="logo" <?=isset($language) && $language=="arabic"?'style="display:none"':''?>>
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <span class="logo-mini">SB</span>
                <!-- logo for regular state and mobile devices -->
                <span class="logo-lg">
                    <img src="<?php echo base_url(); ?>images/logo.png">
                </span>
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" <?=isset($language) && $language=="arabic"?'style="margin-left:0px"':''?>>
                <!-- Sidebar toggle button-->
                <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button" <?=isset($language) && $language=="arabic"?'style="display:none"':''?>>
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>

                <div class="wrapper_up_wrapper">
                <div class="hh_wrapper">
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">

                            <?php if ($this->session->userdata('outlet_id')) { ?>
                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a href="<?php echo base_url(); ?>Sale/POS">
                                    <!-- <i class="fa fa-cutlery"></i> -->
                                    <i data-feather="coffee"></i>
                                    <span class="hidden-xs"><?php echo lang('pos'); ?></span>
                                </a>
                            </li>
                            <li class="dropdown user user-menu">
                                <a href="<?php echo base_url(); ?>Purchase/addEditPurchase">
                                    <i data-feather="truck"></i>
                                    <span class="hidden-xs"><?php echo lang('add_purchase'); ?></span>
                                </a>
                            </li>
                            <?php if ($this->session->userdata('role') == "Admin") { ?>
                            <li class="dropdown user user-menu">
                                <a href="#" onclick="todaysSummary();" class="dropdown-toggle" data-toggle="dropdown">
                                    <i data-feather="truck"></i> <span
                                        class="hidden-xs"><?php echo lang('todays_summary'); ?></span>
                                </a>
                            </li>
                            <?php
                                    }
                                    $url = $this->uri->segment(2);
                                    if ($url == "addEditSale"):
                                        ?>
                            <li class="dropdown user user-menu">
                                <a href="#" onclick="shortcut();" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-keyboard-o"></i><span
                                        class="hidden-xs"><?php echo lang('shortcut_keys'); ?></span>
                                </a>
                            </li>
                            <?php endif; ?>

                            <li class="dropdown user user-menu">
                                <a href="#" id="register_details">
                                    <i data-feather="info"></i> <span
                                        class="hidden-xs"><?php echo lang('register_details'); ?></span>
                                </a>
                            </li>
                            <li class="dropdown user user-menu ir_display_none" id="close_register_button">
                                <a href="#" id="register_close">
                                    <i data-feather="x-circle"></i> <span
                                        class="hidden-xs"><?php echo lang('close_register'); ?></span>
                                </a>
                            </li>
                            <?php } ?>
                        </ul>
                    </div>
                    <div class="navbar-custom-menu">
                            <ul class="nav navbar-nav">
                                <li class="dropdown messages-menu open ir_wid_pad">
                                    <?php $language=$this->session->userdata('language'); ?>
                                    <?php echo form_open(base_url() . 'Authentication/setlanguage', $arrayName = array('id' => 'language')) ?>
                                    <select tabindex="2" class="form-control select2 ir_w_100" name="language"
                                        onchange='this.form.submit()'>
                                        <?php
                                        $dir = glob("application/language/*",GLOB_ONLYDIR);
                                        foreach ($dir as $value):
                                            $separete = explode("language/",$value);
                                            ?>
                                            <option <?php echo isset($language) && $language==$separete[1]?'selected':''?> value="<?php echo escape_output($separete[1])?>"><?php echo ucfirst($separete[1])?></option>
                                            <?php
                                        endforeach;
                                        ?>

                                    </select>
                                    </form>
                                </li>
                                <li class="ir_m-top-15">
                                    <p class="ir_mx-10"><b><?php echo escape_output($this->session->userdata('full_name')); ?></b></p>
                                </li>
                                <!-- User Account: style can be found in dropdown.less -->
                                <li class="dropdown user user-menu">
                                    <a href="<?php echo base_url(); ?>Authentication/logOut"><?php echo lang('logout'); ?>
                                    </a>
                                </li>
                            </ul>
                        
                    </div>
                </div>

                <!-- Right Sidebar Trigger -->
                <div class="c-navbar-right">
                    
                    <div class="sidebar2_logo" <?=isset($language) && $language=="arabic"?'style="display:flex"':'display:none'?>>
                        <a href="#" class="right__sidebar__toggle">
                            <span class="sr-only">Toggle navigation</span>
                            <i data-feather="menu"></i>
                        </a>
                        <a href="#" class="right__logo">
                            <!-- mini logo for sidebar mini 50x50 pixels -->
                            <span class="logo__mini">iR</span>
                            <!-- logo for regular state and mobile devices -->
                            <div class="logo__lg">
                                <img src="<?php echo base_url(); ?>images/logo.png">
                            </div>
                        </a>
                    </div>
                </div>
                </div>
            </nav>
            
        </header>

        <!-- Left side column. contains the sidebar -->
        <aside class="main-sidebar" <?=isset($language) && $language=="arabic"?'style="display:none"':''?>>
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">
                <!-- Sidebar user panel -->
                <div class="user-panel">
                    <div class="pull-left info">
                        <p><?php echo escape_output($this->session->userdata('outlet_name')); ?></p>
                        <p><?php echo escape_output($this->session->userdata('full_name')); ?></p>
                    </div>
                </div>
                <ul class="sidebar-menu">
                    <li class="header"><?php echo lang('main_navigation'); ?></li>
                </ul>
                <div id="left_menu_to_scroll">
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu" data-widget="tree">
                        <?php
                        $menu_access = getMainMenu();
                        foreach ($menu_access as $ky=>$value_menu):
                            $base_url_g = base_url().$value_menu->controller_name."/".$value_menu->function_name;
                            if(isset($value_menu->sub_menus) && $value_menu->sub_menus):
                            ?>
                                <li class="treeview">
                                    <a href="#">
                                        <i data-feather="file-text"></i> <span><?php echo lang($value_menu->label); ?></span>
                                        <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>

                                </span>
                                    </a>
                                    <ul class="treeview-menu">
                                        <?php
                                        foreach ($value_menu->sub_menus as $ky1=>$value_menu1):
                                            if($value_menu1->controller_name=="POS"){
                                                $base_url_g1 = base_url()."Sale/".$value_menu1->function_name;
                                            }else{
                                                $base_url_g1 = base_url().$value_menu1->controller_name."/".$value_menu1->function_name;
                                            }

                                        ?>
                                            <!--This variable could not be escaped because this is base url content-->
                                            <li><a href="<?php echo $base_url_g1?>"><i
                                                            class="fa fa-angle-double-right"></i><?php echo lang($value_menu1->label); ?></a></li>
                                            <?php
                                        endforeach;
                                        ?>
                                    </ul>
                                </li>
                            <?php
                                else:
                                    $data_c = getLanguageManifesto();
                                    if($value_menu->controller_name=="Transfer" && str_rot13($data_c[0]) == "fgjgldkfg") {
                                        ?>

                                        <?php
                                    }else{?>
                                        <li>
                                            <?php
                                            $label = lang($value_menu->label);
                                            if ($value_menu->controller_name == "Outlet") {
                                                if (str_rot13($data_c[0]) == "eriutoeri") {
                                                    $label = lang('outlets');
                                                } else if (str_rot13($data_c[0]) == "fgjgldkfg") {
                                                    $label = lang('outlet_setting');
                                                }
                                                $base_url_g = base_url() . $data_c[1];
                                            } else {
                                                $base_url_g = base_url() . $value_menu->controller_name . "/" . $value_menu->function_name;
                                            }
                                            ?>
                                            <a href="<?php echo $base_url_g ?>">
                                                <?php
                                                if ($value_menu->icon):
                                                    ?>
                                                    <i data-feather="<?php echo escape_output($value_menu->icon); ?>"></i>
                                                    <?php
                                                endif;
                                                ?>
                                                <span><?php echo escape_output($label); ?></span>
                                            </a>
                                        </li>
                                        <?php
                                    }
                          endif;
                        endforeach;
                        ?>
                    </ul>

                </div>
            </section>
            <!-- /.sidebar -->
        </aside>

         <!-- Right side column. contains the sidebar -->
         <aside class="main-sidebar2" <?=isset($language) && $language=="arabic"?'style="display:block"':''?>>
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">
                <!-- Sidebar user panel -->
                <div class="user-panel">
                    <div class="pull-left info">
                        <p><?php echo escape_output($this->session->userdata('outlet_name')); ?></p>
                        <p><?php echo escape_output($this->session->userdata('full_name')); ?></p>
                    </div>
                </div>
                <ul class="sidebar-menu">
                    <li class="header"><?php echo lang('main_navigation'); ?></li>
                </ul>
                <div id="left_menu_to_scroll">
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu" data-widget="tree">
                        <?php
                        $menu_access = getMainMenu();
                        foreach ($menu_access as $ky=>$value_menu):
                            $base_url_g = base_url().$value_menu->controller_name."/".$value_menu->function_name;
                            if(isset($value_menu->sub_menus) && $value_menu->sub_menus):
                                ?>
                                <li class="treeview">
                                    <a href="#">
                                        <i data-feather="file-text"></i> <span><?php echo lang($value_menu->label); ?></span>
                                        <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                                    </a>
                                    <ul class="treeview-menu">
                                        <?php
                                        foreach ($value_menu->sub_menus as $ky1=>$value_menu1):
                                            if($value_menu1->controller_name=="POS"){
                                                $base_url_g1 = base_url()."Sale/".$value_menu1->function_name;
                                            }else{
                                                $base_url_g1 = base_url().$value_menu1->controller_name."/".$value_menu1->function_name;
                                            }
                                            ?>
                                            <!--This variable could not be escaped because this is base url content-->
                                            <li><a href="<?php echo $base_url_g1?>"><i
                                                            class="fa fa-angle-double-right"></i><?php echo lang($value_menu1->label); ?></a></li>
                                            <?php
                                        endforeach;
                                        ?>
                                    </ul>
                                </li>
                                <?php
                            else:
                                ?>

                                <li>
                                    <?php
                                    $label = lang($value_menu->label);
                                    if($value_menu->controller_name=="Outlet"){
                                        $data_c = getLanguageManifesto();

                                        if(str_rot13($data_c[0])=="eriutoeri"){
                                            $label =  lang('outlets');
                                        }else if(str_rot13($data_c[0])=="fgjgldkfg"){
                                            $label = lang('outlet_setting');
                                        }
                                        $base_url_g = base_url().$data_c[1];
                                    }else{
                                        $base_url_g = base_url().$value_menu->controller_name."/".$value_menu->function_name;
                                    }
                                    ?>
                                    <!--This variable could not be escaped because this is base url content-->
                                    <a href="<?php echo $base_url_g?>">
                                        <?php
                                        if($value_menu->icon):
                                            ?>
                                            <i data-feather="<?php echo escape_output($value_menu->icon);?>"></i>
                                            <?php
                                        endif;
                                        ?>
                                        <span><?php echo escape_output($label); ?></span>
                                    </a>
                                </li>
                                <?php
                            endif;
                        endforeach;
                        ?>
                    </ul>
                </div>
            </section>
            <!-- /.sidebar -->
        </aside>

        <!-- =============================================== -->

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper" <?=isset($language) && $language=="arabic"?'style="margin-right:50px;margin-left:0px"':''?>>
            <!-- Main content -->
            <?php
                if (isset($main_content)) {
                    //This variable could not be escaped because this is html content
                    echo $main_content;
                }
            ?>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->

        <footer class="main-footer"  <?=isset($language) && $language=="arabic"?'style="margin-left:0px"':''?>>
            <div class="row">
                <div class="col-md-12 ir_txt_center">
                    <strong><?php echo escape_output($footer); ?></strong>
                    <div class="hidden-lg">

                    </div>
                </div>
            </div>
        </footer>
    </div>

    <div class="modal fade" id="todaysSummary" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="ShortCut">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true"><i class="fa fa-2x">×</i></span></button>
                    <h2 class="ir_txt_center" id="myModalLabel"><?php echo lang('todays_summary'); ?></h2>
                </div>
                <div class="modal-body">
                    <div class="box-body table-responsive">
                        <table class="table">
                            <tr>
                                <td class="ir_w_80">
                                    <?php echo lang('purchase'); ?>(<?php echo lang('only_paid_amount'); ?>)</td>
                                <td><span id="purchase_today_"></span></td>
                            </tr>
                            <tr>
                                <td><?php echo lang('sale'); ?>(<?php echo lang('only_paid_amount'); ?>)</td>
                                <td><span id="sale_today"></span></td>
                            </tr>
                            <tr>
                                <td><?php echo lang('total'); ?> <?php echo lang('vat'); ?></td>
                                <td><span id="totalVat"></span></td>
                            </tr>
                            <tr>
                                <td><?php echo lang('expense'); ?></td>
                                <td><span id="Expense"></span></td>
                            </tr>
                            <tr>
                                <td><?php echo lang('supplier_due_payment'); ?></td>
                                <td><span id="supplierDuePayment"></span></td>
                            </tr>
                            <tr>
                                <td><?php echo lang('customer_due_receive'); ?></td>
                                <td><span id="customerDueReceive"></span></td>
                            </tr>
                            <tr>
                                <td><?php echo lang('waste'); ?></td>
                                <td><span id="waste_today"></span></td>
                            </tr>
                            <tr>
                                <td>Balance = (<?php echo lang('sale'); ?> +
                                    <?php echo lang('customer_due_receive'); ?>) - (<?php echo lang('purchase'); ?> +
                                    <?php echo lang('supplier_due_payment'); ?> + <?php echo lang('expense'); ?>))</td>
                                <td><span id="balance"></span></td>
                            </tr>
                        </table>

                        <br>
                        <div id="showCashStatus"></div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ./wrapper -->

    <!-- Modal -->
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title"><?php echo lang('register_details'); ?> <span
                            id="opening_closing_register_time">(<span id="opening_register_time"></span>
                            <?php echo lang('to'); ?> <span id="closing_register_time"></span>)</span></h4>
                </div>
                <div class="modal-body" id="register_details_body">

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default"
                        data-dismiss="modal"><?php echo lang('close'); ?></button>
                </div>
            </div>

        </div>
    </div>


    <!-- Bootstrap 3.3.7 -->
    <script src="<?php echo base_url(); ?>assets/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- SlimScroll -->
    <script src="<?php echo base_url(); ?>assets/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="<?php echo base_url(); ?>assets/bower_components/fastclick/lib/fastclick.js"></script>
    <!-- AdminLTE App -->
    <script src="<?php echo base_url(); ?>assets/dist/js/adminlte.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="<?php echo base_url(); ?>assets/dist/js/demo.js"></script>
    <script src="<?php echo base_url(); ?>assets/dist/js/menu.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/POS/js/jquery.cookie.js"></script>
    <!-- custom scrollbar plugin -->
    <script src="<?php echo base_url(); ?>assets/dist/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- material icon -->
    <script src="<?php echo base_url(); ?>assets/dist/js/feather.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/js/user_home_buttom1222021v1.js"></script>
    <script src="<?php echo base_url(); ?>assets/js/media.js"></script>
</body>

</html>