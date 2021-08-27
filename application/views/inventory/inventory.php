<link rel="stylesheet" href="<?php echo base_url(); ?>assets/dist/css/custom/inventory.css">

<section class="content-header">
    <div class="col-md-12 text-center">
        <h2 class="top-left-header"><?php echo lang('inventory'); ?> </h2>
    </div>
    <hr class="ir_border1">
    <div class="row">
        <?php echo form_open(base_url() . 'Inventory/index') ?>
        <input type="hidden" name="<?php echo escape_output($this->security->get_csrf_token_name()); ?>"
            value="<?php echo escape_output($this->security->get_csrf_hash()); ?>">
        <input type="hidden" name="hiddentIngredientID" id="hiddentIngredientID"
            value="<?= isset($ingredient_id) ? $ingredient_id : '' ?>">
        <div class="col-md-2">
            <div class="form-group">
                <select class="form-control select2 category_id ir_w_100" name="category_id" id="category_id">
                    <option value=""><?php echo lang('category'); ?></option>
                    <?php foreach ($ingredient_categories as $value) { ?>
                    <option value="<?php echo escape_output($value->id) ?>" <?php echo set_select('category_id', $value->id); ?>>
                        <?php echo escape_output($value->category_name) ?></option>
                    <?php } ?>
                </select>
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group">
                <select class="form-control select2 ir_w_100" name="ingredient_id" id="ingredient_id">
                    <option value=""><?php echo lang('ingredient'); ?></option>
                    <?php foreach ($ingredients as $value) { ?>
                    <option value="<?php echo escape_output($value->id) ?>" <?php echo set_select('ingredient_id', $value->id); ?>>
                        <?php echo escape_output($value->name) . "(" . $value->code . ")" ?></option>
                    <?php } ?>
                </select>
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group">
                <select class="form-control select2 ir_w_100" name="food_id" id="food_id">
                    <option value=""><?php echo lang('food_menu'); ?></option>
                    <?php foreach ($foodMenus as $value) { ?>
                    <option value="<?php echo escape_output($value->id) ?>" <?php echo set_select('food_id', $value->id); ?>>
                        <?php echo substr(ucwords(strtolower($value->name)), 0, 18) . "(" . $value->code . ")" ?>
                    </option>
                    <?php } ?>
                </select>
            </div>
        </div>
        <div class="col-md-1">
            <button type="submit" name="submit" value="submit"
                class="btn btn-block btn-primary pull-left"><?php echo lang('submit'); ?></button>
        </div>
        <div class="hidden-lg"><span class="ir_c_transparent">space</span></div>
        <div class="col-md-2">
            <a href="<?= base_url() . 'Inventory/getInventoryAlertList' ?>"
                class="btn btn-block btn-primary pull-left"><span class="ir_color_red"><?= getAlertCount() ?></span>
                <?php echo lang('ingredients_alert'); ?> </a>
        </div>
        <div class="hidden-lg"><br><br></div>
        <div class="col-md-3">
             <strong id="stockValue"></strong>
        </div>
    </div>
    <?php echo form_close(); ?>
</section>

<section class="content">
    <div class="row">
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary">
                <!-- /.box-header -->
                <div class="box-body table-responsive">
                    <input type="hidden" class="datatable_name" data-title="<?php echo lang('inventory'); ?>" data-id_name="datatable">
                    <table id="datatable" class="table table-striped">
                        <thead>
                            <tr>
                                <th class="title" class="ir_w_5"><?php echo lang('sn'); ?></th>
                                <th class="title" class="ir_w_37">
                                    <?php echo lang('ingredient'); ?>(<?php echo lang('code'); ?>)</th>
                                <th class="title" class="ir_w_20"><?php echo lang('category'); ?></th>
                                <th class="title" class="ir_w_20"><?php echo lang('stock_qty_amount'); ?></th>
                                <th class="title" class="ir_w_20"><?php echo lang('alert_qty_amount'); ?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                $totalStock = 0;
                                $grandTotal = 0;
                                $alertCount = 0;
                                $totalTK = 0;
                                if (!empty($inventory) && isset($inventory)):
                                    foreach ($inventory as $key => $value):
                                        if($value->id):
                                        $totalStock = $value->total_purchase - $value->total_consumption - $value->total_modifiers_consumption - $value->total_waste + $value->total_consumption_plus - $value->total_consumption_minus + $value->total_transfer_plus  - $value->total_transfer_minus;
                                        $totalTK = $totalStock * getLastPurchaseAmount($value->id);
                                        if ($totalStock >= 0) {
                                            $grandTotal = $grandTotal + $totalStock * getLastPurchaseAmount($value->id);
                                        }
                                        $key++;
                                        ?>
                            <tr>
                                <td class="ir_txt_center"><?php echo escape_output($key); ?></td>
                                <td><?= escape_output($value->name . "(" . $value->code . ")") ?></td>
                                <td><?php echo escape_output($value->category_name); ?></td>
                                <td><span
                                        style="<?= ($totalStock <= $value->alert_quantity) ? 'color:red' : '' ?>"><?= ($totalStock) ? $totalStock : '0.0' ?><?= " " . escape_output($value->unit_name)?></span>
                                </td>
                                <td><?= escape_output($value->alert_quantity . " " . $value->unit_name) ?></td>
                            </tr>
                            <?php
                                            endif;
                                    endforeach;
                                endif;
                                ?>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th class="title" class="ir_w_5"><?php echo lang('sn'); ?></th>
                                <th class="title" class="ir_w_37">
                                    <?php echo lang('ingredient'); ?>(<?php echo lang('code'); ?>)</th>
                                <th class="title" class="ir_w_20"><?php echo lang('category'); ?></th>
                                <th class="title" class="ir_w_20"><?php echo lang('stock_qty_amount'); ?></th>
                                <th class="title" class="ir_w_20"><?php echo lang('alert_qty_amount'); ?></th>
                            </tr>
                        </tfoot>
                    </table>
                    <input type="hidden" value="<?php echo escape_output($grandTotal); ?>" id="grandTotal" name="grandTotal">
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