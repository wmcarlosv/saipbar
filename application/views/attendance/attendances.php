<?php
if ($value =$this->session->flashdata('exception')) {

    echo '<section class="content-header"><div class="alert alert-success alert-dismissible"> 
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <p><i class="icon fa fa-check"></i>';
    echo escape_output($value);
    echo '</p></div></section>';
}
?>


<section class="content-header">
    <div class="row">
        <div class="col-md-6">
            <h2 class="top-left-header"><?php echo lang('attendances'); ?> </h2>
            <input type="hidden" class="datatable_name" data-title="<?php echo lang('attendances'); ?>" data-id_name="datatable">

        </div>
        <div class="col-md-6">
            <a class="right_btn" href="<?php echo base_url() ?>Attendance/addEditAttendance"><button type="button"
                    class="btn btn-block btn-primary pull-right"><?php echo lang('add_attendance'); ?></button></a>
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
                    <table id="datatable" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th class="ir_w_1"> <?php echo lang('sn'); ?></th>
                                <th class="ir_w_11"><?php echo lang('ref_no'); ?></th>
                                <th class="ir_w_9"><?php echo lang('date'); ?></th>
                                <th class="ir_w_18"><?php echo lang('employee'); ?></th>
                                <th class="ir_w_10"><?php echo lang('in_time'); ?></th>
                                <th class="ir_w_10"><?php echo lang('out_time'); ?></th>
                                <th class="ir_w_15"><?php echo lang('update_time'); ?></th>
                                <th class="ir_w_14"><?php echo lang('time_count'); ?></th>
                                <th class="ir_w_15"><?php echo lang('note'); ?></th>
                                <th class="ir_w_29"><?php echo lang('added_by'); ?></th>
                                <th class="ir_w_6 not-export-col"><?php echo lang('actions'); ?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            if ($attendances && !empty($attendances)) {
                                $i = count($attendances); 
                            foreach ($attendances as $value) {
                                ?>
                            <tr>
                                <td><?php echo escape_output($i--); ?></td>
                                <td><?php echo escape_output($value->reference_no) ?></td>
                                <td><?php echo escape_output(date($this->session->userdata('date_format'), strtotime($value->date))); ?>
                                </td>
                                <td><?php echo escape_output(employeeName($value->employee_id)); ?></td>
                                <td><?php echo escape_output($value->in_time) ?></td>
                                <td>
                                    <?php 
                                        if($value->out_time == '00:00:00'){ 
                                            echo 'N/A<br>';  
                                        }else{ 
                                            echo escape_output($value->out_time);
                                        } 
                                        ?>
                                </td>
                                <td>
                                    <?php 
                                            echo '<a href="'. base_url().'Attendance/addEditAttendance/'. $value->id .'">'.lang('update_time').'</a>';
                                        ?>
                                </td>
                                <td>
                                    <?php  
                                        if($value->out_time == '00:00:00'){ 
                                            echo 'N/A'; 
                                        }else{ 
                                            $to_time = strtotime($value->out_time);
                                            $from_time = strtotime($value->in_time);
                                            $minute = round(abs($to_time - $from_time) / 60,2); 
                                            $hour = round(abs($minute) / 60,2);
                                            echo escape_output($hour)." Hour";
                                        }

                                        ?>
                                </td>
                                <td><?php if ($value->note != NULL) echo escape_output($value->note) ?></td>
                                <td><?php echo userName($value->user_id); ?></td>
                                <td class="ir_txt_center">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-default btn-xs dropdown-toggle"
                                            data-toggle="dropdown" aria-expanded="false">
                                            <i class="fa fa-gear tiny-icon"></i><span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                            <li><a class="delete"
                                                    href="<?php echo base_url() ?>Attendance/deleteAttendance/<?php echo escape_output($this->custom->encrypt_decrypt($value->id, 'encrypt')); ?>"><i
                                                        class="fa fa-trash tiny-icon"></i><?php echo lang('delete'); ?></a>
                                            </li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                            <?php
                            } }
                            ?>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th class="ir_w_1"> <?php echo lang('sn'); ?></th>
                                <th class="ir_w_11"><?php echo lang('ref_no'); ?></th>
                                <th class="ir_w_9"><?php echo lang('date'); ?></th>
                                <th class="ir_w_18"><?php echo lang('employee'); ?></th>
                                <th class="ir_w_10"><?php echo lang('in_time'); ?></th>
                                <th class="ir_w_10"><?php echo lang('out_time'); ?></th>
                                <th class="ir_w_15"><?php echo lang('update_time'); ?></th>
                                <th class="ir_w_14"><?php echo lang('time_count'); ?></th>
                                <th class="ir_w_15"><?php echo lang('note'); ?></th>
                                <th class="ir_w_29"><?php echo lang('added_by'); ?></th>
                                <th class="ir_w_6 not-export-col"><?php echo lang('actions'); ?></th>
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