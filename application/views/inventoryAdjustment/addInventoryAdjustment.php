<input type="hidden" id="ingredient_already_remain" value="<?php echo lang('ingredient_already_remain'); ?>">
<input type="hidden" id="select" value="<?php echo lang('select'); ?>">
<input type="hidden" id="consumption_amount" value="<?php echo lang('consumption_amount'); ?>">
<input type="hidden" id="responsible_person_field_required" value="<?php echo lang('responsible_person_field_required'); ?>">
<input type="hidden" id="date_field_required" value="<?php echo lang('date_field_required'); ?>">
<input type="hidden" id="at_least_ingredient" value="<?php echo lang('at_least_ingredient'); ?>">
<input type="hidden" id="note_field_cannot" value="<?php echo lang('note_field_cannot'); ?>">
<input type="hidden" id="consumption_ingredients" value="<?php echo isset($consumption_ingredients) && $consumption_ingredients?$consumption_ingredients:0 ?>">

<script src="<?php echo base_url(); ?>assets/js/inventory_adjustment.js"></script>

<link rel="stylesheet" href="<?php echo base_url(); ?>assets/dist/css/custom/addInventoryAdjustment.css">

<section class="content-header">
    <h1>
        <?php echo lang('add_inventory_Adjustment'); ?>
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
                <?php echo form_open(base_url() . 'Inventory_adjustment/addEditInventoryAdjustment', $arrayName = array('id' => 'consumption_form')) ?>
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label><?php echo lang('ref_no'); ?></label>
                                <input tabindex="1" type="text" id="reference_no" readonly name="reference_no"
                                    class="form-control" placeholder="Reference No"
                                    value="<?php echo escape_output($reference_no); ?>">
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
                                <label><?php echo lang('date'); ?> <span class="required_star">*</span></label>
                                <input tabindex="3" type="text" id="date" name="date" readonly class="form-control"
                                    placeholder="<?php echo lang('date'); ?>" value="<?php echo set_value('date'); ?>">
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

                        <div class="col-md-4">

                            <div class="form-group">
                                <label><?php echo lang('responsible_person'); ?> <span
                                        class="required_star">*</span></label>
                                <select tabindex="4" class="form-control ir_w_100 select2 select2-hidden-accessible"
                                    name="employee_id" id="employee_id">
                                    <option value=""><?php echo lang('select'); ?></option>
                                    <?php foreach ($employees as $empls) { ?>
                                    <option value="<?php echo escape_output($empls->id) ?>"
                                        <?php echo set_select('employee_id', $empls->id); ?>>
                                        <?php echo escape_output($empls->full_name) ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                            <?php if (form_error('employee_id')) { ?>
                            <div class="alert alert-error ir_p_5">
                                <p><?php echo form_error('employee_id'); ?></p>
                            </div>
                            <?php } ?>
                            <div class="alert alert-error error-msg employee_id_err_msg_contnr ir_p_5">
                                <p id="employee_id_err_msg"></p>
                            </div>


                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">

                            <div class="form-group">
                                <label><?php echo lang('ingredients'); ?> <span class="required_star">*</span></label>
                                <select tabindex="4" class="w-100 form-control select2" name="ingredient_id"
                                    id="ingredient_id">
                                    <option value=""><?php echo lang('select'); ?></option>
                                    <?php
                                    $ignoreID = array();
                                    foreach ($ingredients as $ingnts) {
                                        if (!in_array($ingnts->id, $ignoreID)) {
                                            $ignoreID[] = $ingnts->id;
                                            ?>
                                    <option
                                        value="<?php echo escape_output($ingnts->id . "|" . $ingnts->name . " (" . $ingnts->code . ")|" . $ingnts->unit_name . "|" . getLastPurchasePrice($ingnts->id)) ?>"
                                        <?php echo set_select('unit_id', $ingnts->id); ?>>
                                        <?php echo escape_output($ingnts->name . " (" . $ingnts->code . ")") ?></option>
                                    <?php
                                        }
                                    }
                                    ?>
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
                            <a class="btn btn-danger" class="ir_bg_mt5" data-toggle="modal"
                                data-target="#noticeModal"><?php echo lang('read_me_first'); ?></a>
                        </div>
                        <div class="clearfix"></div>
                        <div class="hidden-lg hidden-sm">&nbsp;</div>
                    </div>



                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive" id="consumption_cart">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th><?php echo lang('sn'); ?></th>
                                            <th>
                                                <?php echo lang('ingredient'); ?>(<?php echo lang('code'); ?>)</th>
                                            <th><?php echo lang('quantity_amount'); ?></th>
                                            <th><?php echo lang('consumption_status'); ?></th>
                                            <th><?php echo lang('actions'); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="clearfix"></div>


                        <div class="col-md-4">
                            <div class="form-group">
                                <label><?php echo lang('note'); ?></label>
                                <textarea tabindex="3" class="form-control" rows="2" id="note" name="note"
                                    placeholder="<?php echo lang('enter'); ?> ..."><?php echo escape_output($this->input->post('note')); ?></textarea>
                            </div>
                            <?php if (form_error('note')) { ?>
                            <div class="alert alert-error ir_p_5">
                                <p><?php echo form_error('note'); ?></p>
                            </div>
                            <?php } ?>
                            <div class="alert alert-error error-msg note_err_msg_contnr ir_p_5">
                                <p id="note_err_msg"></p>
                            </div>
                        </div>

                    </div>
                    <input type="hidden" name="suffix_hidden_field" id="suffix_hidden_field" />
                    <div class="box-footer">
                        <button type="submit" name="submit" value="submit"
                            class="btn btn-primary"><?php echo lang('submit'); ?></button>
                        <a href="<?php echo base_url() ?>Inventory_adjustment/inventoryAdjustments"><button
                                type="button" class="btn btn-primary"><?php echo lang('back'); ?></button></a>
                    </div>
                    <?php echo form_close(); ?>
                </div>
            </div>
        </div>
        <div class="modal fade" id="noticeModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="noticeModal">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true"><i class="fa fa-2x">×</i></span></button>
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
                            <div class="col-md-12">
                                <p class="foodMenuCartInfo">
                                    <a class="ir_font_bold" href="#"
                                        target="_blank"><?php echo lang('click_here'); ?></a>
                                    <?php echo lang('notice_text_2'); ?>
                                    <br>
                                    <br>
                                    <?php echo lang('notice_text_3'); ?>
                                    <br>
                                    <span class="ir_font_bold"><?php echo lang('notice_text_4'); ?></span>
                                </p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
</section>