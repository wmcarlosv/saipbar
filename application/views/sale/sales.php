<?php
if ($this->session->flashdata('exception')) {

    echo '<section class="content-header"><div class="alert alert-success alert-dismissible"> 
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <p><i class="icon fa fa-check"></i>';
    echo escape_output($this->session->flashdata('exception'));
    echo '</p></div></section>';
}
?>

<base data-base="<?php echo base_url(); ?>">
</base>
<section class="content-header">
    <div class="row">
        <div class="col-md-6">
            <h2 class="top-left-header"><?php echo lang('sale'); ?> </h2>
        </div>
        <div class="col-md-offset-4 col-md-2">
            <a href="<?php echo base_url() ?>Sale/POS"><button type="button"
                    class="btn btn-block btn-primary pull-right"><?php echo lang('add_sale'); ?></button></a>
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
                    <table id="datatable" class="table">
                        <thead>
                            <tr>
                                <th class="ir_w2_txt_center"><?php echo lang('sn'); ?></th>
                                <th class="ir_w_8"><?php echo lang('ref_no'); ?></th>
                                <th class="ir_w_8"><?php echo lang('order_type'); ?></th>
                                <th class="ir_w_12"><?php echo lang('date'); ?>(<?php echo lang('time'); ?>)</th>
                                <th class="ir_w_15"><?php echo lang('customer'); ?></th>
                                <th class="ir_w_17"><?php echo lang('total_payable'); ?></th>
                                <th class="ir_w_4"><?php echo lang('payment_method'); ?></th>
                                <th class="ir_w_10"><?php echo lang('added_by'); ?></th>
                                <th class="ir_w5_txt_center not-export-col"><?php echo lang('actions'); ?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            if ($lists && !empty($lists)) {
                                $i = count($lists);
                            }
                            foreach ($lists as $value) {
                                $order_type = "";
                                if($value->order_type=='1'){
                                    $order_type = "Dine In";
                                }elseif($value->order_type=='2'){
                                    $order_type = "Take Away";
                                }elseif($value->order_type=='3'){
                                    $order_type = "Delivery";
                                }
                                ?>
                            <tr>
                                <td class="ir_txt_center"><?php echo escape_output($i--); ?></td>
                                <td><?php echo escape_output($value->sale_no) ?></td>
                                <td><?php echo escape_output($order_type); ?></td>
                                <td><?= escape_output(date($this->session->userdata['date_format'], strtotime($value->sale_date))) ?>
                                    <?php echo escape_output($value->order_time); ?></td>
                                <td><?php echo escape_output($value->customer_name) ?></td>
                                <td><?php echo escape_output($value->total_payable); ?></td>
                                <td><?php echo escape_output($value->name) ?></td>
                                <td><?php echo escape_output($value->full_name) ?></td>
                                <td class="ir_txt_center">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-default btn-xs dropdown-toggle"
                                            data-toggle="dropdown" aria-expanded="false">
                                            <i class="fa fa-gear tiny-icon"></i><span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                            <li><a class="ir_mouse_pointer" onclick="viewInvoice(<?php echo escape_output($value->id); ?>)"><i
                                                        class="fa fa-eye tiny-icon"></i><?php echo lang('view_invoice'); ?></a>
                                            </li>
                                            <li><a class="ir_mouse_pointer" onclick="change_date(<?php echo escape_output($value->id); ?>)"><i
                                                        class="fa fa-calendar tiny-icon"></i><?php echo lang('change_date'); ?></a>
                                            </li>
                                            <?php if($this->session->userdata('role')=='Admin'){?>
                                            <li><a class="delete"
                                                    href="<?php echo base_url() ?>Sale/deleteSale/<?php echo escape_output($this->custom->encrypt_decrypt($value->id, 'encrypt')); ?>"><i
                                                        class="fa fa-trash tiny-icon"></i><?php echo lang('delete'); ?></a>
                                            </li>
                                            <?php } ?>
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
                                <th class="ir_w_5"><?php echo lang('sn'); ?></th>
                                <th class="ir_w_8"><?php echo lang('ref_no'); ?></th>
                                <th class="ir_w_8"><?php echo lang('order_type'); ?></th>
                                <th class="ir_w_10"><?php echo lang('date'); ?>(<?php echo lang('time'); ?>)</th>
                                <th class="ir_w_15"><?php echo lang('customer'); ?></th>
                                <th class="ir_w_15"><?php echo lang('total_payable'); ?></th>
                                <th class="ir_w_4"><?php echo lang('payment_method'); ?></th>
                                <th class="ir_w_10"><?php echo lang('added_by'); ?></th>
                                <th class="ir_w5_txt_center not-export-col"><?php echo lang('actions'); ?></th>
                            </tr>
                        </tfoot>
                    </table>
                </div>
                <!-- /.box-body -->
            </div>
        </div>
    </div>
</section>
<div id="change_date_modal" class="modal" tabindex="-1" role="dialog">
    <div class="modal-dialog ir_w_300x" role="document">
        <div class="modal-content">
            <div class="modal-header ir_bg_blue">
                <h5 class="modal-title ir_fs_ta_c_lh20">
                    <?php echo lang('change_date'); ?></h5>
            </div>
            <div class="modal-body">
                <input type="hidden" name="sale_id_hidden" id="sale_id_hidden">
                <input name="change_date_sale" placeholder="<?php echo lang('date')?>" id="change_date_sale_modal" class="ir_w100_height35x">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary"
                    id="save_change_date"><?php echo lang('save_changes'); ?></button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal"
                    id="close_change_date_modal"><?php echo lang('close'); ?></button>
            </div>
        </div>
    </div>
</div>
<!-- DataTables -->
<script src="<?php echo base_url(); ?>assets/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url(); ?>assets/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js">
</script>
<link rel="stylesheet"
    href="<?php echo base_url(); ?>assets/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
<script type="text/javascript" src="<?php echo base_url(); ?>assets/POS/js/jquery.cookie.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/sale.js"></script>
