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
             <h2 class="top-left-header"><?php echo lang('purchases'); ?> </h2>
             <input type="hidden" class="datatable_name" data-title="<?php echo lang('purchases'); ?>" data-id_name="datatable">
         </div>
         <div class="col-md-offset-4 col-md-2">
             <a href="<?php echo base_url() ?>Purchase/addEditPurchase"><button type="button"
                     class="btn btn-block btn-primary pull-right"><?php echo lang('add_purchase'); ?></button></a>
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
                     <table id="datatable" class="table table-responsive">
                         <thead>
                             <tr>
                                 <th class="ir_w_1"><?php echo lang('sn'); ?></th>
                                 <th class="ir_w_11"><?php echo lang('ref_no'); ?></th>
                                 <th class="ir_w_8"><?php echo lang('date'); ?></th>
                                 <th class="ir_w_18"><?php echo lang('supplier'); ?></th>
                                 <th class="ir_w_9"><?php echo lang('g_total'); ?></th>
                                 <th class="ir_w_9"><?php echo lang('due'); ?></th>
                                 <th class="ir_w_12"><?php echo lang('added_by'); ?></th>
                                 <th class="ir_w5_txt_center not-export-col"><?php echo lang('actions'); ?></th>
                             </tr>
                         </thead>
                         <tbody>
                             <?php
                            if ($purchases && !empty($purchases)) {
                                $i = count($purchases);
                            }
                            foreach ($purchases as $prchs) {
                                ?>
                             <tr>
                                 <td><?php echo escape_output($i--); ?></td>
                                 <td><?php echo escape_output($prchs->reference_no) ?></td>
                                 <td><?php echo escape_output(date($this->session->userdata('date_format'), strtotime($prchs->date))); ?>
                                 </td>
                                 <td><?php echo getSupplierNameById($prchs->supplier_id); ?></td>
                                 <td><?php echo escape_output($prchs->grand_total) ?></td>
                                 <td><?php echo escape_output($prchs->due) ?></td>
                                 <td><?php echo escape_output(userName($prchs->user_id)); ?></td>
                                 <td class="ir_txt_center">
                                     <div class="btn-group">
                                         <button type="button" class="btn btn-default btn-xs dropdown-toggle"
                                             data-toggle="dropdown" aria-expanded="false">
                                             <i class="fa fa-gear tiny-icon"></i><span class="caret"></span>
                                         </button>
                                         <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                             <li><a
                                                     href="<?php echo base_url() ?>Purchase/purchaseDetails/<?php echo escape_output($this->custom->encrypt_decrypt($prchs->id, 'encrypt')); ?>"><i
                                                         class="fa fa-eye tiny-icon"></i><?php echo lang('view_details'); ?></a>
                                             </li>
                                             <li><a
                                                     href="<?php echo base_url() ?>Purchase/addEditPurchase/<?php echo escape_output($this->custom->encrypt_decrypt($prchs->id, 'encrypt')); ?>"><i
                                                         class="fa fa-pencil tiny-icon"></i><?php echo lang('edit'); ?></a>
                                             </li>
                                             <li><a class="delete"
                                                     href="<?php echo base_url() ?>Purchase/deletePurchase/<?php echo escape_output($this->custom->encrypt_decrypt($prchs->id, 'encrypt')); ?>"><i
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
                                 <th><?php echo lang('sn'); ?></th>
                                 <th><?php echo lang('ref_no'); ?></th>
                                 <th><?php echo lang('date'); ?></th>
                                 <th><?php echo lang('supplier'); ?></th>
                                 <th><?php echo lang('g_total'); ?></th>
                                 <th><?php echo lang('due'); ?></th>
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