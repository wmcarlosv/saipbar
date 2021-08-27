<?php
if ($this->session->flashdata('exception')) {

    echo '<section class="content-header"><div class="alert alert-success alert-dismissible"> 
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <p><i class="icon fa fa-check"></i>';
    echo $this->session->flashdata('exception');
    echo '</p></div></section>';
}
?>
<?php
if ($this->session->flashdata('exception_1')) {

    echo '<section class="content-header"><div class="alert alert-danger alert-dismissible"> 
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <p><i class="icon fa fa-check"></i>';
    echo $this->session->flashdata('exception_1');
    echo '</p></div></section>';
}
?>
<script type="text/javascript" src="<?php echo base_url('assets/js/tax.js'); ?>"></script>
<section class="content-header">
    <h1>
        <?php echo lang('Tax_Setting'); ?>
    </h1>

</section>

<!-- Main content -->
<section class="content">
    <div class="row">

        <!-- left column -->
        <div class="col-md-12">
            <div class="box box-primary">
                <!-- /.box-header -->
                <!-- form start -->
                <?php
                $company_info = json_decode($company->smtp_details);
                ?>
                <?php echo form_open(base_url() . 'setting/tax/'.(isset($company) && $company->id?$company->id:''), $arrayName = array('id' => 'add_whitelabel','enctype'=>'multipart/form-data')) ?>
                <div class="box-body">
                    <div class="row">

                        <div class="col-md-6">
                            <div class="form-group radio_button_problem">
                                <label><?php echo lang('collect_tax'); ?> <span class="required_star">*</span></label>
                                <div class="radio">
                                    <label>
                                        <input tabindex="5" type="radio" name="collect_tax" id="collect_tax_yes" value="Yes"
                                            <?php
                                            if ($company->collect_tax == "Yes") {
                                                echo "checked";
                                            };
                                            ?>
                                        ><?php echo lang('yes'); ?> </label>
                                    <label>

                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                        <input tabindex="6" type="radio" name="collect_tax" id="collect_tax_no" value="No"
                                            <?php
                                            if ($company->collect_tax == "No" || ($company->collect_tax != "Yes" && $company->collect_tax != "No")) {
                                                echo "checked";
                                            };
                                            ?>
                                        ><?php echo lang('no'); ?>
                                    </label>
                                </div>
                            </div>
                            <?php if (form_error('collect_tax')) { ?>
                                <div class="txt_35 alert alert-error">
                                    <p><?php echo form_error('collect_tax'); ?></p>
                                </div>
                            <?php } ?>


                        </div>

                    </div>

                    <div id="tax_yes_section" style="display:<?php if($company->collect_tax=="Yes"){echo "block;";}else{echo "none;";}?>">
                        <div class="row">
                            <div class="col-md-6">
                                <button id="show_sample_invoice_with_tax" type="button" class="btn btn-primary" data-toggle="modal" data-target="#show_sample_invoice_with_tax_modal"><?php echo lang('show_invoice_sample'); ?></button>
                            </div>
                        </div>
                        <br>

                        <div class="row">
                            <div class="col-md-6">

                                <div class="form-group">
                                    <label><?php echo lang('my_tax_title'); ?> <span class="required_star">*</span></label>
                                    <input tabindex="1" type="text" id="tax_title" name="tax_title" class="form-control" placeholder="<?php echo lang('my_tax_title'); ?>" value="<?php echo escape_output($company->tax_title); ?>">
                                </div>
                                <?php if (form_error('tax_title')) { ?>
                                    <div class="txt_35 alert alert-error">
                                        <p><?php echo form_error('tax_title'); ?></p>
                                    </div>
                                <?php } ?>
                                <div class="alert alert-error txt_35 txt_11" id="tax_title_error">
                                    <p><?php echo lang('tooltip_txt_2'); ?></p>
                                </div>
                                <button id="show_how_tax_title_works" type="button" class="btn btn-primary" data-toggle="modal" data-target="#show_how_tax_title_works_modal"><?php echo lang('how_tax_title_works'); ?></button>


                            </div>
                            <div class="col-md-6">

                                <div class="form-group">
                                    <label><?php echo lang('tax_registration_no'); ?> <span class="required_star">*</span></label>
                                    <input tabindex="1" type="text" id="tax_registration_no" name="tax_registration_no" class="form-control" placeholder="<?php echo lang('tax_registration_no'); ?>" value="<?php echo escape_output($company->tax_registration_no); ?>">
                                </div>
                                <?php if (form_error('tax_registration_no')) { ?>
                                    <div class="txt_35 alert alert-error">
                                        <p><?php echo form_error('tax_registration_no'); ?></p>
                                    </div>
                                <?php } ?>
                                <div class="alert alert-error txt_35 txt_11" id="tax_registration_no_error">
                                    <p><?php echo lang('tooltip_txt_3'); ?></p>
                                </div>

                            </div>


                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group radio_button_problem">
                                    <label><?php echo lang('tax_is_gst'); ?> <span class="required_star">*</span></label>
                                    <div class="radio">
                                        <label>
                                            <input tabindex="5" type="radio" name="tax_is_gst" id="tax_is_gst_yes" value="Yes"
                                                <?php
                                                if ($company->tax_is_gst == "Yes") {
                                                    echo "checked";
                                                };
                                                ?>
                                            ><?php echo lang('yes'); ?> </label>
                                        <label>

                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                            <input tabindex="6" type="radio" name="tax_is_gst" id="tax_is_gst_no" value="No"
                                                <?php
                                                if ($company->tax_is_gst == "No" || ($company->tax_is_gst != "Yes" && $company->tax_is_gst != "No")) {
                                                    echo "checked";
                                                };
                                                ?>
                                            ><?php echo lang('no'); ?>
                                        </label>
                                    </div>
                                </div>
                                <?php if (form_error('tax_is_gst')) { ?>
                                    <div class="txt_35 alert alert-error">
                                        <p><?php echo form_error('tax_is_gst'); ?></p>
                                    </div>
                                <?php } ?>
                                <button id="what_will_happen_if_i_say_yes" type="button" class="btn btn-primary" data-toggle="modal" data-target="#what_will_happen_if_i_say_yes_modal"><?php echo lang('if_i_say_yes'); ?></button>

                            </div>
                        </div>
                        <div id="gst_yes_section" style="display:<?php if($company->tax_is_gst=="Yes"){echo "block;";}else{echo "none;";} ?>">
                            <div class="row">
                                <div class="col-md-6">

                                    <div class="form-group">
                                        <label><?php echo lang('state_code'); ?> <span class="required_star">*</span></label>
                                        <input tabindex="1" type="text" id="state_code" name="state_code" class="form-control" placeholder="<?php echo lang('state_code'); ?>" value="<?php echo escape_output($company->state_code); ?>">
                                    </div>
                                    <?php if (form_error('state_code')) { ?>
                                        <div class="txt_35 alert alert-error">
                                            <p><?php echo form_error('state_code'); ?></p>
                                        </div>
                                    <?php } ?>
                                    <div class="alert alert-error txt_35 txt_11"  id="state_code_error">
                                        <p><?php echo lang('tooltip_txt_4'); ?></p>
                                    </div>

                                </div>


                            </div>
                        </div>
                        <br>

                        <div class="row">
                            <div class="col-md-6">

                                <div class="form-group">
                                    <label><?php echo lang('my_tax_fields');?> <span class="required_star">*</span></label>
                                    <table id="datatable" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                            <th class="ir_w_1"><?php echo lang('sn'); ?></th>
                                            <th class="ir_w_20"><?php echo lang('name'); ?></th>
                                            <th class="ir_w_20"><?php echo lang('Rate'); ?></th>
                                            <th class="ir_w_1"><?php echo lang('actions'); ?></th>
                                        </tr>
                                        </thead>
                                        <tbody id="tax_table_body">
                                        <?php
                                        $new_row_number = 1;
                                        $show_tax_row = '';
                                        $tax_setting = json_decode($company->tax_setting);

                                        if(isset($tax_setting) && count($tax_setting)>0){
                                            foreach($tax_setting as $key=>$single_tax){
                                                $show_tax_row .= '<tr class="tax_single_row" id="tax_row_'.$new_row_number.'">';
                                                $show_tax_row .= '<td>'.$new_row_number.'</td>';
                                                $show_tax_row .= '<td><input type="hidden" name="p_tax_id[]" value="'.(isset($single_tax->id) && $single_tax->id?$single_tax->id:'').'"><input type="text" name="taxes[]" class="form-control" value="'.$single_tax->tax.'"/></td>';
                                                $show_tax_row .= '<td><input type="text" onfocus="select()" name="tax_rate[]" class="form-control integerchk" value="'.$single_tax->tax_rate.'"/></td>';
                                                $show_tax_row .= '<td class="txt_51"><span class="remove_this_tax_row txt_25" id="remove_this_tax_row_'.$new_row_number.'" ><i class="color_red fa fa-trash"></i> </span></td>';
                                                $show_tax_row .= '</tr>';
                                                $new_row_number++;
                                            }
                                        }
                                        //This variable could not be escaped because this is html content
                                        echo $show_tax_row;
                                        ?>
                                        </tbody>
                                    </table>
                                    <button id="add_tax" class="btn btn-primary" type="button"><?php echo lang('add_more'); ?></button>
                                </div>
                                <?php if (form_error('taxes[]')) { ?>
                                    <div class="txt_35 alert alert-error">
                                        <p><?php echo form_error('taxes[]'); ?></p>
                                    </div>
                                <?php } ?>
                                <button id="show_how_tax_fields_work" type="button" class="btn btn-primary" data-toggle="modal" data-target="#show_how_tax_fields_work_modal"><?php echo lang('how_tax_fields_work'); ?></button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="box-footer">
                    <button type="submit" name="submit" value="submit" class="btn btn-primary"><?php echo lang('submit'); ?></button>
                    <a href="<?php echo base_url() ?>setting"><button type="button" class="btn btn-primary"><?php echo lang('back'); ?></button></a>
                </div>
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</section>


<!-- Modal -->
<div id="show_sample_invoice_with_tax_modal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title"><?php echo lang('Sample_Invoice'); ?></h4>
            </div>
            <div class="modal-body">
                <p class="text-center">
                    <img src="<?php echo base_url()?>images/GST Invoice.jpg">
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo lang('close'); ?></button>
            </div>
        </div>

    </div>
</div>

<!-- Modal -->
<div id="show_how_tax_title_works_modal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title"><?php echo lang('how_tax_title_works'); ?></h4>
            </div>
            <div class="modal-body">
                <p>
                    <?php echo lang('tooltip_txt_5'); ?><br>
                    <?php echo lang('tooltip_txt_6'); ?><br>
                    <?php echo lang('tooltip_txt_7'); ?><br>
                    <?php echo lang('tooltip_txt_8'); ?><br>
                    <?php echo lang('tooltip_txt_9'); ?><br>
                    <?php echo lang('tooltip_txt_10'); ?><br>
                    <?php echo lang('tooltip_txt_11'); ?><br>
                    <?php echo lang('tooltip_txt_12'); ?><br>
                    <?php echo lang('tooltip_txt_13'); ?><br>
                    <?php echo lang('tooltip_txt_14'); ?><br>
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo lang('close'); ?></button>
            </div>
        </div>

    </div>
</div>

<!-- Modal -->
<div id="what_will_happen_if_i_say_yes_modal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title"><?php echo lang('tooltip_txt_15'); ?></h4>
            </div>
            <div class="modal-body">
                <p>
                    <?php echo lang('tooltip_txt_16'); ?><br>
                    <?php echo lang('tooltip_txt_17'); ?><br>
                    <?php echo lang('tooltip_txt_18'); ?><br>
                    <?php echo lang('tooltip_txt_19'); ?><br>
                    <?php echo lang('tooltip_txt_20'); ?><br>
                    <?php echo lang('tooltip_txt_21'); ?><br>

                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo lang('close'); ?></button>
            </div>
        </div>

    </div>
</div>

<!-- Modal -->
<div id="show_how_tax_fields_work_modal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title"><?php echo lang('tooltip_txt_22'); ?></h4>
            </div>
            <div class="modal-body">
                <p>
                    <?php echo lang('tooltip_txt_23'); ?> <br>
                    <?php echo lang('tooltip_txt_24'); ?> <br>

                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo lang('close'); ?></button>
            </div>
        </div>

    </div>
</div>