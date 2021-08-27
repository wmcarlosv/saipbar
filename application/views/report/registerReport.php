<link rel="stylesheet" href="<?php echo base_url(); ?>assets/dist/css/custom/report.css">
<?php
    
    $show_register_report = "";
    if(isset($register_info) && count($register_info)>0){
        
        $i = 1;
        foreach($register_info as $single_register_info){
            $payment_methods_sale = json_decode($single_register_info->payment_methods_sale);
            $cash = is_null($payment_methods_sale)?lang('register_cash').' 0.00':lang('register_cash').$payment_methods_sale->Cash;
            $paypal = is_null($payment_methods_sale)?lang('register_paypal').'0.00':lang('register_paypal').$payment_methods_sale->Paypal;
            $card = is_null($payment_methods_sale)?lang('register_card').'0.00':lang('register_card').$payment_methods_sale->Card;
            $show_register_report .= "<tr>";
            $show_register_report .= '<td>'.$i.'</td>';
            $show_register_report .= '<td>'.$single_register_info->opening_balance_date_time.'</td>';
            $show_register_report .= '<td>'.$single_register_info->opening_balance.'</td>';
            $show_register_report .= '<td>'.$single_register_info->sale_paid_amount.'</td>';
            $show_register_report .= '<td>'.$single_register_info->customer_due_receive.'</td>';
            $show_register_report .= '<td>'.$single_register_info->closing_balance_date_time.'</td>';
            $show_register_report .= '<td>'.$single_register_info->closing_balance.'</td>';
            $show_register_report .= '<td>'.$cash.', '.$paypal.', '.$card.'</td>';
            $show_register_report .= "</tr>";        
            $i++;
        }
    }
    $user_option = '';
    foreach($users as $single_user){
        $user_option .= '<option value="'.$single_user->id.'">'.$single_user->full_name.'</option>';
    }
    
?>

<section class="content-header">
    <h3><?php echo lang('register_report'); ?></h3>
    <hr class="ir_border1">
    <div class="row">
        <div class="col-md-2">
            <?php echo form_open(base_url() . 'Report/registerReport') ?>
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
        <div class="col-md-2">

            <div class="form-group">
                <select tabindex="2" class="form-control select2 ir_w_100" id="user_id" name="user_id">
                    <option value=""><?php echo lang('user'); ?></option>
                    <option value="<?= escape_output($this->session->userdata['user_id']); ?>">
                        <?= escape_output($this->session->userdata['full_name']); ?></option>
                    <?php
                    foreach ($users as $value) {
                        ?>
                    <option value="<?php echo escape_output($value->id) ?>"><?php echo escape_output($value->full_name) ?></option>
                    <?php } ?>
                </select>
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
                    <h3><?php echo lang('register_report'); ?></h3>
                    <?php
                    if(isLMni() && isset($outlet_id)):
                        ?>
                        <h4> <?php echo lang('outlet'); ?>: <?php echo escape_output(getOutletNameById($outlet_id))?></h4>
                        <?php
                    endif;
                    ?>
                    <h4 class="ir_txtCenter_mt0"><?php
                    if (isset($user_id) && $user_id):
                        echo "User: " . userName($user_id) . "</span>";
                    endif;
                    ?></h4>
                    <h4><?= isset($start_date) && $start_date && isset($end_date) && $end_date ? lang('date').": " . date($this->session->userdata('date_format'), strtotime($start_date)) . " - " . date($this->session->userdata('date_format'), strtotime($end_date)) : '' ?><?= isset($start_date) && $start_date && !$end_date ? lang('date').": " . date($this->session->userdata('date_format'), strtotime($start_date)) : '' ?><?= isset($end_date) && $end_date && !$start_date ? lang('date').": " . date($this->session->userdata('date_format'), strtotime($end_date)) : '' ?>
                    </h4>
                    <br>
                    <table id="datatable" class="table table-striped">
                        <thead>
                            <tr>
                                <th class="title" class="ir_w_5"><?php echo lang('sn'); ?></th>
                                <th class="title" class="ir_w_10"><?php echo lang('opening_date_time'); ?></th>
                                <th class="title" class="ir_w_15"><?php echo lang('opening_balance'); ?></th>
                                <th class="title" class="ir_w_15"><?php echo lang('sale'); ?>
                                    (<?php echo lang('paid_amount'); ?>)</th>
                                <th class="title" class="ir_w_15"><?php echo lang('customer_due_receive'); ?></th>
                                <th class="title" class="ir_w_10"><?php echo lang('closing_date_time'); ?></th>
                                <th class="title" class="ir_w_15"><?php echo lang('closing_balance'); ?></th>
                                <th class="title" class="ir_w_15"><?php echo lang('sale_in_payment_method'); ?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            echo $show_register_report;
                            ?>
                        </tbody>
                        <!-- <tfoot>
                            <tr>
                                <th class="ir_w2_txt_center"></th>
                                <th class="ir_txt_right">Total </th>
                                <th><?php echo escape_output($grandTotal); ?></th>
                            </tr>
                        </tfoot> -->
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