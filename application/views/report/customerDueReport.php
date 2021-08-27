<link rel="stylesheet" href="<?php echo base_url(); ?>assets/dist/css/custom/report.css">
<section class="content-header">
    <h3 class="ir_txtCenter_mt0"><?php echo lang('customer_due_report'); ?></h3>
    <input type="hidden" class="datatable_name" data-title="<?php echo lang('customer_due_report'); ?>" data-id_name="datatable">
    <hr class="ir_border1">
    <?php
    if(isLMni()):
    ?>
    <div class="row">
        <?php echo form_open(base_url() . 'Report/customerDueReport') ?>

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
        <?php
    endif;
    ?>
</section>

<section class="content">
    <div class="row">
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary">
                <!-- /.box-header -->
                <div class="box-body table-responsive">
                    <h3><?php echo lang('customer_due_report'); ?></h3>
                    <?php
                    if(isLMni() && isset($outlet_id)):
                        ?>
                        <h4> <?php echo lang('outlet'); ?>: <?php echo escape_output(getOutletNameById($outlet_id))?></h4>
                        <?php
                    endif;
                    ?>
                    <br>
                    <table id="datatable" class="table table-striped">
                        <thead>
                            <tr>
                                <th class="ir_w2_txt_center"><?php echo lang('sn'); ?></th>
                                <th><?php echo lang('customer'); ?></th>
                                <th><?php echo lang('payable_due'); ?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $pGrandTotal = 0;
                            $i = 1;
                            if (isset($customerDueReport)):
                                foreach ($customerDueReport as $key => $value) {
                                    if ($value->totalDue > 0):
                                        $pGrandTotal+=$value->totalDue;
                                        ?>
                            <tr>
                                <td class="ir_txt_center"><?php echo escape_output($i); ?></td>
                                <td><?php echo escape_output($value->name) ?></td>
                                <td><?php echo escape_output($this->session->userdata('currency'))?> <?php echo escape_output(number_format($value->totalDue,2)) ?></td>
                            </tr>
                            <?php
                                    endif;
                                    $i++;
                                }
                            endif;
                            ?>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th class="ir_w2_txt_center"></th>
                                <th class="ir_txt_right"><?php echo lang('total'); ?></th>
                                <th><?php echo escape_output($this->session->userdata('currency'))?>  <?php echo escape_output(number_format($pGrandTotal,2)); ?></th>
                            </tr>
                        </tfoot>
                    </table>
                    <br>
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