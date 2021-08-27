<?php
if ($this->session->flashdata('exception')) {

    echo '<section class="content-header"><div class="alert alert-success alert-dismissible"> 
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <p><i class="icon fa fa-check"></i>';
    echo $this->session->flashdata('exception');
    echo '</p></div></section>';
}
?>

<?php
if ($this->session->flashdata('exception_1')) {

    echo '<section class="content-header"><div class="alert alert-danger alert-dismissible"> 
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <p><i class="icon fa fa-check"></i>';
    echo $this->session->flashdata('exception_1');
    echo '</p></div></section>';
}
?>

<?php
if ($this->session->flashdata('exception_2')) {

    echo '<section class="content-header"><div class="alert alert-danger alert-dismissible"> 
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <p><i class="icon fa fa-check"></i>';
    echo $this->session->flashdata('exception_2');
    echo '</p></div></section>';
}
?>
<section class="content-header">
    <div class="row">
        <div class="col-md-6">
            <h2 class="top-left-header">
                <?php
                $data_c = getLanguageManifesto();
                if(str_rot13($data_c[0])=="eriutoeri"){
                    echo lang('outlets');
                }else if(str_rot13($data_c[0])=="fgjgldkfg"){
                    echo lang('outlet_setting');
                }

                ?></h2>
        </div>
        <div class="col-md-offset-4 col-md-2">
            <?php
            $data = getTotalLanuageManifesto();
            if(str_rot13($data[0])=="eriutoeri"):
                if (file_exists(APPPATH.'controllers/Saas.php') && $data[3]>$data[1]):
                    ?>
                    <a href="<?php echo base_url() ?>Outlet/addEditOutlet"><button type="button" class="btn btn-block btn-primary pull-right"><?php echo lang('add_outlet'); ?></button></a>
                    <?php
                endif;
            endif;
            if(str_rot13($data[0])=="eriutoeri"):
                if (!file_exists(APPPATH.'controllers/Saas.php')):
                    ?>
                    <a href="<?php echo base_url() ?>Outlet/addEditOutlet"><button type="button" class="btn btn-block btn-primary pull-right"><?php echo lang('add_outlet'); ?></button></a>
                    <?php
                endif;
            endif;
            ?>
        </div>
    </div>
</section>

<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <!-- /.col -->
                <?php
                //icon color code array
                $arr_color = array("green","blue","red","#c151fb","#5195fb","#8be43a","#00c0ef","#0044cc","#f39c12","#333","#8a6d1c");
                foreach ($outlets as $value) {
                    ?>
                    <div class="col-md-3 <?php echo isset($value->active_status) && $value->active_status=="inactive"?'txt_inactive':''?>">
                        <div class="outlet-box text-center">
                            <i class="fa fa-building fa-3x" style="color:<?=escape_output($arr_color[array_rand($arr_color, 1)])?>"></i>
                            <h3 class="title"><?php echo escape_output($value->outlet_name); ?></h3>
                            <?php
                            if(str_rot13($data_c[0])=="eriutoeri") {
                                ?>
                                <p class="outlet_code"><?php echo lang('outlet_code'); ?>
                                    : <?php echo escape_output($value->outlet_code); ?></p>
                                <?php
                            }
                            ?>
                            <h4 class="outlet_address"><?php echo lang('address'); ?>: <?php echo escape_output($value->address); ?> </h4>
                            <h4 class="outlet_phone"><?php echo lang('phone'); ?>: <?php echo escape_output($value->phone); ?> </h4>
                            <h4 class="outlet_phone"><?php echo lang('email'); ?>: <?php echo escape_output($value->email); ?> </h4>
                            <table class="tb_outlet_100">
                                <tr>
                                    <td class="tb_outlet">
                                        <a class="txt_44 btn btn-primary btn-xs btn btn-block <?php echo isset($value->active_status) && $value->active_status=="inactive"?'txt_inactive_btn':''?>" href="<?php echo base_url(); ?>Outlet/setOutletSession/<?php echo escape_output($this->custom->encrypt_decrypt($value->id, 'encrypt')); ?>"> <strong><?php echo lang('enter'); ?></strong></a>
                                    </td>
                                    <td class="tb_outlet">
                                        <a class="txt_45 btn btn-primary btn-xs btn btn-block <?php echo isset($value->active_status) && $value->active_status=="inactive"?'visible_txt':''?>" href="<?php echo base_url() ?>Outlet/addEditOutlet/<?php echo escape_output($this->custom->encrypt_decrypt($value->id, 'encrypt')); ?>">  <strong><?php echo lang('edit'); ?></strong></a>
                                    </td>
                                    <td class="tb_outlet">
                                        <a class="txt_44 btn btn-primary btn-xs btn btn-block delete" href="<?php echo base_url() ?>Outlet/deleteOutlet/<?php echo escape_output($this->custom->encrypt_decrypt($value->id, 'encrypt')); ?>">  <strong><?php echo lang('delete'); ?></strong></a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <?php
                }
                ?>
            </div>
        </div>
    </div>
</section>