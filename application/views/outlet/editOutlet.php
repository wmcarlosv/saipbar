<link rel="stylesheet" href="<?= base_url('assets/') ?>css/custom_check_box.css">
<?php
if ($this->session->flashdata('exception')) {

    echo '<section class="content-header"><div class="alert alert-success alert-dismissible"> 
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <p><i class="icon fa fa-check"></i>';
    echo escape_output($this->session->flashdata('exception'));
    echo '</p></div></section>';
}
?>
<section class="content-header">
    <h1>
        <?php
        $data_c = getLanguageManifesto();
        if(str_rot13($data_c[0])=="eriutoeri"){
            echo lang('edit_outlet');
        }else if(str_rot13($data_c[0])=="fgjgldkfg"){
            echo lang('outlet_setting');
        }
        ?>
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
                <?php echo form_open(base_url('Outlet/addEditOutlet/' . $encrypted_id)); ?>
                <div class="box-body">
                    <div class="row">
                        <?php
                        if(str_rot13($data_c[0])=="eriutoeri") {
                            ?>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><?php echo lang('outlet_code'); ?> <span
                                                class="required_star">*</span></label>
                                    <input tabindex="1" autocomplete="off" type="text" name="outlet_code"
                                           class="form-control" onfocus="select();"
                                           placeholder="<?php echo lang('outlet_code'); ?>"
                                           value="<?php echo escape_output($outlet_information->outlet_code) ?>"/>
                                </div>
                                <?php if (form_error('outlet_code')) { ?>
                                    <div class="txt_35 alert alert-error">
                                        <p><?php echo form_error('outlet_code'); ?></p>
                                    </div>
                                <?php } ?>
                            </div>
                            <?php
                        }
                        ?>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label><?php echo lang('outlet_name'); ?> <span class="required_star">*</span></label>
                                <input tabindex="1" autocomplete="off" type="text" name="outlet_name" class="form-control" placeholder="<?php echo lang('outlet_name'); ?>" value="<?php echo escape_output($outlet_information->outlet_name); ?>">
                            </div>
                            <?php if (form_error('outlet_name')) { ?>
                                <div class="txt_35 alert alert-error">
                                    <p><?php echo form_error('outlet_name'); ?></p>
                                </div>
                            <?php } ?>

                        </div>
                        <div class="clearfix"></div>
                        <div class="col-md-6">

                            <div class="form-group">
                                <label><?php echo lang('phone'); ?> <span class="required_star">*</span></label>
                                <input tabindex="4" autocomplete="off" type="text" name="phone" class="form-control" placeholder="<?php echo lang('phone'); ?>" value="<?php echo escape_output($outlet_information->phone); ?>">
                            </div>
                            <?php if (form_error('phone')) { ?>
                                <div class="txt_35 alert alert-error">
                                    <p><?php echo form_error('phone'); ?></p>
                                </div>
                            <?php } ?>

                        </div>
                        <div class="col-md-6">

                            <div class="form-group">
                                <label><?php echo lang('email'); ?> </label>
                                <input tabindex="4" autocomplete="off" type="text" name="email" class="form-control" placeholder="<?php echo lang('email'); ?>" value="<?php echo escape_output($outlet_information->email); ?>" />
                            </div>
                            <?php if (form_error('email')) { ?>
                                <div class="txt_35 alert alert-error">
                                    <p><?php echo form_error('email'); ?></p>
                                </div>
                            <?php } ?>

                        </div>
                        <div class="clearfix"></div>
                        <?php
                        $language_manifesto = $this->session->userdata('language_manifesto');
                        if(str_rot13($language_manifesto)=="eriutoeri"):
                            ?>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label><?php echo lang('Active_Status'); ?> <span class="required_star">*</span></label>
                                <select class="form-control select2" name="active_status" id="active_status">
                                    <option <?php echo isset($outlet_information->active_status) && $outlet_information->active_status=="active"?'selected':''?> value="active"><?php echo lang('Active'); ?></option>
                                    <option <?php echo isset($outlet_information->active_status) && $outlet_information->active_status=="inactive"?'selected':''?> value="inactive"><?php echo lang('Inactive'); ?></option>
                                </select>
                            </div>
                            <?php if (form_error('active_status')) { ?>
                                <div class="txt_35 alert alert-error">
                                    <p><?php echo form_error('active_status'); ?></p>
                                </div>
                            <?php } ?>
                        </div>

                            <div class="col-md-6">

                                <div class="form-group">
                                    <label> <?php echo lang('Default_Waiter'); ?></label>
                                    <select tabindex="2" class="form-control select2" name="default_waiter" id="default_waiter">
                                        <option value=""><?php echo lang('select'); ?></option>
                                        <?php
                                        foreach ($waiters as $value):
                                            if($value->designation=="Waiter"):
                                                ?>
                                                <option <?=($outlet_information->default_waiter==$value->id?'selected':'')?>  value="<?=$value->id?>"><?=$value->full_name?></option>
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
                        <div class="clearfix"></div>
                        <div class="col-md-6">

                            <div class="form-group">
                                <label><?php echo lang('address'); ?> <span class="required_star">*</span></label>
                                <textarea tabindex="3" autocomplete="off" name="address" class="form-control" placeholder="<?php echo lang('address'); ?>"><?php echo escape_output($outlet_information->address); ?></textarea>
                            </div>
                            <?php if (form_error('address')) { ?>
                                <div class="txt_35 alert alert-error">
                                    <p><?php echo form_error('address'); ?></p>
                                </div>
                            <?php } ?>

                        </div>

                    </div>

                    <?php
                    $language_manifesto = $this->session->userdata('language_manifesto');
                    if(str_rot13($language_manifesto)=="eriutoeri"):
                    ?>
                    <div class="clearfix"></div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label><?php echo lang('tooltip_txt_26'); ?> </label>


                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <div class="col-md-3">
                        <label class="container txt_48"> <?php echo lang('select_all'); ?>
                            <input class="checkbox_userAll" type="checkbox" id="checkbox_userAll">
                            <span class="checkmark"></span>
                        </label>
                    </div>
                    <p>&nbsp;</p>
                    <div class="clearfix"></div>

                    <?php
                    foreach ($items as $item) {
                        $checked = '';
                        $new_id = $item->id;
                        if (isset($selected_modules_arr)):
                            foreach ($selected_modules_arr as $uma) {
                                if (in_array($new_id, $selected_modules_arr)) {
                                    $checked = 'checked';
                                } else {
                                    $checked = '';
                                }
                            }
                        endif;
                        ?>
                        <div class="col-md-4">
                            <label class="container txt_47"> <?="<b>".$item->name."</b>"?>
                                <input class="checkbox_user child_class" <?=$checked?> data-name="<?php echo str_replace(' ', '_', $item->name)?>" value="<?=$item->id?>" type="checkbox" name="item_check[]">
                                <span class="checkmark"></span>
                            </label>
                        </div>
                        <?php
                    }
                    ?>

                    <?php
                    endif;
                    ?>
                </div>
                <!-- /.box-body -->
                <?php
                $data_c = getLanguageManifesto();
                ?>
                <div class="box-footer">
                    <button type="submit" name="submit" value="submit" class="btn btn-primary"><?php echo lang('submit'); ?></button>
                    <a href="<?php echo base_url() ?><?php echo escape_output($data_c[1])?>"><button type="button" class="btn btn-primary"><?php echo lang('back'); ?></button></a>
                </div>
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</section>
<script src="<?php echo base_url(); ?>assets/js/edit_outlet.js"></script>