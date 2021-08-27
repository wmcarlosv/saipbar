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
             <h2 class="top-left-header"><?php echo lang('inventory_Adjustments'); ?></h2>
             <input type="hidden" class="datatable_name" data-title="<?php echo lang('inventory_Adjustments'); ?>" data-id_name="datatable">
         </div>
         <div class="col-md-6">
             <a class="right_btn" href="<?php echo base_url() ?>Inventory_adjustment/addEditInventoryAdjustment"><button type="button"
                     class="btn btn-block btn-primary pull-right"><?php echo lang('add_inventory_Adjustment'); ?></button></a>
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
                                 <th class="ir_w_11"><?php echo lang('ref_no'); ?></th>
                                 <th class="ir_w_8"><?php echo lang('date'); ?></th>
                                 <th class="ir_w_13"><?php echo lang('ingredient_count'); ?></th>
                                 <th class="ir_w_15"><?php echo lang('responsible_person'); ?></th>
                                 <th class="ir_w_21"><?php echo lang('note'); ?></th>
                                 <th class="ir_w_12"><?php echo lang('added_by'); ?></th>
                                 <th class="ir_w_6 not-export-col"><?php echo lang('actions'); ?></th>
                             </tr>
                         </thead>
                         <tbody>
                             <?php
                            if ($inventory_adjustments && !empty($inventory_adjustments)) {
                                $i = count($inventory_adjustments);
                            }
                            foreach ($inventory_adjustments as $value) {
                                ?>
                             <tr>
                                 <td class="ir_txt_center"><?php echo escape_output($i--); ?></td>
                                 <td><?php echo escape_output($value->reference_no) ?></td>
                                 <td><?php echo escape_output(date($this->session->userdata('date_format'), strtotime($value->date))); ?>
                                 </td>
                                 <td class="ir_txt_center"><?php echo ingredientCountConsumption($value->id); ?></td>
                                 <td><?php echo escape_output(employeeName($value->employee_id)); ?></td>
                                 <td><?php echo escape_output($value->note) ?></td>
                                 <td><?php echo escape_output(userName($value->user_id)); ?></td>
                                 <td class="ir_txt_center">
                                     <div class="btn-group">
                                         <button type="button" class="btn btn-default btn-xs dropdown-toggle"
                                             data-toggle="dropdown" aria-expanded="false">
                                             <i class="fa fa-gear tiny-icon"></i><span class="caret"></span>
                                         </button>
                                         <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                             <li><a
                                                     href="<?php echo base_url() ?>Inventory_adjustment/inventoryAdjustmentDetails/<?php echo escape_output($this->custom->encrypt_decrypt($value->id, 'encrypt')); ?>"><i
                                                         class="fa fa-eye tiny-icon"></i><?php echo lang('view_details'); ?></a>
                                             </li>
                                             <li><a
                                                     href="<?php echo base_url() ?>Inventory_adjustment/addEditInventoryAdjustment/<?php echo escape_output($this->custom->encrypt_decrypt($value->id, 'encrypt')); ?>"><i
                                                         class="fa fa-pencil tiny-icon"></i><?php echo lang('edit'); ?></a>
                                             </li>
                                             <li><a class="delete"
                                                     href="<?php echo base_url() ?>Inventory_adjustment/deleteInventoryAdjustment/<?php echo escape_output($this->custom->encrypt_decrypt($value->id, 'encrypt')); ?>"><i
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
                                 <th><?php echo lang('ingredient_count'); ?></th>
                                 <th><?php echo lang('responsible_person'); ?></th>
                                 <th><?php echo lang('note'); ?></th>
                                 <th><?php echo lang('added_by'); ?></th>
                                 <th><?php echo lang('actions'); ?></th>
                             </tr>
                         </tfoot>
                     </table>
                 </div>
                 <!-- /.box-body -->
             </div>
         </div>
     </div>
 </section>
 <!-- DataTables -->
 <script src="<?php echo base_url(); ?>assets/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
 <script src="<?php echo base_url(); ?>assets/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js">
 </script>
 <link rel="stylesheet"
     href="<?php echo base_url(); ?>assets/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
 <script src="<?= base_url()?>assets/dist/js/custom/common.js"></script>