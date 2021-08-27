<link rel="stylesheet" href="<?php echo base_url(); ?>assets/dist/css/custom/report.css">
<section class="content-header">
    <h3 class="ir_txt_center"><?php echo lang('profit_loss_report'); ?></h3>
    <input type="hidden" class="datatable_name" data-title="<?php echo lang('profit_loss_report'); ?>" data-id_name="datatable">
    <hr class="ir_border1">
    <div class="row">
        <div class="col-md-2">
            <?php echo form_open(base_url() . 'Report/profitLossReport') ?>
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

                <h3 class="ir_txt_center"><?php echo lang('profit_loss_report'); ?></h3>
                <?php
                if(isLMni() && isset($outlet_id)):
                    ?>
                    <h4> <?php echo lang('outlet'); ?>: <?php echo escape_output(getOutletNameById($outlet_id))?></h4>
                    <?php
                endif;
                ?>
                <h4 class="ir_txt_center">
                    <?= isset($start_date) && $start_date && isset($end_date) && $end_date ? lang('date').": " . date($this->session->userdata('date_format'), strtotime($start_date)) . " - " . date($this->session->userdata('date_format'), strtotime($end_date)) : '' ?><?= isset($start_date) && $start_date && !$end_date ? lang('date').": " . date($this->session->userdata('date_format'), strtotime($start_date)) : '' ?><?= isset($end_date) && $end_date && !$start_date ? lang('date').": " . date($this->session->userdata('date_format'), strtotime($end_date)) : '' ?>
                </h4>
                <br>
                <div class="box-body table-responsive">
                    <table class="table table-striped" id="datatable">
                        <thead>
                        <tr>
                            <th class="ir_w_70">&nbsp;</th>
                            <th>&nbsp;</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="ir_w_40">
                                <?php echo lang('purchase'); ?>(<?php echo lang('only_paid_amount'); ?>)</td>
                            <td><?php echo escape_output($this->session->userdata('currency'))?> <?= isset($saleReportByDate['total_purchase_amount']) ? $saleReportByDate['total_purchase_amount'] : '0.0' ?>
                            </td>
                        </tr>
                        <tr>
                            <td><?php echo lang('sale'); ?>(<?php echo lang('only_paid_amount'); ?>)</td>
                            <td><?php echo escape_output($this->session->userdata('currency'))?> <?= isset($saleReportByDate['total_sales_amount']) ? $saleReportByDate['total_sales_amount'] : '0.0' ?>
                            </td>
                        </tr>
                        <tr>
                            <td><?php echo lang('total'); ?> <?php echo lang('vat'); ?></td>
                            <td><?php echo escape_output($this->session->userdata('currency'))?> <?= isset($saleReportByDate['total_sales_vat']) ? $saleReportByDate['total_sales_vat'] : '0.0' ?>
                            </td>
                        </tr>
                        <tr>
                            <td><?php echo lang('expense'); ?></td>
                            <td><?php echo escape_output($this->session->userdata('currency'))?> <?= isset($saleReportByDate['expense_amount']) ? $saleReportByDate['expense_amount'] : '0.0' ?>
                            </td>
                        </tr>
                        <tr>
                            <td><?php echo lang('supplier_due_payment'); ?></td>
                            <td> <?php echo escape_output($this->session->userdata('currency'))?> <?= isset($saleReportByDate['supplier_payment_amount']) ? $saleReportByDate['supplier_payment_amount'] : '0.0' ?>
                            </td>
                        </tr>
                        <tr>
                            <td><?php echo lang('customer_due_receive'); ?></td>
                            <td><?php echo escape_output($this->session->userdata('currency'))?> <?= isset($saleReportByDate['customer_receive_amount']) ? $saleReportByDate['customer_receive_amount'] : '0.0' ?>
                            </td>
                        </tr>
                        <tr>
                            <td><?php echo lang('waste'); ?></td>
                            <td><?php echo escape_output($this->session->userdata('currency'))?> <?= isset($saleReportByDate['total_loss_amount']) ? $saleReportByDate['total_loss_amount'] : '0.0' ?>
                            </td>
                        </tr>
                        <tr>
                            <td class="ir_w_80"><?php echo lang('gross_profit'); ?> = ((<?php echo lang('sale'); ?> +
                                <?php echo lang('customer_due_receive'); ?>) - (<?php echo lang('purchase'); ?> +
                                <?php echo lang('waste'); ?> + <?php echo lang('expense'); ?> +
                                <?php echo lang('supplier_due_payment'); ?>))</td>
                            <td class="ir_w_20">
                                <?php echo escape_output($this->session->userdata('currency'))?> <?= isset($saleReportByDate['gross_profit']) ? $saleReportByDate['gross_profit'] : '0.0' ?>
                            </td>
                        </tr>
                        <tr>
                            <td class="ir_w_80"><?php echo lang('net_profit'); ?> = ((<?php echo lang('sale'); ?> +
                                <?php echo lang('customer_due_receive'); ?>) - (<?php echo lang('purchase'); ?> +
                                <?php echo lang('waste'); ?> + <?php echo lang('expense'); ?> +
                                <?php echo lang('supplier_due_payment'); ?>) - <?php echo lang('vat'); ?>))</td>
                            <td class="ir_w_20">
                                <?php echo escape_output($this->session->userdata('currency'))?> <?= isset($saleReportByDate['net_profit']) ? $saleReportByDate['net_profit'] : '0.0' ?>
                            </td>
                        </tr>
                        </tbody>
                        <tfoot>
                        <tr>
                            <th>&nbsp;</th>
                            <th>&nbsp;</th>
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