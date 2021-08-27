<?php
if ($this->session->flashdata('exception')) {

    echo '<section class="content-header"><div class="alert alert-success alert-dismissible"> 
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <p><i class="icon fa fa-check"></i>';
    echo escape_output($this->session->flashdata('exception'));
    echo '</p></div></section>';
}
?>


<?php
if ($this->session->flashdata('exception_err')) {

    echo '<section class="content-header"><div class="alert alert-danger alert-dismissible"> 
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <p><i class="icon fa fa-times"></i>';
    echo escape_output($this->session->flashdata('exception_err'));
    echo '</p></div></section>';
}
?>

<section class="content-header">
    <div class="row">
        <div class="col-md-2">
            <h2 class="top-left-header"><?php echo lang('modifiers'); ?> </h2>
            <input type="hidden" class="datatable_name" data-title="<?php echo lang('modifiers'); ?>" data-id_name="datatable">
        </div> 
        <div class="col-md-offset-8 col-md-2">
            <a href="<?php echo base_url() ?>modifier/addEditModifier"><button type="button" class="btn btn-block btn-primary pull-right"><?php echo lang('add'); ?> <?php echo lang('modifier'); ?></button></a>
        </div> 
    </div> 
</section> 

<section class="content">
    <div class="row">
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary"> 
                <!-- /.box-header -->
                <div class="box-body table-responsive"> 
                    <table id="datatable" class="table table-striped">
                        <thead>
                            <tr>
                                <th class="ir_w_1"><?php echo lang('sn'); ?></th>
                                <th class="ir_w_25"><?php echo lang('name'); ?></th>
                                <th class="ir_w_13"><?php echo lang('price'); ?></th>
                                <th class="ir_w_13"><?php echo lang('description'); ?></th>
                                <th class="ir_w_13"><?php echo lang('total'); ?> <?php echo lang('ingredients'); ?></th>
                                <th class="ir_w_18"><?php echo lang('added_by'); ?></th>
                                <th  class="ir_w_1 ir_txt_center not-export-col"><?php echo lang('actions'); ?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            if ($modifiers && !empty($modifiers)) {
                                $i = count($modifiers);
                            }
                            foreach ($modifiers as $fdmns) {
                                ?>                       
                                <tr> 
                                    <td class="ir_txt_center"><?php echo escape_output($i--); ?></td>
                                    <td><?php echo escape_output($fdmns->name) ?></td>
                                    <td><?php echo escape_output($fdmns->price) ?></td>
                                    <td><?php echo escape_output($fdmns->description) ?></td>
                                    <td class="ir_txt_center"><?php echo count(modifierIngredients($fdmns->id)); ?></td>
                                    <td><?php echo escape_output(userName($fdmns->user_id)); ?></td>
                                    <td class="ir_txt_center">
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                <i class="fa fa-gear tiny-icon"></i><span class="caret"></span>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-right" role="menu"> 
                                                <li><a href="<?php echo base_url() ?>modifier/modifierDetails/<?php echo escape_output($this->custom->encrypt_decrypt($fdmns->id, 'encrypt')); ?>" ><i class="fa fa-eye tiny-icon"></i><?php echo lang('view_details'); ?></a></li>
                                                <li><a href="<?php echo base_url() ?>modifier/addEditModifier/<?php echo escape_output($this->custom->encrypt_decrypt($fdmns->id, 'encrypt')); ?>" ><i class="fa fa-pencil tiny-icon"></i><?php echo lang('edit'); ?></a></li>
                                                <li><a class="delete" href="<?php echo base_url() ?>modifier/deleteModifier/<?php echo escape_output($this->custom->encrypt_decrypt($fdmns->id, 'encrypt')); ?>" ><i class="fa fa-trash tiny-icon"></i><?php echo lang('delete'); ?></a></li>
                                            </ul> 
                                        </div>
                                    </td>
                                </tr>
                                <?php
                            }
                            ?> 
                        </tbody>
                        <tfoot>
                            <tr>
                                <th class="ir_w_1"><?php echo lang('sn'); ?></th>
                                <th class="ir_w_25"><?php echo lang('name'); ?></th>
                                <th class="ir_w_13"><?php echo lang('price'); ?></th>
                                <th class="ir_w_13"><?php echo lang('description'); ?></th>
                                <th class="ir_w_13"><?php echo lang('total'); ?> <?php echo lang('ingredients'); ?></th>
                                <th class="ir_w_18"><?php echo lang('added_by'); ?></th>
                                <th  class="ir_w_1 ir_txt_center not-export-col"><?php echo lang('actions'); ?></th>
                            </tr>
                        </tfoot>
                    </table>
                </div>
                <!-- /.box-body -->
            </div> 
        </div> 
    </div> 
</section>
<script src="<?php echo base_url(); ?>assets/js/inventory.js"></script>
<!-- DataTables -->
<script src="<?php echo base_url(); ?>assets/datatable_custom/jquery-3.3.1.js"></script>
<script src="<?php echo base_url(); ?>assets/datatable_custom/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url(); ?>assets/datatable_custom/dataTables.buttons.min.js"></script>
<script src="<?php echo base_url(); ?>assets/datatable_custom/buttons.flash.min.js"></script>
<script src="<?php echo base_url(); ?>assets/datatable_custom/jszip.min.js"></script>
<script src="<?php echo base_url(); ?>assets/datatable_custom/pdfmake.min.js"></script>
<script src="<?php echo base_url(); ?>assets/datatable_custom/vfs_fonts.js"></script>
<script src="<?php echo base_url(); ?>assets/datatable_custom/buttons.html5.min.js"></script>
<script src="<?php echo base_url(); ?>assets/datatable_custom/buttons.print.min.js"></script>

<link rel="stylesheet" href="<?php echo base_url(); ?>assets/datatable_custom/jquery.dataTables.min.css">
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/datatable_custom/buttons.dataTables.min.css">
<script src="<?php echo base_url(); ?>assets/js/custom_report.js"></script>
