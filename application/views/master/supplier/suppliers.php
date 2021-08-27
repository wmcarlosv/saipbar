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
            <h2 class="top-left-header"><?php echo lang('suppliers'); ?> </h2>
            <input type="hidden" class="datatable_name" data-title="<?php echo lang('suppliers'); ?>" data-id_name="datatable">
        </div>
        <div class="col-md-offset-4 col-md-2">
            <a href="<?php echo base_url() ?>supplier/addEditSupplier"><button type="button"
                    class="btn btn-block btn-primary pull-right"><?php echo lang('add_supplier'); ?></button></a>
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
                                <th class="ir_w_14"><?php echo lang('name'); ?></th>
                                <th class="ir_w_14"><?php echo lang('contact_person'); ?></th>
                                <th class="ir_w_9"><?php echo lang('phone'); ?></th>
                                <th class="ir_w_10"><?php echo lang('email'); ?></th>
                                <th class="ir_w_20"><?php echo lang('address'); ?></th>
                                <th class="ir_w_17"><?php echo lang('description'); ?></th>
                                <th class="ir_w_16"><?php echo lang('added_by'); ?></th>
                                <th  class="ir_w_1 ir_txt_center not-export-col"><?php echo lang('actions'); ?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            if ($suppliers && !empty($suppliers)) {
                                $i = count($suppliers);
                            }
                            foreach ($suppliers as $si) {
                                ?>
                            <tr>
                                <td class="ir_txt_center"><?php echo escape_output($i--); ?></td>
                                <td><?php echo escape_output($si->name) ?></td>
                                <td><?php echo escape_output($si->contact_person) ?></td>
                                <td><?php echo escape_output($si->phone) ?></td>
                                <td><?php echo escape_output($si->email) ?></td>
                                <td><?php echo escape_output($si->address) ?></td>
                                <td><?php if ($si->description != NULL) echo escape_output($si->description) ?></td>
                                <td><?php echo escape_output(userName($si->user_id)); ?></td>
                                <td class="ir_txt_center">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-default btn-xs dropdown-toggle"
                                            data-toggle="dropdown" aria-expanded="false">
                                            <i class="fa fa-gear tiny-icon"></i><span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                            <li><a
                                                    href="<?php echo base_url() ?>supplier/addEditSupplier/<?php echo escape_output($this->custom->encrypt_decrypt($si->id, 'encrypt')); ?>"><i
                                                        class="fa fa-pencil tiny-icon"></i><?php echo lang('edit'); ?></a>
                                            </li>
                                            <li><a class="delete"
                                                    href="<?php echo base_url() ?>supplier/deleteSupplier/<?php echo escape_output($this->custom->encrypt_decrypt($si->id, 'encrypt')); ?>"><i
                                                        class="fa fa-trash tiny-icon"></i><?php echo lang('delete'); ?></a>
                                            </li>
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
                                <th class="ir_w_1"> <?php echo lang('sn'); ?></th>
                                <th><?php echo lang('name'); ?></th>
                                <th><?php echo lang('contact_person'); ?></th>
                                <th><?php echo lang('phone'); ?></th>
                                <th><?php echo lang('email'); ?></th>
                                <th><?php echo lang('address'); ?></th>
                                <th><?php echo lang('description'); ?></th>
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