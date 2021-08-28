<?php
$base_color = '';
?>
<script type="text/javascript" src="<?php echo base_url('assets/js/setting.js'); ?>"></script>
<?php
if ($this->session->flashdata('exception')) {

    echo '<section class="content-header"><div class="alert alert-success alert-dismissible"> 
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <p><i class="icon fa fa-check"></i>';
    echo $this->session->flashdata('exception');
    echo '</p></div></section>';
}
?>

<section class="content-header">
    <h1>
        <?php echo lang('Setting'); ?>
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
                $attributes = array('id' => 'restaurant_setting_form');
                echo form_open_multipart(base_url('setting/index/' . $encrypted_id),$attributes); ?>
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label><?php echo lang('business_name'); ?> <span class="required_star">*</span></label>
                                <input tabindex="1" autocomplete="off" type="text" id="business_name" name="business_name" class="form-control" placeholder="<?php echo lang('business_name'); ?>" value="<?php echo escape_output($outlet_information->business_name); ?>">
                            </div>
                            <?php if (form_error('business_name')) { ?>
                                <div class="txt_35 alert alert-error">
                                    <p><?php echo form_error('business_name'); ?></p>
                                </div>
                            <?php } ?>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="hidden" name="invoice_logo_p" value="<?php echo escape_output($outlet_information->invoice_logo)?>">
                                <label><?php echo lang('Invoice_Logo'); ?></label><a data-file_path="<?php echo base_url()?>images/<?php echo escape_output($outlet_information->invoice_logo); ?>"  data-id="1" class="btn btn-xs btn-primary pull-right show_preview" href="#"><?php echo lang('show'); ?></a>
                                <input type="file" id="logo" name="invoice_logo" class="form-control">
                            </div>
                            <?php if (form_error('invoice_logo')) { ?>
                                <div class="txt_35 alert alert-error">
                                    <p><?php echo form_error('invoice_logo'); ?></p>
                                </div>
                            <?php } ?>
                        </div>

                        <div class="col-md-3">

                            <div class="form-group">
                                <label><?php echo lang('Website'); ?></label>
                                <input tabindex="1" autocomplete="off" type="text" id="website" name="website" class="form-control" placeholder="<?php echo lang('Website'); ?>" value="<?= $outlet_information->website; ?>">
                            </div>
                            <?php if (form_error('website')) { ?>
                                <div class="txt_35 alert alert-error">
                                    <p><?php echo form_error('website'); ?></p>
                                </div>
                            <?php } ?>
                        </div>
                        <div class="clearfix"></div>

                        <div class="col-md-3">

                            <div class="form-group">
                                <label> <?php echo lang('date_format'); ?> <span class="required_star">*</span></label>
                                <select tabindex="2" class="form-control select2" name="date_format" id="date_format">
                                    <option value=""><?php echo lang('select'); ?></option>
                                    <option <?= isset($outlet_information) && $outlet_information->date_format == "d/m/Y" ? 'selected' : '' ?> selected value="d/m/Y">D/M/Y</option>
                                    <option <?= isset($outlet_information) && $outlet_information->date_format == "m/d/Y" ? 'selected' : '' ?>  value="m/d/Y">M/D/Y</option>
                                    <option <?= isset($outlet_information) && $outlet_information->date_format == "Y/m/d" ? 'selected' : '' ?>  value="Y/m/d">Y/M/D</option>
                                </select>
                            </div>
                            <?php if (form_error('date_format')) { ?>
                                <div class="txt_35 alert alert-error">
                                    <p><?php echo form_error('date_format'); ?></p>
                                </div>
                            <?php } ?>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label><?php echo lang('Time_Zone'); ?> <span class="required_star">*</span></label>
                                <select class="form-control select2" id="zone_name" name="zone_name">
                                    <option value=""><?php echo lang('select'); ?></option>
                                    <?php foreach ($zone_names as $zone_name) { ?>
                                        <option <?= isset($outlet_information) && $outlet_information->zone_name == $zone_name->zone_name ? 'selected' : ($zone_name->id==51?'selected':'') ?> value="<?= escape_output($zone_name->zone_name) ?>"><?= escape_output($zone_name->zone_name) ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                            <?php if (form_error('zone_name')) { ?>
                                <div class="txt_35 alert alert-error">
                                    <p><?php echo form_error('zone_name'); ?></p>
                                </div>
                            <?php } ?>

                        </div>
                        <div class="col-md-3">

                            <div class="form-group">
                                <label><?php echo lang('currency'); ?> <span class="required_star">*</span></label>
                                <input tabindex="1" autocomplete="off" type="text" name="currency" class="form-control" placeholder="<?php echo lang('currency'); ?>" value="<?php echo escape_output($outlet_information->currency); ?>">
                            </div>
                            <?php if (form_error('currency')) { ?>
                                <div class="txt_35 alert alert-error">
                                    <p><?php echo form_error('currency'); ?></p>
                                </div>
                            <?php } ?>

                        </div>

                        <div class="col-md-3 txt_11">

                            <div class="form-group">
                                <label> <?php echo lang('Currency_Position'); ?> <span class="required_star">*</span></label>
                                <select tabindex="2" class="form-control select2" name="currency_position" id="currency_position">
                                    <option <?= isset($outlet_information) && $outlet_information->date_format == "Before Amount" ? 'selected' : '' ?>  value="Before Amount">Antes de la cantidad</option>
                                    <option <?= isset($outlet_information) && $outlet_information->date_format == "After Amount" ? 'selected' : '' ?>  value="After Amount">Después de la cantidad</option>
                                </select>
                            </div>
                            <?php if (form_error('currency_position')) { ?>
                                <div class="txt_35 alert alert-error">
                                    <p><?php echo form_error('currency_position'); ?></p>
                                </div>
                            <?php } ?>
                        </div>
                        <div class="clearfix"></div>


                        <div class="col-md-3 txt_11">

                            <div class="form-group">
                                <label> <?php echo lang('Precision'); ?> <span class="required_star">*</span></label>
                                <select tabindex="2" class="form-control select2" name="precision" id="precision">
                                    <option <?= isset($outlet_information) && $outlet_information->precision == "2" ? 'selected' : '' ?>  value="2">2 Digitos</option>
                                    <option <?= isset($outlet_information) && $outlet_information->precision == "3" ? 'selected' : '' ?>  value="3">3 Digitos</option>
                                </select>
                            </div>
                            <?php if (form_error('precision')) { ?>
                                <div class="txt_35 alert alert-error">
                                    <p><?php echo form_error('precision'); ?></p>
                                </div>
                            <?php } ?>
                        </div>
                        <?php
                        $language_manifesto = $this->session->userdata('language_manifesto');
                        if(str_rot13($language_manifesto)!="eriutoeri"):
                        ?>
                        <div class="col-md-3">

                            <div class="form-group">
                                <label> <?php echo lang('Default_Waiter'); ?> <span class="required_star">*</span></label>
                                <select tabindex="2" class="form-control select2" name="default_waiter" id="default_waiter">
                                    <option value=""><?php echo lang('select'); ?></option>
                                    <?php
                                    foreach ($waiters as $value):
                                        if($value->designation=="Waiter"):
                                        ?>
                                        <option <?=($outlet_information->default_waiter==$value->id?'selected':($value->id==1?'selected':''))?>  value="<?=escape_output($value->id)?>"><?=escape_output($value->full_name)?></option>
                                        <?php
                                        endif;
                                    endforeach;
                                    ?>
                                </select>
                            </div>
                            <?php if (form_error('default_waiter')) { ?>
                                <div class="txt_35 alert alert-error">
                                    <p><?php echo form_error('default_waiter'); ?></p>
                                </div>
                            <?php } ?>
                        </div>
                        <?php
                        endif;
                        ?>
                        <div class="col-md-3">

                            <div class="form-group">
                                <label> <?php echo lang('Default_Customer'); ?><span class="required_star">*</span></label>
                                <select tabindex="2" class="form-control select2" name="default_customer" id="default_customer">
                                    <option value=""><?php echo lang('select'); ?></option>
                                    <?php
                                    foreach ($customers as $value1):
                                        ?>
                                        <option <?=($outlet_information->default_customer==$value1->id?'selected':'')?>  value="<?=escape_output($value1->id)?>"><?=escape_output($value1->name)?></option>
                                        <?php
                                    endforeach;
                                    ?>
                                </select>
                            </div>
                            <?php if (form_error('default_customer')) { ?>
                                <div class="txt_35 alert alert-error">
                                    <p><?php echo form_error('default_customer'); ?></p>
                                </div>
                            <?php } ?>
                        </div>


                        <div class="col-md-3">

                            <div class="form-group">
                                <label> <?php echo lang('Default_Payment_Method'); ?> <span class="required_star">*</span></label>
                                <select tabindex="2" class="form-control select2" name="default_payment" id="default_payment">
                                    <option value=""><?php echo lang('select'); ?></option>
                                    <?php
                                    foreach ($paymentMethods as $value):
                                        ?>
                                        <option <?=($outlet_information->default_payment==$value->id?'selected':($value->name=="Cash"?'selected':''))?>  value="<?=escape_output($value->id)?>"><?=escape_output($value->name)?></option>
                                        <?php
                                    endforeach;
                                    ?>
                                </select>
                            </div>
                            <?php if (form_error('default_payment')) { ?>
                                <div class="txt_35 alert alert-error">
                                    <p><?php echo form_error('default_payment'); ?></p>
                                </div>
                            <?php } ?>
                        </div>
                        <div class="clearfix"></div>

                        <div class="col-md-6">
                            <div class="form-group radio_button_problem">
                                <label><?php echo lang('print_format'); ?> <span class="required_star">*</span></label>
                                <div class="radio">
                                    <label>
                                        <input tabindex="5" autocomplete="off" type="radio" name="print_format" id="print_format_thermal" value="No Print"
                                            <?php
                                            if ($outlet_information->print_format == "No Print") {
                                                echo "checked";
                                            };
                                            ?>
                                        ><?php echo lang('No_Print'); ?> </label>

                                    <label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <input tabindex="5" autocomplete="off" type="radio" name="print_format" id="print_format_thermal" value="56mm"
                                            <?php
                                            if ($outlet_information->print_format == "56mm") {
                                                echo "checked";
                                            };
                                            ?>
                                        ><?php echo lang('56mm'); ?> </label>
                                    <label>

                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                        <input tabindex="5" autocomplete="off" type="radio" name="print_format" id="print_format_a4" value="80mm"
                                            <?php
                                            if ($outlet_information->print_format == "80mm") {
                                                echo "checked";
                                            };
                                            ?>
                                        ><?php echo lang('80mm'); ?>
                                    </label>
                                </div>
                            </div>
                            <?php if (form_error('print_format')) { ?>
                                <div class="txt_35 alert alert-error">
                                    <p><?php echo form_error('print_format'); ?></p>
                                </div>
                            <?php } ?>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group radio_button_problem">
                                <label><?php echo lang('pre_or_post_payment'); ?> <span class="required_star">*</span></label>
                                <div class="tooltip_custom"><i class="fa fa-question fa-lg form_question"></i>
                                    <span class="tooltiptext_custom"><?php echo lang('tooltip_txt_1'); ?></span>
                                </div>

                                <div class="radio">
                                    <label>
                                        <input tabindex="5" autocomplete="off" type="radio" name="pre_or_post_payment" id="pre_or_post_payment_post" value="Post Payment"
                                            <?php
                                            if ($outlet_information->pre_or_post_payment == "Post Payment") {
                                                echo "checked";
                                            };
                                            ?>
                                        ><?php echo lang('post_payment'); ?> </label>
                                    <label>

                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                        <input tabindex="5" autocomplete="off" type="radio" name="pre_or_post_payment" id="pre_or_post_payment_pre" value="Pre Payment"
                                            <?php
                                            if ($outlet_information->pre_or_post_payment == "Pre Payment") {
                                                echo "checked";
                                            };
                                            ?>
                                        ><?php echo lang('pre_payment'); ?>
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-4">
                               <div class="form-group">
                                    <label for="">Propina</label>
                                    <input type="number" min="0" max="100" name="propina" value="<?=@$outlet_information->propina?>" placeholder="10%" class="form-control" id="propina" />
                                </div>
                            </div>
                            
                            <?php if (form_error('pre_or_post_payment')) { ?>
                                <div class="txt_35 alert alert-error">
                                    <p><?php echo form_error('pre_or_post_payment'); ?></p>
                                </div>
                            <?php } ?>
                        </div>
                        <div class="clearfix"></div>
                        <div class="col-md-3">
                            <a target="_blank" class="btn btn-block btn-primary" href="<?php echo base_url(); ?>setting/tax"><?php echo lang('Tax_Setting'); ?></a>
                        </div>
                        <div class="col-md-3 txt_11">
                            <a target="_blank" class="btn btn-block btn-primary" href="<?php echo base_url(); ?>setting/smtpEmailSetting"><?php echo lang('SMTP_Email_Setting'); ?></a>
                        </div>
                        <div class="col-md-3 txt_11">
                            <a target="_blank" class="btn btn-block btn-primary" href="<?php echo base_url(); ?>setting/smsSetting"><?php echo lang('SMS_Setting'); ?></a>
                        </div>

                        <div class="col-md-3 txt_11">
                            <a target="_blank" class="btn btn-block btn-primary" href="<?php echo base_url(); ?>setting/whatsappSetting"><?php echo lang('WhatsApp_Setting'); ?></a>
                        </div>
                        <div class="clearfix"></div>
                        <div class="col-md-3 txt_11">
                            <a target="_blank" class="btn btn-block btn-primary" href="<?php echo base_url(); ?>setting/menuRearrange"><?php echo lang('Menu_Rearrange'); ?></a>
                        </div>
                        <div class="clearfix">&nbsp;</div>
                        <div class="col-md-3">
                            <a target="_blank" class="btn btn-block btn-primary" href="<?php echo base_url(); ?>Update/index"><?php echo lang('software_update'); ?></a>
                        </div>
                        
                        <br>
                    </div>

                    <div class="row">
                        <div class="col-md-6">

                            <div class="form-group">
                                <label><?php echo lang('invoice_footer'); ?></label>
                                <textarea id="invoice_footer" rows="6" name="invoice_footer" class="form-control" placeholder="<?php echo lang('invoice_footer'); ?>"><?php echo escape_output($outlet_information->invoice_footer); ?></textarea>
                            </div>
                            <?php if (form_error('invoice_footer')) { ?>
                                <div class="txt_35 alert alert-error">
                                    <p><?php echo form_error('invoice_footer'); ?></p>
                                </div>
                            <?php } ?>
                        </div>
                    </div>
                </div>
                <!-- /.box-body -->

                <div class="box-footer">
                    <button type="submit" name="submit" value="submit" class="btn btn-primary"><?php echo lang('submit'); ?></button>
                </div>
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>

    <div class="modal fade" id="logo_preview" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header txt-uh-25">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true"><i class="fa fa-times"></i></span></button>
                    <h4 class="modal-title" id="myModalLabel">
                        <?php echo lang('Invoice_Logo'); ?> </h4>
                </div>
                <div class="modal-body txt-uh-26">
                    <div class="row">
                        <div class="col-md-12" style="background-color: <?php echo escape_output($base_color)?>;text-align: center;padding: 10px;">
                            <img src="" id="show_id">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo lang('cancel'); ?></button>
                </div>
            </div>

        </div>
    </div>

</section>
