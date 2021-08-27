<link rel="stylesheet" href="<?= base_url('assets/') ?>buttonCSS/checkBotton.css">
<section class="content-header">
    <h1>
        <?php echo lang('assign_food_menu_modifier'); ?>
    </h1>
</section>

<section class="content">
    <div class="row">
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary">
                <!-- form start -->
                <?php echo form_open(base_url() . 'foodMenu/assignFoodMenuModifier/' . $encrypted_id, $arrayName = array('id' => 'food_menu_form', 'enctype' => 'multipart/form-data')) ?>

                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12">

                            <label class="container"> <?php echo lang('select_all'); ?>
                                <input type="checkbox" id="checkbox_userAll">
                                <span class="checkmark"></span>
                            </label>
                            <hr class="ir_m_p_0">
                            <?php
                            if (isset($modifiers)) {
                                foreach ($modifiers as $modifier) {

                                    $modifier_id_ = $modifier->id;
                                    //$checked='';
                                    if (!empty($food_menu_modifiers)) {
                                        foreach ($food_menu_modifiers as $fmm) {
                                            if (in_array($modifier_id_, $food_menu_modifiers)) {
                                                $checked = 'checked';
                                            } else {
                                                $checked = '';
                                            }
                                        }
                                    } else {
                                        $checked = '';
                                    }
                                    ?>
                            <label class="container"><?php echo escape_output($modifier->name); ?>
                                <input type="checkbox" class="checkbox_user" <?php echo escape_output($checked); ?>
                                    value="<?php echo escape_output($modifier->id); ?>" name="modifier_id[]"
                                    <?= set_checkbox('modifier_id[]', $modifier->id) ?>>
                                <span class="checkmark"></span>
                            </label>
                            <?php
                                }
                            }
                            ?>

                            <?php if (form_error('modifier_id')) { ?>
                            <div class="alert alert-error ir_p_5">
                                <span class="error_paragraph"><?php echo form_error('modifier_id'); ?></span>
                            </div>
                            <?php } ?>
                        </div>
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

</section>
<script src="<?php echo base_url(); ?>assets/js/assign_food_menu.js"></script>