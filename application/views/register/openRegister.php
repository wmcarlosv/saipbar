<?php
if ($this->session->flashdata('exception_3')) {

    echo '<section class="content-header"><div class="alert alert-danger alert-dismissible"> 
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <p><i class="icon fa fa-check"></i>';
    echo escape_output($this->session->flashdata('exception_3'));
    echo '</p></div></section>';
}
?>


<section class="content-header">
    <h1>
        <?php echo lang('open_register'); ?>
    </h1>
</section>

<section class="content">
    <div class="row">
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary">
                <!-- form start -->
                <?php echo form_open(base_url('Register/addBalance')); ?>
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-6">

                            <div class="form-group">
                                <label><?php echo lang('opening_balance'); ?> <span
                                        class="required_star">*</span></label>
                                <input tabindex="1" type="text" name="opening_balance" class="form-control"
                                    placeholder="<?php echo lang('opening_balance'); ?>"
                                    value="<?php echo set_value('opening_balance'); ?>">
                            </div>
                            <?php if (form_error('opening_balance')) { ?>
                            <div class="alert alert-error ir_p_5">
                                <p><?php echo form_error('opening_balance'); ?></p>
                            </div>
                            <?php } ?>
                        </div>
                        <div class="col-md-6">
                        </div>

                    </div>
                </div>
                <!-- /.box-body -->

                <div class="box-footer">
                    <button type="submit" name="submit" value="submit"
                        class="btn btn-primary"><?php echo lang('submit'); ?></button>
                </div>
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</section>