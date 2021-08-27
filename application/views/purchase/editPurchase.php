<input type="hidden" id="ingredient_already_remain" value="<?php echo lang('ingredient_already_remain'); ?>">
<input type="hidden" id="supplier_field_required" value="<?php echo lang('supplier_field_required'); ?>">
<input type="hidden" id="date_field_required" value="<?php echo lang('date_field_required'); ?>">
<input type="hidden" id="at_least_ingredient" value="<?php echo lang('at_least_ingredient'); ?>">
<input type="hidden" id="paid_field_required" value="<?php echo lang('paid_field_required'); ?>">
<input type="hidden" id="are_you_sure" value="<?php echo lang('are_you_sure'); ?>">
<input type="hidden" id="base_url" value="<?php echo base_url(); ?>">
<input type="hidden" id="alert" value="<?php echo lang('alert'); ?>">
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/add_purchase.css">
<script type="text/javascript" src="<?php echo base_url('assets/supplier.js'); ?>"></script>
<script type="text/javascript" src="<?php echo base_url('assets/js/edit_purchase.js'); ?>"></script>

<section class="content-header">
    <h1>
        <?php echo lang('edit_purchase'); ?>
    </h1>
</section>

<section class="content">
    <div class="row">
        <!-- left column -->
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary">

                <!-- /.box-header -->
                <!-- form start -->
                <?php echo form_open(base_url() . 'Purchase/addEditPurchase/' . $encrypted_id, $arrayName = array('id' => 'purchase_form')) ?>
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label><?php echo lang('ref_no'); ?></label>
                                <input tabindex="1" type="text" id="reference_no" readonly name="reference_no"
                                    class="form-control" placeholder="<?php echo lang('ref_no'); ?>"
                                    value="<?php echo escape_output($purchase_details->reference_no) ?>">
                            </div>
                            <?php if (form_error('reference_no')) { ?>
                            <div class="alert alert-error ir_p_5">
                                <p><?php echo form_error('reference_no'); ?></p>
                            </div>
                            <?php } ?>
                            <div class="alert alert-error error-msg name_err_msg_contnr ir_p_5">
                                <p id="name_err_msg"></p>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label><?php echo lang('supplier'); ?> <span class="required_star">*</span> </label>
                                <table class="ir_w_100">
                                    <tr>
                                        <td class="txt_29">
                                            <select tabindex="2" class="form-control select2 ir_w_100" id="supplier_id"
                                                name="supplier_id">
                                                <option value=""><?php echo lang('select'); ?></option>
                                                <?php
                                                foreach ($suppliers as $splrs) {
                                                    ?>
                                                <option value="<?php echo escape_output($splrs->id) ?>" <?php
                                                    if ($purchase_details->supplier_id == $splrs->id) {
                                                        echo "selected";
                                                    }
                                                    ?>><?php echo escape_output($splrs->name) ?></option>
                                                <?php } ?>
                                            </select>
                                        </td>
                                        <td> <span class="plus-custom ir_c_mr_mt24" data-toggle="modal" data-target="#supplierModal">
                                                <i class="fa fa-plus"></i></span></td>
                                    </tr>
                                </table>

                            </div>
                            <?php if (form_error('supplier_id')) { ?>
                            <div class="alert alert-error ir_p_5">
                                <p><?php echo form_error('supplier_id'); ?></p>
                            </div>
                            <?php } ?>
                            <div class="alert alert-error error-msg supplier_id_err_msg_contnr ir_p_5">
                                <p id="supplier_id_err_msg"></p>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label><?php echo lang('date'); ?> <span class="required_star">*</span></label>
                                <input tabindex="3" type="text" id="date" name="date" readonly class="form-control"
                                    placeholder="<?php echo lang('date'); ?>"
                                    value="<?php echo date('Y-m-d', strtotime($purchase_details->date)); ?>">
                            </div>
                            <?php if (form_error('date')) { ?>
                            <div class="alert alert-error ir_p_5">
                                <p><?php echo form_error('date'); ?></p>
                            </div>
                            <?php } ?>
                            <div class="alert alert-error error-msg date_err_msg_contnr ir_p_5">
                                <p id="date_err_msg"></p>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="col-md-4">

                            <div class="form-group">
                                <label><?php echo lang('ingredients'); ?> <span class="required_star">*</span></label>
                                <select tabindex="4" class="form-control select2 select2-hidden-accessible ir_w_100"
                                    name="ingredient_id" id="ingredient_id">
                                    <option value=""><?php echo lang('select'); ?></option>
                                    <?php foreach ($ingredients as $ingnts) { ?>
                                    <option
                                        value="<?php echo escape_output($ingnts->id . "|" . $ingnts->name . " (" . $ingnts->code . ")|" . $ingnts->unit_name . "|" . $ingnts->purchase_price) ?>"
                                        <?php echo set_select('unit_id', $ingnts->id); ?>>
                                        <?php echo escape_output($ingnts->name . "(" . $ingnts->code . ")") ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                            <?php if (form_error('ingredient_id')) { ?>
                            <div class="alert alert-error ir_p_5">
                                <p><?php echo form_error('ingredient_id'); ?></p>
                            </div>
                            <?php } ?>
                            <div class="alert alert-error error-msg ingredient_id_err_msg_contnr ir_p_5">
                                <p id="ingredient_id_err_msg"></p>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="hidden-xs hidden-sm">&nbsp;</div>
                            <a class="btn btn-danger ir_bg_mt5 txt_52" data-toggle="modal"
                                data-target="#noticeModal"><?php echo lang('read_me_first'); ?></a>
                        </div>
                        <div class="hidden-lg hidden-sm">&nbsp;</div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive" id="purchase_cart">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th><?php echo lang('sn'); ?></th>
                                            <th>
                                                <?php echo lang('ingredient'); ?>(<?php echo lang('code'); ?>)</th>
                                            <th><?php echo lang('unit_price'); ?> <span
                                                    class="ir_c_transparent">fdf</span></th>
                                            <th><?php echo lang('quantity_amount'); ?></th>
                                            <th><?php echo lang('total'); ?> <span
                                                    class="ir_c_transparent">Hiddentext</span></th>
                                            <th><?php echo lang('actions'); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $i = 0;
                                        if ($purchase_ingredients && !empty($purchase_ingredients)) {
                                            foreach ($purchase_ingredients as $pi) {
                                                $i++;
                                                echo '<tr class="rowCount"  data-id="' . $i . '" id="row_' . $i . '">' .
                                                '<td class="txt_19"> <p id="sl_' . $i . '">' . $i . '</p></td>' .
                                                '<td class="txt_18">' . getIngredientNameById($pi->ingredient_id) . ' (' . getIngredientCodeById($pi->ingredient_id) . ')</span></td>' .
                                                '<input type="hidden" id="ingredient_id_' . $i . '" name="ingredient_id[]" value="' . $pi->ingredient_id . '"/>' .
                                                '<td><input type="text" id="unit_price_' . $i . '" name="unit_price[]" onfocus="this.select();" class="form-control integerchk aligning" placeholder="Unit Price" value="' . $pi->unit_price . '" onkeyup="return calculateAll();"/></td>' .
                                                '<td><input type="text" data-countID="' . $i . '" id="quantity_amount_' . $i . '" name="quantity_amount[]" onfocus="this.select();" class="form-control integerchk aligning countID" class="ir_w_85" placeholder="Qty/Amount" value="' . $pi->quantity_amount . '"  onkeyup="return calculateAll();" ><span class="label_aligning">' . unitName(getUnitIdByIgId($pi->ingredient_id)) . '</span></td>' .
                                                '<td><input type="text" id="total_' . $i . '" name="total[]" class="form-control integerchk aligning" placeholder="Total" value="' . $pi->total . '" readonly/></td>' .
                                                '<td><a class="btn btn-danger btn-xs txt_20" onclick="return deleter(' . $i . ',' . $pi->ingredient_id . ');" ><i class="fa fa-trash txt_22"></i> </a></td>' .
                                                '</tr>'
                                                ;
                                            }
                                        }
                                        ?>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8"></div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label><?php echo lang('g_total'); ?> <span class="required_star">*</span></label>
                                <input class="form-control" readonly type="text" name="grand_total"
                                       id="grand_total" value="<?php echo escape_output($purchase_details->grand_total) ?>">
                            </div>
                        </div>
                        <div class="col-md-1"></div>
                        <div class="clearfix"></div>
                        <div class="col-md-8"></div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label><?php echo lang('paid'); ?> <span class="required_star">*</span></label>
                                <input tabindex="3" class="form-control integerchk" type="text" name="paid"
                                       id="paid" onfocus="this.select();" onkeyup="return calculateAll()"
                                       value="<?php echo escape_output($purchase_details->paid) ?>">
                            </div>
                            <?php if (form_error('paid')) { ?>
                            <div class="alert alert-error ir_p_5">
                                <p><?php echo form_error('paid'); ?></p>
                            </div>
                            <?php } ?>
                            <div class="alert alert-error error-msg paid_err_msg_contnr ir_p_5">
                                <p id="paid_err_msg"></p>
                            </div>
                        </div>
                        <div class="col-md-1"></div>
                        <div class="clearfix"></div>
                        <div class="col-md-8"></div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label><?php echo lang('due'); ?></label>
                                <input class="form-control aligning_x ir_w_100" type="text" name="due" id="due"
                                       readonly value="<?php echo escape_output($purchase_details->due) ?>">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-1"></div>
                </div>
                <input type="hidden" name="suffix_hidden_field" id="suffix_hidden_field" />
                <div class="box-footer">
                    <button type="submit" name="submit" value="submit"
                        class="btn btn-primary"><?php echo lang('submit'); ?></button>
                    <a href="<?php echo base_url() ?>Purchase/purchases"><button type="button"
                            class="btn btn-primary"><?php echo lang('back'); ?></button></a>
                </div>
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</section>

<div class="modal fade" id="supplierModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><i
                            class="fa fa-2x">×</i></span></button>
                <h4 class="modal-title" id="myModalLabel"><i class="fa fa-plus-square-o ir_color_blue"></i>
                    <?php echo lang('add_supplier'); ?></h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-4 control-label"><?php echo lang('supplier_name'); ?><span
                                class="ir_color_red"> *</span></label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" name="name" id="name"
                                placeholder="<?php echo lang('supplier_name'); ?>" value="">
                            <div class="alert alert-error error-msg supplier_err_msg_contnr ir_p_5">
                                <p class="supplier_err_msg"></p>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4 control-label"><?php echo lang('contact_person'); ?><span
                                class="ir_color_red"> *</span></label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" name="contact_person" id="contact_person"
                                placeholder="<?php echo lang('contact_person'); ?>" value="">
                            <div class="alert alert-error error-msg customer_err_msg_contnr ir_p_5">
                                <p class="customer_err_msg"></p>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4 control-label"><?php echo lang('phone'); ?> <span class="ir_color_red">
                                *</span></label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control integerchk" id="phone" name="phone"
                                placeholder="<?php echo lang('phone'); ?>" value="">
                            <div class="alert alert-error error-msg customer_mobile_err_msg_contnr ir_p_5">
                                <p class="customer_mobile_err_msg"></p>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4 control-label"><?php echo lang('email'); ?></label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="emailAddress" name="emailAddress"
                                placeholder="<?php echo lang('email'); ?>" value="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4 control-label"><?php echo lang('address'); ?></label>
                        <div class="col-sm-7">
                            <textarea tabindex="4" class="form-control" rows="3" name="supAddress"
                                placeholder="<?php echo lang('address'); ?>"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4 control-label"><?php echo lang('description'); ?></label>
                        <div class="col-sm-7">
                            <textarea tabindex="4" class="form-control" rows="7" name="description"
                                placeholder="<?php echo lang('enter'); ?> ..."></textarea>
                        </div>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="addSupplier">
                    <i class="fa fa-save"></i> <?php echo lang('submit'); ?></button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="noticeModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="noticeModal">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><i
                            class="fa fa-2x">×</i></span></button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12 hidden-lg hidden-sm">
                        <p class="foodMenuCartNotice">
                            <strong class="ir_ml39"><?php echo lang('notice'); ?></strong><br>
                            <?php echo lang('notice_text_1'); ?>
                        </p>
                    </div>
                    <div class="col-md-12 hidden-xs hidden-sm">
                        <p class="foodMenuCartNotice">
                            <strong class="ir_m_l_45"><?php echo lang('notice'); ?></strong><br>
                            <?php echo lang('notice_text_1'); ?>
                        </p>
                    </div>
                    <div class="col-md-12 hidden-xs hidden-lg">
                        <p class="foodMenuCartNotice">
                            <strong class="ir_m_l_45"><?php echo lang('notice'); ?></strong><br>
                            <?php echo lang('notice_text_1'); ?>
                        </p>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<script type="text/javascript" src="<?php echo base_url('assets/supplier.js'); ?>"></script>