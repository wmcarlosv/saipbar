<script src="<?php echo base_url(); ?>assets/plugins/barcode/JsBarcode.all.js"></script>
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary">
                <div id="printableArea">
                    <?php
                    for($i=0;$i<sizeof($items);$i++):
                    for ($j=0;$j<$items[$i]['qty'];$j++):
                        ?>
                        <table class="custom_txt_4">
                            <tr>
                                <td class="custom_txt_5"> <span><?=$items[$i]['item_name']?></span></td>
                            </tr>
                            <tr>
                                <td class="custom_txt_5"> <span><?=$items[$i]['code']?></span></td>
                            </tr>
                            <tr>
                                <td> <img class="custom_txt_6" id="barcode<?=$items[$i]['id']?><?=$j?>"/></td>
                            </tr>
                            <tr>
                                <td class="custom_txt_7"><span><?php echo $this->session->userdata('currency'); ?><?=$items[$i]['sale_price']?></span></td>
                            </tr>
                        </table>
                    <?php
                    endfor;
                    ?>
                    <?php for ($j=0;$j<$items[$i]['qty'];$j++):
                    ?>
                        <script>JsBarcode("#barcode<?=$items[$i]['id']?><?=$j?>", "<?=$items[$i]['code']?>", {  width: <?=isset($barcode_width) && $barcode_width?$barcode_width:1?>,
                                height: <?=isset($barcode_height) && $barcode_height?$barcode_height:30?>,
                                fontSize:12,
                                textMargin:-18,
                                margin:0,
                                marginTop:0,
                                marginLeft:10,
                                marginRight:10,
                                marginBottom:0,
                                displayValue: false
                            });
                        </script>
                        <?php
                    endfor;
                    endfor;
                    ?>
                </div>
                <br><br><br><br><br><br><br><br><br>
                <div class="clearfix"></div>
                <div class="col-md-2">
                    <div class="form-group">
                        <a href="<?php echo base_url() ?>foodMenu/foodMenuBarcode"><button type="button" class="btn btn-block btn-primary pull-right"><?php echo lang('back'); ?></button></a>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="form-group">
                        <a onclick="printDiv('printableArea')" class="btn btn-block btn-primary pull-left">Print</a>
                    </div>
                </div>
                <br><br>

            </div>
        </div>
    </div>
</section>
<script src="<?php echo base_url(); ?>assets/js/barcode_preview.js"></script>