<section class="content-header">
    <h1>
        <?php echo lang('edit_table'); ?>
    </h1>
</section>

<section class="content">
    <div class="row">
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary">
                <!-- /.box-header -->
                <!-- form start -->
                <?php echo form_open(base_url('table/addEditTable/' . $encrypted_id)); ?>
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-4">

                            <div class="form-group">
                                <label><?php echo lang('table_name'); ?> <span class="required_star">*</span></label>
                                <input tabindex="1" type="text" name="name" class="form-control"
                                    placeholder="<?php echo lang('table_name'); ?>"
                                    value="<?php echo escape_output($table_information->name) ?>">
                            </div>
                            <?php if (form_error('name')) { ?>
                            <div class="alert alert-error ir_p_5">
                                <p><?php echo form_error('name'); ?></p>
                            </div>
                            <?php } ?>

                        </div>
                        <div class="col-md-8">

                            <div class="form-group">
                                <label><?php echo lang('seat_capacity'); ?></label>
                                <input tabindex="2" type="text" name="sit_capacity" class="form-control integerchk"
                                    placeholder="<?php echo lang('seat_capacity'); ?>"
                                    value="<?php echo escape_output($table_information->sit_capacity) ?>">
                            </div>
                            <?php if (form_error('sit_capacity')) { ?>
                            <div class="alert alert-error ir_p_5">
                                <p><?php echo form_error('sit_capacity'); ?></p>
                            </div>
                            <?php } ?>

                        </div>
                        <!--<div class="col-md-4">

                            <div class="form-group">
                                <label><?php echo lang('position'); ?> <span class="required_star">*</span></label>
                                <input tabindex="1" type="text" name="position" class="form-control"
                                       placeholder="<?php echo lang('position'); ?>"
                                       value="<?php echo escape_output($table_information->position) ?>">
                            </div>
                            <?php if (form_error('position')) { ?>
                                <div class="alert alert-error ir_p_5">
                                    <p><?php echo form_error('position'); ?></p>
                                </div>
                            <?php } ?>

                        </div>-->
                        <div class="clearfix"></div>
                        <div class="col-md-4">

                            <div class="form-group">
                                <label><?php echo lang('description'); ?></label>
                                <input tabindex="2" type="text" name="description" class="form-control"
                                       placeholder="<?php echo lang('description'); ?>"
                                       value="<?php echo escape_output($table_information->description) ?>">
                            </div>
                            <?php if (form_error('description')) { ?>
                                <div class="alert alert-error ir_p_5">
                                    <p><?php echo form_error('description'); ?></p>
                                </div>
                            <?php } ?>

                        </div>

                        <div class="col-md-4">

                            <div class="form-group">
                                <label><?php echo lang('outlet'); ?></label>
                                <select class="form-control select2" name="outlet">
                                    <?php
                                    foreach ($outlets as $outlet):
                                        ?>
                                        <option <?=isset($table_information->outlet_id) && $table_information->outlet_id == $outlet->id?'selected':''?> value="<?php echo escape_output($outlet->id)?>"><?php echo escape_output($outlet->outlet_name)?></option>
                                        <?php
                                    endforeach;
                                    ?>
                                </select>
                            </div>
                            <?php if (form_error('outlet')) { ?>
                                <div class="alert alert-error ir_p_5">
                                    <p><?php echo form_error('outlet'); ?></p>
                                </div>
                            <?php } ?>
                        </div>

                        <div class="col-md-4">

                            <div class="form-group">
                                <label><?php echo lang('room'); ?></label>
                                <select class="form-control select2" name="rooms_id">
                                    <?php
                                    foreach ($rooms as $room):
                                        ?>
                                        <option <?=isset($table_information->rooms_id) && $table_information->rooms_id == $room->id?'selected':''?> value="<?php echo escape_output($room->id)?>"><?php echo escape_output($room->name)?></option>
                                        <?php
                                    endforeach;
                                    ?>
                                </select>
                            </div>
                            <?php if (form_error('room')) { ?>
                                <div class="alert alert-error ir_p_5">
                                    <p><?php echo form_error('room'); ?></p>
                                </div>
                            <?php } ?>
                        </div>



                    </div>

                </div>
                <div class="box-footer">
                    <button type="submit" name="submit" value="submit"
                        class="btn btn-primary"><?php echo lang('submit'); ?></button>
                    <a href="<?php echo base_url() ?>table/tables"><button type="button"
                            class="btn btn-primary"><?php echo lang('back'); ?></button></a>
                </div>
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</section>