<section class="content-header">
    <h1>
        Subir Ingredientes
    </h1>
</section>
<section class="content-header">
    <?php
    if ($this->session->flashdata('exception')) {

        echo '<div class="alert alert-success alert-dismissible"> 
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <p><i class="icon fa fa-check"></i>';
        echo escape_output($this->session->flashdata('exception'));
        echo '</p></div>';
    }
    if ($this->session->flashdata('exception_err')) {

        echo '<div class="alert alert-danger alert-dismissible"> 
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <p><i class="icon fa fa-check"></i>';
        echo escape_output($this->session->flashdata('exception_err'));
        echo '</p></div>';
    }
    ?>
</section>

<section class="content">
    <div class="row">
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary">
                <!-- form start -->
                <?php echo form_open_multipart(base_url('ingredient/ExcelDataAddIngredints')); ?>
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12">

                            <div class="form-group">
                                <label><?php echo lang('upload_file'); ?> <span class="required_star"> Max 50/Carga*</span></label>
                                <input tabindex="1" type="file" name="userfile" class="form-control"
                                    placeholder="<?php echo lang('upload_file'); ?>"
                                    value="<?php echo set_value('name'); ?>">
                            </div>
                            <div class="checkbox form-group">
                                <label><input type="checkbox" name="remove_previous"
                                        value="1"><?php echo lang('remove_all_previous_data'); ?></label>
                            </div>
                            <?php if (form_error('userfile')) { ?>
                            <div class="alert alert-error ir_p_5">
                                <p><?php echo form_error('userfile'); ?></p>
                            </div>
                            <?php } ?>
                        </div>

                    </div>
                </div>
                <!-- /.box-body -->

                <div class="box-footer">
                    <button type="submit" name="submit" value="submit"
                        class="btn btn-primary"><?php echo lang('submit'); ?></button>
                    <a href="<?php echo base_url() ?>ingredient/ingredients"><button type="button"
                            class="btn btn-primary"><?php echo lang('back'); ?></button></a>
                    <a class="btn btn-primary" href="<?php echo base_url() ?>ingredient/downloadPDF/Ingredient_Upload.xlsx">
                        <i class="fa fa-save"></i> <?php echo lang('download_sample'); ?></a>
                </div>
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>

</section>