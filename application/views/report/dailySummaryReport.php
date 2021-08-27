<link rel="stylesheet" href="<?php echo base_url(); ?>assets/dist/css/custom/report.css">
<section class="content-header">
    <h3><?php echo lang('daily_summary_report'); ?></h3>
    <hr class="ir_border1">
    <div class="row">
        <div class="col-md-2">
            <?php echo form_open(base_url() . 'Report/dailySummaryReport') ?>
            <div class="form-group">
                <input tabindex="1" type="text" id="date" name="date" readonly class="form-control"
                    placeholder="<?php echo lang('date'); ?>" value="<?php echo set_value('date'); ?>">
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
        <div class="col-md-offset-8 col-md-1">
            <div class="form-group">
                <a class="btn btn-block btn-primary pull-left"
                    href="<?php echo base_url(); ?>Report/printDailySummaryReport/<?php echo escape_output($selectedDate); ?>/<?php echo escape_output($outlet_id)?>"><?php echo lang('print'); ?></a>
            </div>
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
                    <h1> <?php
                        if(isLMni() && isset($outlet_id)):
                            ?>
                            <?php echo escape_output(getOutletNameById($outlet_id))?>
                            <?php
                        endif;
                        ?></h1>
                    <hr>
                    <h3 class="ir_txt_center"><?php echo lang('daily_summary_report'); ?></h3>
                    <h4><?= isset($selectedDate) && $selectedDate ? lang('date').": " . date($this->session->userdata('date_format'), strtotime($selectedDate)) : '' ?>
                    </h4>
                    <hr>
                    <h4 class="ir_fw_ta_mt20"><?php echo lang('purchases'); ?></h4>
                    <hr>
                    <table class="ir_w_100 tbl">
                        <tr>
                            <th class="ir_fw_txt_center"><?php echo lang('sn'); ?></th>
                            <th><?php echo lang('ref_no'); ?></th>
                            <th><?php echo lang('supplier'); ?></th>
                            <th><?php echo lang('g_total'); ?></th>
                            <th><?php echo lang('paid'); ?></th>
                            <th><?php echo lang('due'); ?></th>
                        </tr>
                        <?php  
                            $sum_of_gtotal = 0;
                            $sum_of_paid = 0;
                            $sum_of_due = 0;
                            if (!empty($result['purchases']) && isset($result['purchases'])):
                                foreach ($result['purchases'] as $key => $value): 
                                    $sum_of_gtotal += $value->grand_total; 
                                    $sum_of_paid += $value->paid;  
                                    $sum_of_due += $value->due;  
                                    $key++;
                                    ?>
                        <tr>
                            <td class="ir_txt_center"><?php echo escape_output($key); ?></td>
                            <td><?php echo escape_output($value->reference_no); ?></td>
                            <td><?= escape_output(getSupplierNameById($value->supplier_id)) ?></td>
                            <td><?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output(number_format($value->grand_total,2)); ?></td>
                            <td><?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output(number_format($value->paid,2)); ?></td>
                            <td><?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output(number_format($value->due,2)); ?></td>
                        </tr>
                        <?php
                                endforeach;
                            endif;
                        ?>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="ir_fw_txt_right"><?php echo lang('sum'); ?></td>
                            <td>&nbsp;<?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output(number_format($sum_of_gtotal,2)); ?></td>
                            <td>&nbsp;<?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output(number_format($sum_of_paid,2)); ?></td>
                            <td>&nbsp;<?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output(number_format($sum_of_due,2)); ?></td>
                        </tr>
                    </table>

                    <hr>
                    <h4 class="ir_fw_ta_mt20"><?php echo lang('sales'); ?>
                    </h4>
                    <hr>
                    <table class="ir_w_100 tbl">
                        <tr>
                            <th class="ir_fw_txt_center"><?php echo lang('sn'); ?></th>
                            <th><?php echo lang('ref_no'); ?></th>
                            <th><?php echo lang('order_type'); ?></th>
                            <th><?php echo lang('table'); ?></th>
                            <th><?php echo lang('customer'); ?></th>
                            <th><?php echo lang('total_payable'); ?></th>
                            <th><?php echo lang('discount'); ?></th>
                            <th><?php echo lang('paid'); ?></th>
                            <th><?php echo lang('due'); ?></th>
                        </tr>
                        <?php  
                            $sum_of_stotal_payable = 0;
                            $sum_of_sdisc_actual = 0;
                            $sum_of_spaid_amount = 0;
                            $sum_of_sdue_amount = 0;
                            if (!empty($result['sales']) && isset($result['sales'])):
                                foreach ($result['sales'] as $key => $value): 
                                    $sum_of_stotal_payable += $value->total_payable; 
                                    $sum_of_sdisc_actual += $value->total_discount_amount;
                                    $sum_of_spaid_amount += $value->paid_amount;  
                                    $sum_of_sdue_amount += $value->due_amount;  
                                    $key++;
                                    ?>
                        <tr>
                            <td class="ir_txt_center"><?php echo escape_output($key); ?></td>
                            <td><?php echo escape_output($value->sale_no); ?></td>
                            <td><?php echo getOrderType($value->order_type); ?></td>
                            <td><?php if(!empty($value->table_id)){ echo getTableName($value->table_id); } ?></td>
                            <td><?= getCustomerName($value->customer_id) ?></td>
                            <td><?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output(number_format($value->total_payable,2)); ?></td>
                            <td><?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output(number_format($value->total_discount_amount,2)); ?></td>
                            <td><?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output(number_format($value->paid_amount,2)); ?></td>
                            <td><?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output(number_format($value->due_amount,2)); ?></td>
                        </tr>
                        <?php
                                endforeach;
                            endif;
                        ?>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="ir_fw_txt_right"><?php echo lang('sum'); ?></td>
                            <td>&nbsp;<?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output(number_format($sum_of_stotal_payable,2)); ?></td>
                            <td>&nbsp;<?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output(number_format($sum_of_sdisc_actual,2)); ?></td>
                            <td>&nbsp;<?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output(number_format($sum_of_spaid_amount,2)); ?></td>
                            <td>&nbsp;<?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output(number_format($sum_of_sdue_amount,2)); ?></td>
                        </tr>
                    </table>


                    <hr>
                    <h4 class="ir_fw_ta_mt20"><?php echo lang('expenses'); ?>
                    </h4>
                    <hr>
                    <table class="ir_w_100 tbl">
                        <tr>
                            <th class="ir_fw_txt_center"><?php echo lang('sn'); ?></th>
                            <th><?php echo lang('amount'); ?></th>
                            <th><?php echo lang('category'); ?></th>
                            <th><?php echo lang('responsible_person'); ?></th>
                            <th><?php echo lang('note'); ?></th>
                        </tr>
                        <?php  
                            $sum_of_eamount = 0; 
                            if (!empty($result['expenses']) && isset($result['expenses'])):
                                foreach ($result['expenses'] as $key => $value): 
                                    $sum_of_eamount += $value->amount;  
                                    $key++;
                                    ?>
                        <tr>
                            <td class="ir_txt_center"><?php echo escape_output($key); ?></td>
                            <td><?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output($value->amount); ?></td>
                            <td><?php echo expenseItemName($value->category_id); ?></td>
                            <td><?php echo employeeName($value->employee_id); ?></td>
                            <td><?php echo escape_output($value->note); ?></td>
                        </tr>
                        <?php
                                endforeach;
                            endif;
                        ?>
                        <tr>
                            <td class="ir_fw_txt_right"><?php echo lang('sum'); ?></td>
                            <td>&nbsp;<?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output(number_format($sum_of_eamount,2)); ?></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>

                    <hr>
                    <h4 class="ir_fw_ta_mt20">
                        <?php echo lang('supplier_due_payments'); ?></h4>
                    <hr>
                    <table class="ir_w_100 tbl">
                        <tr>
                            <th class="ir_fw_txt_center"><?php echo lang('sn'); ?></th>
                            <th><?php echo lang('amount'); ?></th>
                            <th><?php echo lang('supplier'); ?></th>
                            <th><?php echo lang('note'); ?></th>
                        </tr>
                        <?php  
                            $sum_of_samount = 0; 
                            if (!empty($result['supplier_due_payments']) && isset($result['supplier_due_payments'])):
                                foreach ($result['supplier_due_payments'] as $key => $value): 
                                    $sum_of_samount += $value->amount;  
                                    $key++;
                                    ?>
                        <tr>
                            <td class="ir_txt_center"><?php echo escape_output($key); ?></td>
                            <td><?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output(number_format($value->amount,2)); ?></td>
                            <td><?php echo getSupplierNameById($value->supplier_id); ?></td>
                            <td><?php echo escape_output($value->note); ?></td>
                        </tr>
                        <?php
                                endforeach;
                            endif;
                        ?>
                        <tr>
                            <td class="ir_fw_txt_right"><?php echo lang('sum'); ?></td>
                            <td>&nbsp;<?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output(number_format($sum_of_samount,2)); ?></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>

                    <hr>
                    <h4 class="ir_fw_ta_mt20">
                        <?php echo lang('customer_due_receives'); ?></h4>
                    <hr>
                    <table class="ir_w_100 tbl">
                        <tr>
                            <th class="ir_fw_txt_center"><?php echo lang('sn'); ?></th>
                            <th><?php echo lang('amount'); ?></th>
                            <th><?php echo lang('customer'); ?></th>
                            <th><?php echo lang('note'); ?></th>
                        </tr>
                        <?php  
                            $sum_of_camount = 0; 
                            if (!empty($result['customer_due_receives']) && isset($result['customer_due_receives'])):
                                foreach ($result['customer_due_receives'] as $key => $value): 
                                    $sum_of_camount += $value->amount;  
                                    $key++;
                                    ?>
                        <tr>
                            <td class="ir_txt_center"><?php echo escape_output($key); ?></td>
                            <td><?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output($value->amount); ?></td>
                            <td><?php echo getCustomerName($value->customer_id); ?></td>
                            <td><?php echo escape_output($value->note); ?></td>
                        </tr>
                        <?php
                                endforeach;
                            endif;
                        ?>
                        <tr>
                            <td class="ir_fw_txt_right"><?php echo lang('sum'); ?></td>
                            <td>&nbsp;<?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output(number_format($sum_of_camount,2)); ?></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>

                    <hr>
                    <h4 class="ir_fw_ta_mt20"><?php echo lang('wastes'); ?>
                    </h4>
                    <hr>
                    <table class="ir_w_100 tbl">
                        <tr>
                            <th class="ir_fw_txt_center"><?php echo lang('sn'); ?></th>
                            <th><?php echo lang('ref_no'); ?></th>
                            <th><?php echo lang('loss_amount'); ?></th>
                            <th><?php echo lang('responsible_person'); ?></th>
                            <th><?php echo lang('note'); ?></th>
                        </tr>
                        <?php  
                            $sum_of_wamount = 0; 
                            if (!empty($result['wastes']) && isset($result['wastes'])):
                                foreach ($result['wastes'] as $key => $value): 
                                    $sum_of_wamount += $value->total_loss;  
                                    $key++;
                                    ?>
                        <tr>
                            <td class="ir_txt_center"><?php echo escape_output($key); ?></td>
                            <td><?php echo escape_output($value->reference_no); ?></td>
                            <td><?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output(number_format($value->total_loss,2)); ?></td>
                            <td><?php echo employeeName($value->employee_id); ?></td>
                            <td><?php echo escape_output($value->note); ?></td>
                        </tr>
                        <?php
                                endforeach;
                            endif;
                        ?>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="ir_fw_txt_right"><?php echo lang('sum'); ?></td>
                            <td>&nbsp;<?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output(number_format($sum_of_wamount,2)); ?></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </div>
                <!-- /.box-body -->
            </div>
        </div>
    </div>
</section>