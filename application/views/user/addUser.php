<link rel="stylesheet" href="<?= base_url('assets/') ?>buttonCSS/checkBotton.css">
<section class="content-header">
    <h1>
        <?php echo lang('add_user'); ?>
    </h1>
</section>

<section class="content">
    <div class="row">
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary">
                <!-- form start -->
                <?php echo form_open(base_url() . 'User/addEditUser', $arrayName = array('id' => 'user_form')) ?>
                <div class="box-body">
                    <div class="row">

                        <div class="col-md-4">

                            <div class="form-group">
                                <label><?php echo lang('name'); ?> <span class="required_star">*</span></label>
                                <input tabindex="1" type="text" name="full_name" class="form-control"
                                    placeholder="<?php echo lang('name'); ?>"
                                    value="<?php echo set_value('full_name'); ?>">
                            </div>
                            <?php if (form_error('full_name')) { ?>
                            <div class="alert alert-error ir_p_5">
                                <span class="error_paragraph"><?php echo form_error('full_name'); ?></span>
                            </div>
                            <?php } ?>
                        </div>


                        <div class="col-md-4">

                            <div class="form-group">
                                <label><?php echo lang('email_address'); ?> <span class="required_star">*</span></label>
                                <input tabindex="3" type="text" name="email_address" class="form-control"
                                    placeholder="<?php echo lang('email_address'); ?>"
                                    value="<?php echo set_value('email_address'); ?>">
                            </div>
                            <?php if (form_error('email_address')) { ?>
                            <div class="alert alert-error ir_p_5">
                                <span class="error_paragraph"><?php echo form_error('email_address'); ?></span>
                            </div>
                            <?php } ?>

                        </div>

                        <div class="col-md-4">

                            <div class="form-group">
                                <label><?php echo lang('phone'); ?> <span class="required_star">*</span></label>
                                <input tabindex="2" type="text" name="phone" class="form-control integerchk"
                                    placeholder="<?php echo lang('phone'); ?>"
                                    value="<?php echo set_value('phone'); ?>">
                            </div>
                            <?php if (form_error('phone')) { ?>
                            <div class="alert alert-error ir_p_5">
                                <span class="error_paragraph"><?php echo form_error('phone'); ?></span>
                            </div>
                            <?php } ?>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label><?php echo lang('designation'); ?><span class="required_star"> *</span>
                                    <small><?php echo lang('enter_waiter'); ?></small></label>
                                <input tabindex="2" type="text" name="designation" class="form-control"
                                    placeholder="<?php echo lang('designation'); ?>"
                                    value="<?php echo set_value('designation'); ?>">
                            </div>
                            <?php if (form_error('designation')) { ?>
                            <div class="alert alert-error ir_p_5">
                                <span class="error_paragraph"><?php echo form_error('designation'); ?></span>
                            </div>
                            <?php } ?>
                        </div>
                        <?php
                        $language_manifesto = $this->session->userdata('language_manifesto');
                        if(str_rot13($language_manifesto)=="eriutoeri"):
                        ?>
                        <div class="col-md-8">

                            <div class="form-group">
                                <label><?php echo lang('outlets'); ?><span class="required_star"> *</span></label>
                                <br>
                                <?php
                                foreach ($outlets as $value) {
                                ?>
                                    <label class="txt_34"> <input class="outlet_class" type="checkbox" name="outlets[]" <?php echo set_checkbox('outlets[]', $value->id); ?> value="<?php echo escape_output($value->id) ?>"> <?php echo escape_output($value->outlet_name) ?> </label>
                                <?php } ?>
                                <div class="alert alert-error ir_p_5 outlet_error txt_11">
                                    <span class="error_paragraph"><?php echo lang('Please_select_at_least_one_outlet'); ?></span>
                                </div>
                            </div>
                        </div>
                            <?php
                        endif;
                        ?>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group radio_button_problem">
                                <label><?php echo lang('will_login'); ?> <span class="required_star">*</span></label>
                                <div class="radio">
                                    <label>
                                        <input tabindex="5" type="radio" name="will_login" id="will_login_yes"
                                            value="Yes">Yes </label>
                                    <label>

                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                        <input tabindex="6" type="radio" name="will_login" id="will_login_no" value="No"
                                            checked>No
                                    </label>
                                </div>
                            </div>
                            <?php if (form_error('will_login')) { ?>
                            <div class="alert alert-error ir_p_5">
                                <p><?php echo form_error('will_login'); ?></p>
                            </div>
                            <?php } ?>
                        </div>
                    </div>
                    <div id="will_login_section" class="txt_11">
                        <div class="row">
                            <div class="col-md-4">

                                <div class="form-group">
                                    <label><?php echo lang('password'); ?> <span class="required_star">*</span></label>
                                    <input tabindex="5" type="text" name="password" class="form-control"
                                        placeholder="<?php echo lang('password'); ?>"
                                        value="<?php echo set_value('password'); ?>">
                                </div>
                                <?php if (form_error('password')) { ?>
                                <div class="alert alert-error ir_p_5">
                                    <span class="error_paragraph"><?php echo form_error('password'); ?></span>
                                </div>
                                <?php } ?>
                            </div>

                            <div class="col-md-4">

                                <div class="form-group">
                                    <label><?php echo lang('confirm_password'); ?> <span
                                            class="required_star">*</span></label>
                                    <input tabindex="4" type="text" name="confirm_password" class="form-control"
                                        placeholder="<?php echo lang('confirm_password'); ?>"
                                        value="<?php echo set_value('confirm_password'); ?>">
                                </div>
                                <?php if (form_error('confirm_password')) { ?>
                                <div class="alert alert-error ir_p_5">
                                    <span class="error_paragraph"><?php echo form_error('confirm_password'); ?></span>
                                </div>
                                <?php } ?>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label><?php echo lang('menu_access'); ?> <span
                                            class="required_star">*</span></label>
                                </div>
                                <label class="container"> <?php echo lang('select_all'); ?>
                                    <input type="checkbox" id="checkbox_userAll">
                                    <span class="checkmark"></span>
                                </label>
                                <hr class="ir_m_p_0">
                                <?php
                            if (isset($user_menus)) {
                                foreach ($user_menus as $value) {
                                    $n=str_replace(" ","_",$value->label);
                                    $m=strtolower($n);
                                    ?>
                                <label class="container"><?= lang($m) ?>
                                    <input type="checkbox" class="checkbox_user" value="<?php echo escape_output($value->id); ?>"
                                        name="menu_id[]" <?= set_checkbox('menu_id[]', $value->id) ?>>
                                    <span class="checkmark"></span>
                                </label>
                                <?php
                                }
                            }
                            ?>

                                <?php if (form_error('menu_id')) { ?>
                                <div class="alert alert-error ir_p_5">
                                    <span class="error_paragraph"><?php echo form_error('menu_id'); ?></span>
                                </div>
                                <?php } ?>
                            </div>
                        </div>
                    </div>
                    <!-- /.box-body -->

                    <div class="box-footer">
                        <button type="submit" name="submit" value="submit"
                            class="btn btn-primary"><?php echo lang('submit'); ?></button>
                        <a href="<?php echo base_url() ?>User/users"><button type="button"
                                class="btn btn-primary"><?php echo lang('back'); ?></button></a>
                    </div>
                    <?php echo form_close(); ?>
                </div>
            </div>
        </div>
</section>

<script type="text/javascript" src="<?php echo base_url('assets/js/add_user.js'); ?>"></script>
