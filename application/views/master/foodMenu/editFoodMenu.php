
<?php
$ingredient_id_container = "[";
if ($food_menu_ingredients && !empty($food_menu_ingredients)) {
    $x = 1;
    $total_ingredient = count($food_menu_ingredients);
    foreach ($food_menu_ingredients as $fmi) {
        if($x!=$total_ingredient){
            $ingredient_id_container .= '"' . $fmi->ingredient_id . '",';
        }else{
            $ingredient_id_container .= '"' . $fmi->ingredient_id . '"';
        }
        $x++;
    }
}
// $ingredient_id_container .= substr($ingredient_id_container, 0, -1);
$ingredient_id_container .= "]";
?>
<script>
    //This variable could not be escaped because this is object
let ingredient_id_container = <?php echo $ingredient_id_container; ?>;
</script>
    <input type="hidden" id="ingredient_already_remain" value="<?php echo lang('ingredient_already_remain'); ?>">
    <input type="hidden" id="name_field_required" value="<?php echo lang('name_field_required'); ?>">
    <input type="hidden" id="category_field_required" value="<?php echo lang('category_field_required'); ?>">
    <input type="hidden" id="veg_item_field_required" value="<?php echo lang('veg_item_field_required'); ?>">
    <input type="hidden" id="beverage_item_field_required" value="<?php echo lang('beverage_item_field_required'); ?>">
    <input type="hidden" id="bar_item_field_required" value="<?php echo lang('bar_item_field_required'); ?>">
    <input type="hidden" id="description_field_can_not_exceed" value="<?php echo lang('description_field_can_not_exceed'); ?>">
    <input type="hidden" id="consumption" value="<?php echo lang('consumption'); ?>">

    <script src="<?php echo base_url(); ?>assets/js/edit_food_menu.js"></script>
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/add_food_menu.css">

<section class="content-header">
                        <h1>
                            <?php echo lang('edit_food_menu'); ?>
                        </h1>
                    </section>

                    <section class="content">
                        <div class="row">
                            <div class="col-md-12">
                                <!-- general form elements -->
                                <div class="box box-primary">
                                    <!-- form start -->
                                    <?php echo form_open(base_url() . 'foodMenu/addEditFoodMenu/' . $encrypted_id, $arrayName = array('id' => 'food_menu_form', 'enctype' => 'multipart/form-data')) ?>

                                    <div class="box-body">

                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label><?php echo lang('name'); ?> <span
                                                            class="required_star">*</span></label>
                                                    <input tabindex="1" type="text" id="name" name="name"
                                                        class="form-control" placeholder="<?php echo lang('name'); ?>"
                                                        value="<?php echo escape_output($food_menu_details->name) ?>">
                                                </div>
                                                <?php if (form_error('name')) { ?>
                                                <div class="alert alert-error ir_p_5">
                                                    <p><?php echo form_error('name'); ?></p>
                                                </div>
                                                <?php } ?>
                                                <div class="alert alert-error error-msg name_err_msg_contnr  ir_p_5"">
                                <p id=" name_err_msg">
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label><?php echo lang('code'); ?></label>
                                                    <input tabindex="6" type="text" name="code" class="form-control"
                                                        placeholder="<?php echo lang('code'); ?>"
                                                        value="<?php echo escape_output($food_menu_details->code) ?>">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label><?php echo lang('category'); ?> <span
                                                            class="required_star">*</span></label>
                                                    <select tabindex="2" class="form-control select2 ir_w_100"
                                                        id="category_id" name="category_id">
                                                        <option value=""><?php echo lang('select'); ?></option>
                                                        <?php foreach ($categories as $ctry) { ?>
                                                        <option value="<?php echo escape_output($ctry->id) ?>" <?php
                                        if ($food_menu_details->category_id == $ctry->id) {
                                            echo "selected";
                                        }
                                        ?>>
                                                            <?php echo escape_output($ctry->category_name) ?></option>
                                                        <?php } ?>
                                                    </select>
                                                </div>
                                                <?php if (form_error('category_id')) { ?>
                                                <div class="alert alert-error ir_p_5">
                                                    <p><?php echo form_error('category_id'); ?></p>
                                                </div>
                                                <?php } ?>
                                                <div class="alert alert-error error-msg category_err_msg_contnr ir_p_5">
                                                    <p id="category_id_err_msg"></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label><?php echo lang('ingredient_consumptions'); ?> <span
                                                            class="required_star">*</span></label>
                                                    <select tabindex="5"
                                                        class="w-100 form-control select2 select2-hidden-accessible"
                                                        name="ingredient_id" id="ingredient_id">
                                                        <option value=""><?php echo lang('select'); ?></option>
                                                        <?php foreach ($ingredients as $ingnts) { ?>
                                                        <option
                                                            value="<?php echo escape_output($ingnts->id . "|" . $ingnts->name . "|" . $ingnts->unit_name) ?>"
                                                            <?php echo set_select('unit_id', $ingnts->id); ?>>
                                                            <?php echo escape_output($ingnts->name) ?>
                                                        </option>
                                                        <?php } ?>
                                                    </select>
                                                </div>
                                                <?php if (form_error('ingredient_id')) { ?>
                                                <div class="alert alert-error ir_p_5">
                                                    <p><?php echo form_error('ingredient_id'); ?></p>
                                                </div>
                                                <?php } ?>
                                                <div
                                                    class="alert alert-error error-msg ingredient_err_msg_contnr ir_p_5">
                                                    <p id="ingredient_id_err_msg"></p>
                                                </div>
                                            </div>

                                            <div class="col-md-3">
                                                <div class="hidden-xs hidden-sm">&nbsp;</div>
                                                <a class="btn btn-danger ir_bg_mt5 txt_52"  data-toggle="modal"
                                                    data-target="#noticeModal"><?php echo lang('read_me_first'); ?></a>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="hidden-lg hidden-sm">&nbsp;</div>

                                        </div>

                                        <div class="row">
                                            <div class="col-md-8">
                                                <div class="table-responsive" id="ingredient_consumption_table">
                                                    <table class="table">
                                                        <thead>
                                                            <tr>
                                                                <th><?php echo lang('sn'); ?></th>
                                                                <th><?php echo lang('ingredient'); ?></th>
                                                                <th><?php echo lang('consumption'); ?></th>
                                                                <th><?php echo lang('actions'); ?></th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>

                                                            <?php
                                        $i = 0;
                                        if ($food_menu_ingredients && !empty($food_menu_ingredients)) {
                                            foreach ($food_menu_ingredients as $fmi) {
                                                $i++;
                                                echo '<tr id="row_' . $i . '">' .
                                                '<td ><p>' . $i . '</p></td>' .
                                                '<td class="ir_w_23">' . (isset($fmi->ingredient_id) && $fmi->ingredient_id ? getIngredientNameById($fmi->ingredient_id) : '') . '</span></td>' .
                                                '<input type="hidden" id="ingredient_id_' . $i . '" name="ingredient_id[]" value="' . $fmi->ingredient_id . '"/>' .
                                                '<td><input type="text" tabindex="' . $i . '" id="consumption_' . $i . '" name="consumption[]" value="' . $fmi->consumption . '" onfocus="this.select();" class="form-control integerchk aligning" class="ir_w_85" placeholder="Consumption"/><span  class="label_aligning">' . (isset($fmi->ingredient_id) && $fmi->ingredient_id ? unitName(getUnitIdByIgId($fmi->ingredient_id)) : '') . '</span></td>' .
                                                '<td class="ir_w_17"><a class="btn btn-danger btn-xs txt_20" onclick="return deleter(' . $i . ',' . $fmi->ingredient_id . ');"><i class="fa fa-trash"></i> </a></td>' .
                                                '</tr>';
                                            }
                                        }
                                        ?>

                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>

                                        </div>

                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label><?php echo lang('sale_price'); ?> <span
                                                            class="required_star">*</span></label>
                                                    <input tabindex="4" class="form-control ir_w_100" type="text"
                                                           id="sale_price" name="sale_price"
                                                           class="form-control integerchk"
                                                           placeholder="<?php echo lang('sale_price'); ?>"
                                                           value="<?php echo escape_output($food_menu_details->sale_price) ?>">
                                                </div>
                                                <?php if (form_error('sale_price')) { ?>
                                                <div class="alert alert-error ir_p_5">
                                                    <p><?php echo form_error('sale_price'); ?></p>
                                                </div>
                                                <?php } ?>
                                                <div
                                                    class="alert alert-error error-msg sale_price_err_msg_contnr ir_p_5">
                                                    <p id="sale_price_err_msg"></p>
                                                </div>

                                            </div>

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label><?php echo lang('description'); ?></label>
                                                    <input tabindex="1" type="text" id="description" name="description"
                                                        class="form-control"
                                                        placeholder="<?php echo lang('description'); ?>"
                                                        value="<?php echo escape_output($food_menu_details->description) ?>">
                                                </div>
                                                <?php if (form_error('description')) { ?>
                                                <div class="alert alert-error ir_p_5">
                                                    <p><?php echo form_error('description'); ?></p>
                                                </div>
                                                <?php } ?>
                                                <div
                                                    class="alert alert-error error-msg description_err_msg_contnr ir_p_5">
                                                    <p id="description_err_msg"></p>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label><?php echo lang('photo'); ?></label><small>
                                                        <?php echo lang('photo_height_width'); ?></small>
                                                    <input tabindex="10" type="file" name="photo" id="photo">
                                                </div>
                                                <?php if (form_error('photo')) { ?>
                                                <div class="alert alert-error ir_p_5">
                                                    <p><?php echo form_error('photo'); ?></p>
                                                </div>
                                                <?php } ?>
                                                <input type="hidden" value="<?php echo escape_output($food_menu_details->photo); ?>"
                                                    name="photo">
                                                <?php if(!empty($food_menu_details->photo)){?>
                                                <img  class="img-responsive"
                                                    src="<?= base_url() . "images/" . $food_menu_details->photo ?>"
                                                    alt="Photo">
                                                <?php } ?>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label><?php echo lang('is_it_veg'); ?> ? <span
                                                            class="required_star">*</span></label>
                                                    <select tabindex="2" class="form-control select2 ir_w_100"
                                                        id="veg_item_id" name="veg_item">
                                                        <option
                                                            <?php if ($food_menu_details->veg_item == "Veg No") echo "selected" ?>
                                                            value="Veg No"><?php echo lang('no'); ?></option>
                                                        <option
                                                            <?php if ($food_menu_details->veg_item == "Veg Yes") echo "selected" ?>
                                                            value="Veg Yes"><?php echo lang('yes'); ?></option>
                                                    </select>
                                                </div>
                                                <?php if (form_error('veg_item_id')) { ?>
                                                <div class="alert alert-error ir_p_5">
                                                    <p><?php echo form_error('veg_item_id'); ?></p>
                                                </div>
                                                <?php } ?>
                                                <div class="alert alert-error error-msg veg_item_err_msg_contnr ir_p_5">
                                                    <p id="veg_item_id_err_msg"></p>
                                                </div>

                                            </div>

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label><?php echo lang('is_it_beverage'); ?> ? <span
                                                            class="required_star">*</span></label>
                                                    <select tabindex="2" class="w-100 form-control select2"
                                                        id="beverage_item" name="beverage_item">
                                                        <option
                                                            <?php if ($food_menu_details->beverage_item == "Bev No") echo "selected" ?>
                                                            value="Bev No"><?php echo lang('no'); ?></option>
                                                        <option
                                                            <?php if ($food_menu_details->beverage_item == "Bev Yes") echo "selected" ?>
                                                            value="Bev Yes"><?php echo lang('yes'); ?></option>

                                                    </select>
                                                </div>
                                                <?php if (form_error('beverage_item')) { ?>
                                                <div class="alert alert-error ir_p_5">
                                                    <p><?php echo form_error('beverage_item'); ?></p>
                                                </div>
                                                <?php } ?>
                                                <div
                                                    class="alert alert-error error-msg beverage_item_err_msg_contnr ir_p_5">
                                                    <p id="beverage_item_err_msg"></p>
                                                </div>

                                            </div>

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label><?php echo lang('is_it_bar'); ?> ? <span
                                                            class="required_star">*</span></label>
                                                    <select tabindex="2" class="form-control select2 ir_w_100"
                                                        id="bar_item" name="bar_item">
                                                        <option
                                                            <?php if ($food_menu_details->bar_item == "Bar No") echo "selected" ?>
                                                            value="Bar No"><?php echo lang('no'); ?></option>
                                                        <option
                                                            <?php if ($food_menu_details->bar_item == "Bar Yes") echo "selected" ?>
                                                            value="Bar Yes"><?php echo lang('yes'); ?></option>

                                                    </select>
                                                </div>
                                                <?php if (form_error('bar_item')) { ?>
                                                <div class="alert alert-error ir_p_5">
                                                    <p><?php echo form_error('bar_item'); ?></p>
                                                </div>
                                                <?php } ?>
                                                <div class="alert alert-error error-msg bar_item_err_msg_contnr ir_p_5">
                                                    <p id="bar_item_err_msg"></p>
                                                </div>

                                            </div>

                                        </div>

                                        <div class="row">
                                            <?php 
                            $tax_information = json_decode($food_menu_details->tax_information);
                                            //get company data
                                            $company = getCompanyInfo();
                                            $tax_setting = json_decode($company->tax_setting);
                        ?>
                                            <?php foreach($tax_setting as $tax_field){ ?>

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <?php 
                                        if(count($tax_information)>0){
                                            $check_old_arry = array();
                                            $counter = 1;
                                            foreach($tax_information as $single_tax){
                                                $check_old_arry[] = $single_tax->tax_field_name;
                                                if((isset($tax_field->tax) && $tax_field->tax?$tax_field->tax:'') == $single_tax->tax_field_name){
                                                    $counter++;
                                        ?>
                                                    <label><?php echo escape_output($tax_field->tax) ?></label>
                                                    <table class="ir_w_100">
                                                        <tr>
                                                            <td>
                                                                <input tabindex="1" type="hidden" name="tax_field_id[]"
                                                                    value="<?php echo escape_output((isset($single_tax->tax_field_id) && $single_tax->tax_field_id?$single_tax->tax_field_id:'')) ?>">
                                                                <input tabindex="1" type="hidden"
                                                                    name="tax_field_company_id[]"
                                                                    value="<?php echo escape_output($single_tax->tax_field_company_id) ?>">
                                                                <input tabindex="1" type="hidden"
                                                                    name="tax_field_name[]"
                                                                    value="<?php echo escape_output($single_tax->tax_field_name) ?>">
                                                                <input tabindex="1" type="text"
                                                                    name="tax_field_percentage[]"
                                                                    class="form-control integerchk" placeholder=""
                                                                    value="<?php  echo escape_output($single_tax->tax_field_percentage) ?>">
                                                            </td>
                                                            <td class="txt_27"> %</td>
                                                        </tr>
                                                    </table>
                                                    <?php   }
                                            }
                                            if (!in_array($tax_field->tax, $check_old_arry)):?>
                                                <label><?php echo escape_output($tax_field->tax) ?></label>
                                                <table class="ir_w_100">
                                                    <tr>
                                                        <td>
                                                            <input tabindex="1" type="hidden" name="tax_field_id[]"
                                                                   value="<?php echo escape_output((isset($tax_field->id) && $tax_field->id?$tax_field->id:'')) ?>">
                                                            <input tabindex="1" type="hidden"
                                                                   name="tax_field_company_id[]"
                                                                   value="<?php echo escape_output($company->id) ?>">
                                                            <input tabindex="1" type="hidden"
                                                                   name="tax_field_name[]"
                                                                   value="<?php echo escape_output($tax_field->tax) ?>">
                                                            <input tabindex="1" type="text"
                                                                   name="tax_field_percentage[]"
                                                                   class="form-control integerchk"
                                                                   placeholder="<?php echo escape_output($tax_field->tax) ?>"
                                                                   value="0">
                                                        </td>
                                                        <td class="txt_27"> %</td>
                                                    </tr>
                                                </table>
                                                    <?php
                                                endif;
                                        }else{
                                         
                                        ?>
                                                    <label><?php echo escape_output($tax_field->tax) ?></label>
                                                    <table class="ir_w_100">
                                                        <tr>
                                                            <td>
                                                                <input tabindex="1" type="hidden" name="tax_field_id[]"
                                                                    value="<?php echo escape_output((isset($tax_field->id) && $tax_field->id?$tax_field->id:'')) ?>">
                                                                <input tabindex="1" type="hidden"
                                                                    name="tax_field_company_id[]"
                                                                    value="<?php echo escape_output($company->id) ?>">
                                                                <input tabindex="1" type="hidden"
                                                                    name="tax_field_name[]"
                                                                    value="<?php echo escape_output($tax_field->tax) ?>">
                                                                <input tabindex="1" type="text"
                                                                    name="tax_field_percentage[]"
                                                                    class="form-control integerchk"
                                                                    placeholder="<?php echo escape_output($tax_field->tax) ?>"
                                                                    value="0">
                                                            </td>
                                                            <td class="txt_27"> %</td>
                                                        </tr>
                                                    </table>
                                                    <?php 
                                        }
                                    ?>



                                                </div>
                                            </div>
                                            <?php } ?>

                                        </div>

                                        <!-- /.box-body -->

                                        <div class="box-footer">
                                            <button type="submit" name="submit" value="submit"
                                                class="btn btn-primary"><?php echo lang('submit'); ?></button>
                                            <a href="<?php echo base_url() ?>foodMenu/foodMenus"><button type="button"
                                                    class="btn btn-primary"><?php echo lang('back'); ?></button></a>
                                        </div>
                                        <?php echo form_close(); ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal fade" id="noticeModal" tabindex="-1" role="dialog"
                            aria-labelledby="myModalLabel">
                            <div class="modal-dialog" role="noticeModal">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"
                                            aria-label="Close"><span aria-hidden="true"><i
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
                                            <div class="col-md-12">
                                                <p class="foodMenuCartInfo">
                                                    <a class="ir_font_bold"
                                                        href="https://www.convert-me.com/en/convert/" target="_blank">
                                                        <?php echo lang('click_here'); ?></a>
                                                    <?php echo lang('notice_text_2'); ?>
                                                    <br>
                                                    <br>
                                                    <?php echo lang('notice_text_3'); ?>
                                                    <br>
                                                    <span class="txt_17">
                                                        <?php echo lang('notice_text_4'); ?></span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="modal fade" id="photo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                            <div class="modal-dialog" role="ShortCut">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"
                                            aria-label="Close"><span aria-hidden="true"><i
                                                    class="fa fa-2x">×</i></span></button>
                                    </div>
                                    <div class="modal-body">
                                        <p class="text-center">
                                            <img class="img-responsive"
                                                src="<?= base_url() . "images" . $food_menu_details->photo ?>"
                                                alt="Photo">
                                        </p>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>