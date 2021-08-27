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
if ($this->session->flashdata('exception_error')) {

    echo '<section class="content-header"><div class="alert alert-danger alert-dismissible"> 
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <p><i class="icon fa fa-times"></i>';
    echo escape_output($this->session->flashdata('exception_error'));
    echo '</p></div></section>';
}
?>


 <section class="content-header">
     <div class="row">
         <div class="col-md-6">
             <h2 class="top-left-header"><?php echo lang('transfers'); ?> </h2>
             <input type="hidden" class="datatable_name" data-title="<?php echo lang('transfers'); ?>" data-id_name="datatable">
         </div>
         <div class="col-md-offset-4 col-md-2">
             <a href="<?php echo base_url() ?>Transfer/addEditTransfer"><button type="button"
                     class="btn btn-block btn-primary pull-right"><?php echo lang('add_transfer'); ?></button></a>
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
                                 <th class="ir_w_8"><?php echo lang('to_outlet'); ?></th>
                                 <th class="ir_w_12"><?php echo lang('status'); ?></th>
                                 <th class="ir_w_8"><?php echo lang('received_date'); ?></th>
                                 <th class="ir_w_12"><?php echo lang('added_by'); ?></th>
                                 <th class="ir_w5_txt_center not-export-col"><?php echo lang('actions'); ?></th>
                             </tr>
                         </thead>
                         <tbody>
                             <?php
                            if ($transfers && !empty($transfers)) {
                                $i = count($transfers);
                            }
                             $outlet_id = $this->session->userdata('outlet_id');
                            foreach ($transfers as $prchs) {
                                $new_file = '';
                                ?>
                             <tr>
                                 <td><?php echo escape_output($i--); ?>
                                     <?php
                                     if($prchs->status==3 && $outlet_id!=$prchs->from_outlet_id): ?>
                                         <img src="<?=base_url()?>assets/new-transfer.gif">
                                         <?php
                                     endif;
                                     ?>
                                 </td>
                                 <td><?php echo escape_output($prchs->reference_no) ?></td>
                                 <td><?php echo escape_output(date($this->session->userdata('date_format'), strtotime($prchs->date))); ?>
                                 </td>
                                 <td><?php echo escape_output(getOutletNameById($prchs->to_outlet_id)); ?></td>
                                 <td><?php
                                        if($prchs->status==1){
                                            echo escape_output("Received");
                                        }elseif($prchs->status==2){
                                            echo escape_output("Draft");
                                        }elseif($prchs->status==3){
                                            echo escape_output("Sent");
                                        }
                                     ?></td>
                                 <td><?php echo isset($prchs->received_date)?escape_output(date($this->session->userdata('date_format'), strtotime($prchs->received_date))):''; ?>
                                 <td><?php echo escape_output(userName($prchs->user_id)); ?></td>

                                 <td class="ir_txt_center">
                                     <div class="btn-group">
                                         <button type="button" class="btn btn-default btn-xs dropdown-toggle"
                                             data-toggle="dropdown" aria-expanded="false">
                                             <i class="fa fa-gear tiny-icon"></i><span class="caret"></span>
                                         </button>
                                         <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                             <li><a
                                                     href="<?php echo base_url() ?>Transfer/transferDetails/<?php echo escape_output($this->custom->encrypt_decrypt($prchs->id, 'encrypt')); ?>"><i
                                                         class="fa fa-eye tiny-icon"></i><?php echo lang('view_details'); ?></a>
                                             </li>
                                             <?php
                                                if($prchs->status!=1):
                                             ?>
                                             <li><a
                                                     href="<?php echo base_url() ?>Transfer/addEditTransfer/<?php echo escape_output($this->custom->encrypt_decrypt($prchs->id, 'encrypt')); ?>"><i
                                                         class="fa fa-pencil tiny-icon"></i><?php echo lang('edit'); ?></a>
                                             </li>
                                                    <?php
                                                    endif;
                                                    ?>
                                             <li><a class="delete"
                                                     href="<?php echo base_url() ?>Transfer/deleteTransfer/<?php echo escape_output($this->custom->encrypt_decrypt($prchs->id, 'encrypt')); ?>"><i
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
                                 <th><?php echo lang('to_outlet'); ?></th>
                                 <th><?php echo lang('status'); ?></th>
                                 <th><?php echo lang('received_date'); ?></th>
                                 <th><?php echo lang('added_by'); ?></th>
                                 <th class="ir_w5_txt_center not-export-col"><?php echo lang('actions'); ?></th>
                             </
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