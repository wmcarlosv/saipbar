<link rel="stylesheet" href="<?php echo base_url(); ?>assets/dist/css/custom/report.css">
<section class="content-header">
    <h3 class="ir_txtCenter_mt0"><?php echo lang('kitchen_performance_report'); ?></h3>
    <input type="hidden" class="datatable_name" data-title="<?php echo lang('kitchen_performance_report'); ?>" data-id_name="datatable">
    <hr class="ir_border1">
    <div class="row">
        <div class="col-md-2">
            <?php echo form_open(base_url() . 'Report/kitchenPerformanceReport') ?>
            <div class="form-group">
                <input tabindex="1" type="text" id="" name="startDate" readonly class="form-control customDatepicker"
                    placeholder="<?php echo lang('start_date'); ?>" value="<?php echo set_value('startDate'); ?>">
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group">
                <input tabindex="2" type="text" id="endMonth" name="endDate" readonly
                    class="form-control customDatepicker" placeholder="<?php echo lang('end_date'); ?>"
                    value="<?php echo set_value('endDate'); ?>">
            </div>
        </div>
        <?php
        if(isLMni()):
            ?>
            <div class="col-md-2">
                <div class="form-group">
                    <select tabindex="2" class="form-control select2 ir_w_100" id="outlet_id" name="outlet_id">
                        <?php
                        $outlets = getAllOutlestByAssign();
                        foreach ($outlets as $value):
                            ?>
                            <option <?= set_select('outlet_id',$value->id)?>  value="<?php echo escape_output($value->id) ?>"><?php echo escape_output($value->outlet_name) ?></option>
                            <?php
                        endforeach;
                        ?>
                    </select>
                </div>
            </div>
            <?php
        endif;
        ?>
        <div class="col-md-1">
            <div class="form-group">
                <button type="submit" name="submit" value="submit"
                    class="btn btn-block btn-primary pull-left"><?php echo lang('submit'); ?></button>
            </div>
        </div>
        <div class="hidden-lg">
            <div class="clearfix"></div>
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
                    <h3><?php echo lang('kitchen_performance_report'); ?></h3>
                    <?php
                    if(isLMni() && isset($outlet_id)):
                        ?>
                        <h4> <?php echo lang('outlet'); ?>: <?php echo escape_output(getOutletNameById($outlet_id))?></h4>
                        <?php
                    endif;
                    ?>
                    <h4><?= isset($start_date) && $start_date && isset($end_date) && $end_date ? lang('report_date') . date($this->session->userdata('date_format'), strtotime($start_date)) . " - " . date($this->session->userdata('date_format'), strtotime($end_date)) : '' ?><?= isset($start_date) && $start_date && !$end_date ? lang('report_date') . date($this->session->userdata('date_format'), strtotime($start_date)) : '' ?><?= isset($end_date) && $end_date && !$start_date ? lang('report_date') . date($this->session->userdata('date_format'), strtotime($end_date)) : '' ?>
                    </h4>
                    <br>
                    <table id="datatable" class="table table-striped">
                        <thead>
                            <tr>
                                <th class="ir_w_1"> <?php echo lang('sn'); ?></th>
                                <th><?php echo lang('date'); ?></th>
                                <th><?php echo lang('order_number'); ?></th>
                                <th><?php echo lang('type'); ?></th>
                                <th><?php echo lang('order_time'); ?></th>
                                <th><?php echo lang('cooking_start_time'); ?></th>
                                <th><?php echo lang('cooking_end_time'); ?></th>
                                <th><?php echo lang('time_taken'); ?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php 
                            if (isset($kitchenPerformanceReport)):
                                foreach ($kitchenPerformanceReport as $key => $value) { 
                                    $key++;
                                    ?>
                            <tr>
                                <td class="ir_txt_center"><?php echo escape_output($key); ?></td>
                                <td><?= escape_output(date($this->session->userdata('date_format'), strtotime($value->sale_date))) ?>
                                </td>
                                <td><?php echo escape_output($value->sale_no) ?></td>
                                <td><?php echo escape_output(getOrderType($value->order_type)) ?></td>
                                <td><?php echo escape_output($value->order_time) ?></td>
                                <td><?php echo escape_output($value->cooking_start_time) ?></td>
                                <td><?php echo escape_output($value->cooking_done_time) ?></td>
                                <td>
                                    <?php 
                                                if($value->cooking_done_time == '0000-00-00 00:00:00'){ 
                                                    echo 'N/A'; 
                                                }else{   
                                                    $cooking_done_time = strtotime($value->cooking_done_time);
                                                    $order_time = strtotime($value->order_time);
                                                    $minute = round(abs($cooking_done_time - $order_time) / 60,2); 
                                                    $hour = round(abs($minute) / 60,2);
                                                    echo escape_output($hour)." ".lang('hour');
                                                }
                                            ?>
                                </td>
                            </tr>
                            <?php
                                }
                            endif;
                            ?>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th class="ir_w_1"> <?php echo lang('sn'); ?></th>
                                <th><?php echo lang('date'); ?></th>
                                <th><?php echo lang('order_number'); ?></th>
                                <th><?php echo lang('type'); ?></th>
                                <th><?php echo lang('order_time'); ?></th>
                                <th><?php echo lang('cooking_start_time'); ?></th>
                                <th><?php echo lang('cooking_end_time'); ?></th>
                                <th><?php echo lang('time_taken'); ?></th>
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