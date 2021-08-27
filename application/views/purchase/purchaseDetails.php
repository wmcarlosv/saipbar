<section class="content-header">
    <h1>
        <?php echo lang('details_purchase'); ?>
    </h1>
</section>

<section class="content">
    <div class="row">
        <!-- left column -->
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary">

                <div class="box-body">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <h3><?php echo lang('ref_no'); ?></h3>
                                <p class=""><?php echo escape_output($purchase_details->reference_no) ?></p>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <h3><?php echo lang('supplier'); ?></h3>
                                <?php echo escape_output(getSupplierNameById($purchase_details->supplier_id)); ?>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <h3><?php echo lang('date'); ?></h3>
                                <p class="">
                                    <?php echo escape_output(date($this->session->userdata('date_format'), strtotime($purchase_details->date))); ?>
                                </p>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <h3><?php echo lang('ingredients'); ?></h3>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive" id="purchase_cart">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th class="txt_31"><?php echo lang('sn'); ?></th>
                                            <th class="txt_33">
                                                <?php echo lang('ingredient'); ?>(<?php echo lang('code'); ?>)</th>
                                            <th class="txt_32"><?php echo lang('unit_price'); ?></th>
                                            <th class="txt_32"><?php echo lang('quantity_amount'); ?></th>
                                            <th class="txt_33"><?php echo lang('total'); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $i = 0;
                                        if ($purchase_ingredients && !empty($purchase_ingredients)) {
                                            foreach ($purchase_ingredients as $pi) {
                                                $i++;
                                                echo '<tr id="row_' . $i . '">' .
                                                '<td class="txt_24"><p>' . $i . '</p></td>' .
                                                '<td class="ir_w_20"><span class="txt_18">' . getIngredientNameById($pi->ingredient_id) . ' (' . getIngredientCodeById($pi->ingredient_id) . ')</span></td>' .
                                                '<td class="ir_w_15">' . escape_output($pi->unit_price) . '</td>' .
                                                '<td class="ir_w_15">' . $pi->quantity_amount . ' ' . unitName(getUnitIdByIgId($pi->ingredient_id)) . '</td>' .
                                                '<td class="ir_w_20">' . escape_output($pi->total) . '</td>' .
                                                '</tr>'
                                                ;
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

                        </div>
                        <div class="col-md-offset-2 col-md-3">
                            <div class="form-group">
                                <h3><?php echo lang('g_total'); ?></h3>
                                <p class="">
                                    <?php echo escape_output($purchase_details->grand_total) ?>
                                </p>
                            </div>
                            <div class="form-group">
                                <h3><?php echo lang('paid'); ?></h3>
                                <p class="">
                                    <?php echo escape_output($purchase_details->paid) ?>
                                </p>
                            </div>
                            <div class="form-group">
                                <h3><?php echo lang('due'); ?></h3>
                                <p class="">
                                    <?php echo escape_output($purchase_details->due) ; ?>
                                </p>

                            </div>
                        </div>
                        <div class="col-md-3">

                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-offset-6 col-md-3">

                        </div>
                        <div class="col-md-3">

                        </div>
                    </div>

                </div>
                <div class="box-footer">
                    <a href="<?php echo base_url() ?>Purchase/addEditPurchase/<?php echo escape_output($encrypted_id); ?>"><button
                            type="button" class="btn btn-primary"><?php echo lang('edit'); ?></button></a>
                    <a href="<?php echo base_url() ?>Purchase/purchases"><button type="button"
                            class="btn btn-primary"><?php echo lang('back'); ?></button></a>
                </div>
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</section>