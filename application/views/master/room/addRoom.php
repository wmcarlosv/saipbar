<section class="content-header">
    <h1>
        <?php echo lang('add_room'); ?>
    </h1>
</section>

<section class="content">
    <div class="row">
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary">
                <!-- form start -->
                <?php echo form_open(base_url('room/addEditRoom')); ?>
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-4">

                            <div class="form-group">
                                <label><?php echo lang('room_name'); ?> <span class="required_star">*</span></label>
                                <input tabindex="1" type="text" name="name" class="form-control"
                                    placeholder="<?php echo lang('room_name'); ?>"
                                    value="<?php echo set_value('name'); ?>">
                            </div>
                            <?php if (form_error('name')) { ?>
                            <div class="alert alert-error ir_p_5">
                                <p><?php echo form_error('name'); ?></p>
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
                                   <option value="<?php echo escape_output($outlet->id)?>"><?php echo escape_output($outlet->outlet_name)?></option>
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

                    </div>

                </div>
                <!-- /.box-body -->

                <div class="box-footer">
                    <button type="submit" name="submit" value="submit"
                        class="btn btn-primary"><?php echo lang('submit'); ?></button>
                    <a href="<?php echo base_url() ?>room/rooms"><button type="button"
                            class="btn btn-primary"><?php echo lang('back'); ?></button></a>
                </div>
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</section>