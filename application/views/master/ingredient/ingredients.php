<?php
if ($this->session->flashdata('exception')) {

    echo '<section class="content-header"><div class="alert alert-success alert-dismissible"> 
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <p><i class="icon fa fa-check"></i>';
    echo escape_output($this->session->flashdata('exception'));
    echo '</p></div></section>';
}
?>

<section class="content-header">
    <div class="row">
        <div class="col-md-6">
            <h2 class="top-left-header"><?php echo lang('ingredients'); ?> </h2>
            <input type="hidden" class="datatable_name" data-title="<?php echo lang('ingredients'); ?>" data-id_name="datatable">
        </div>
        <div class="col-md-offset-2 col-md-4">
            <ul class="list-inline text-right">
                <li><a href="<?php echo base_url() ?>ingredient/addEditIngredient"><button type="button"
                            class="btn btn-block btn-primary pull-right"><?php echo lang('add_ingredient'); ?></button></a>
                </li>
                <li><a href="<?php echo base_url() ?>ingredient/uploadingredients"><button type="button"
                            class="btn btn-block btn-primary pull-right"><?php echo lang('upload_ingredient'); ?></button></a>
                </li>
            </ul>
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
                                <th class="ir_w_1"> <?php echo lang('sn'); ?></th>
                                <th class="ir_w_6"><?php echo lang('code'); ?></th>
                                <th class="ir_w_22"><?php echo lang('name'); ?></th>
                                <th class="ir_w_16"><?php echo lang('category'); ?></th>
                                <th class="ir_w_12"><?php echo lang('purchase_price'); ?></th>
                                <th class="ir_w_15"><?php echo lang('alert_quantity_amount'); ?></th>
                                <th  class="ir_w_4"><?php echo lang('unit'); ?></th>
                                <th class="ir_w_15"><?php echo lang('added_by'); ?></th>
                                <th  class="ir_w_1 ir_txt_center not-export-col"><?php echo lang('actions'); ?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            if ($ingredients && !empty($ingredients)) {
                                $i = count($ingredients);
                            }
                            foreach ($ingredients as $ingrnts) {
                                ?>
                            <tr>
                                <td class="ir_txt_center"><?php echo escape_output($i--); ?></td>
                                <td><?php echo escape_output($ingrnts->code) ?></td>
                                <td><?php echo escape_output($ingrnts->name) ?></td>
                                <td><?php echo escape_output(categoryName($ingrnts->category_id)); ?></td>
                                <td>
                                    <?php echo escape_output($ingrnts->purchase_price) ?></td>
                                <td><?php echo escape_output($ingrnts->alert_quantity) ?></td>
                                <td><?php echo escape_output(unitName($ingrnts->unit_id)); ?></td>
                                <td><?php echo escape_output(userName($ingrnts->user_id)); ?></td>
                                <td class="ir_txt_center">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-default btn-xs dropdown-toggle"
                                            data-toggle="dropdown" aria-expanded="false">
                                            <i class="fa fa-gear tiny-icon"></i><span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                            <li><a
                                                    href="<?php echo base_url() ?>ingredient/addEditIngredient/<?php echo escape_output($this->custom->encrypt_decrypt($ingrnts->id, 'encrypt')); ?>"><i
                                                        class="fa fa-pencil tiny-icon"></i><?php echo lang('edit'); ?></a></li>
                                            <li><a class="delete"
                                                    href="<?php echo base_url() ?>ingredient/deleteIngredient/<?php echo escape_output($this->custom->encrypt_decrypt($ingrnts->id, 'encrypt')); ?>"><i
                                                        class="fa fa-trash tiny-icon"></i><?php echo lang('delete'); ?></a></li>
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
                                <th><?php echo lang('sn'); ?></th>
                                <th><?php echo lang('code'); ?></th>
                                <th><?php echo lang('name'); ?></th>
                                <th><?php echo lang('category'); ?></th>
                                <th><?php echo lang('purchase_price'); ?></th>
                                <th><?php echo lang('alert_quantity_amount'); ?></th>
                                <th><?php echo lang('unit'); ?></th>
                                <th><?php echo lang('added_by'); ?></th>
                                <th class="ir_txt_center"><?php echo lang('actions'); ?></th>
                            </tr>
                        </tfoot>
                    </table>
                </div>
                <!-- /.box-body -->
            </div>
        </div>
    </div>
</section>
<div class="modal fade" id="uploadingredentsModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><i
                            class="fa fa-2x">×</i></span></button>
                <h4 class="modal-title" id="myModalLabel"><i class="fa fa-plus-square-o ir_color_blue"></i>
                    <?php echo lang('upload_ingredients'); ?></h4>
            </div>
            <div class="modal-body">
                <!-- <form class="form-horizontal" action="<?php echo base_url() ?>Master/ExcelDataAddIngredints" method="post" accept-charset="utf-8"> -->
                <?php echo form_open(base_url() . 'ingredient/ExcelDataAddIngredints', $arrayName = array('id' => 'language', 'class' => 'form-horizontal', 'accept-charset' => 'utf-8')) ?>
                <div class="form-group">
                    <label class="col-sm-4 control-label"><?php echo lang('upload_file'); ?><span class="ir_color_red">
                            *</span></label>
                    <div class="col-sm-7">
                        <input type="file" class="form-control" name="userfile" id="userfile" placeholder="Upload file"
                            value="">
                        <div class="alert alert-error error-msg customer_err_msg_contnr ir_p_5">
                            <p class="customer_err_msg"></p>
                        </div>
                    </div>
                </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="addNewGuest">
                    <i class="fa fa-save"></i> <?php echo lang('upload'); ?> </button>
                <a class="btn btn-primary" href="<?php echo base_url() ?>ingredient/downloadPDF/Ingredient_Upload.xlsx">
                    <i class="fa fa-save"></i> <?php echo lang('download_sample'); ?></a>
            </div>
        </div>
    </div>
</div>
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