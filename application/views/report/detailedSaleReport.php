<link rel="stylesheet" href="<?php echo base_url(); ?>assets/dist/css/custom/report.css">

<section class="content-header">
    <h3 class="ir_txtCenter_mt0"><?php echo lang('detailed_sale_report'); ?></h3>
    <input type="hidden" class="datatable_name" data-title="<?php echo lang('detailed_sale_report'); ?>" data-id_name="datatable">
    <hr class="ir_border1">
    <div class="row">
        <div class="col-md-2">
            <?php echo form_open(base_url() . 'Report/detailedSaleReport') ?>
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
                    <option value="<?php echo escape_output($value->id) ?>" <?php echo set_select('user_id', $value->id); ?>>
                        <?php echo escape_output($value->full_name) ?></option>
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
                    <h3><?php echo lang('detailed_sale_report'); ?></h3>
                    <?php
                    if(isLMni() && isset($outlet_id)):
                        ?>
                        <h4> <?php echo lang('outlet'); ?>: <?php echo escape_output(getOutletNameById($outlet_id))?></h4>
                        <?php
                    endif;
                    ?>
                    <h4><?= isset($start_date) && $start_date && isset($end_date) && $end_date ? lang('date').": " . date($this->session->userdata('date_format'), strtotime($start_date)) . " - " . date($this->session->userdata('date_format'), strtotime($end_date)) : '' ?><?= isset($start_date) && $start_date && !$end_date ? lang('date').": " . date($this->session->userdata('date_format'), strtotime($start_date)) : '' ?><?= isset($end_date) && $end_date && !$start_date ? lang('date').": " . date($this->session->userdata('date_format'), strtotime($end_date)) : '' ?>
                    </h4>
                    <h4 class="ir_txtCenter_mt0"><?php
                    if (isset($user_id) && $user_id):
                        echo lang('user').": " . userName($user_id);
                    else:
                        echo lang('user').": ".lang('all');
                    endif;
                    ?></h4>
                    <br>
                    <table id="datatable" class="table table-striped">
                        <thead>
                            <tr>
                                <th class="ir_w2_txt_center"><?php echo lang('sn'); ?></th>
                                <th><?php echo lang('date'); ?></th>
                                <th><?php echo lang('reference'); ?></th>
                                <th><?php echo lang('total_items'); ?></th>
                                <th><?php echo lang('subtotal'); ?></th>
                                <th><?php echo lang('discount'); ?></th>
                                <th><?php echo lang('vat'); ?></th>
                                <th><?php echo lang('g_total'); ?></th>
                                <th><?php echo lang('payment_method'); ?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $pGrandTotal = 0;
                            $subGrandTotal = 0;
                            $itemsGrandTotal = 0;
                            $disGrandTotal = 0;
                            $vatGrandTotal = 0;
                            if (isset($detailedSaleReport)):
                                foreach ($detailedSaleReport as $key => $value) {
                                    $pGrandTotal+=$value->total_payable;
                                    $subGrandTotal+=$value->sub_total;
                                    $itemsGrandTotal+=$value->total_items;
                                    $disGrandTotal+=$value->total_discount_amount;
                                    $vatGrandTotal+=$value->vat;
                                    $key++;
                                    ?>
                            <tr>
                                <td class="ir_txt_center"><?php echo escape_output($key); ?></td>
                                <td><?= escape_output(date($this->session->userdata('date_format'), strtotime($value->sale_date))) ?>
                                </td>
                                <td><?php echo escape_output($value->sale_no) ?></td>
                                <td><?php echo escape_output($value->total_items) ?></td>
                                <td><?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output($value->sub_total) ?></td>
                                <td><?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output($value->total_discount_amount) ?></td>
                                <td><?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output($value->vat) ?></td>
                                <td><?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output($value->total_payable) ?></td>
                                <td><?php echo escape_output($value->name) ?></td>
                            </tr>
                            <?php
                                }
                            endif;
                            ?>
                            <tr>
                                <th class="ir_w2_txt_center"></th>
                                <th></th>
                                <th class="ir_txt_right"><?php echo lang('total'); ?> </th>
                                <th><?= escape_output($itemsGrandTotal) ?></th>
                                <th>
                                    <?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output(number_format($subGrandTotal, 2)) ?></th>
                                <th>
                                    <?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output(number_format($disGrandTotal, 2)) ?></th>
                                <th>
                                    <?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output(number_format($vatGrandTotal, 2)) ?></th>
                                <th>
                                    <?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output(number_format($pGrandTotal, 2)) ?></th>
                                <th></th>
                            </tr>
                        </tbody>

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