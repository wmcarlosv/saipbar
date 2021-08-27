
<?php

if ($this->session->flashdata('exception')) {

    echo '<section class="content-header"><div class="alert alert-success alert-dismissible"> 
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <p><i class="fa fa-check"></i>';
    echo $this->session->flashdata('exception');
    echo '</p></div></section>';
}
?>
<link rel="stylesheet" href="<?= base_url()?>assets/buttonCSS/checkBotton2.css">
 <section class="content-header">
     <div class="row">
         <div class="col-md-3">
             <h2 class="top-left-header"><?php echo lang('item_barcode'); ?> </h2>
         </div>
         <div class="col-md-3">

         </div>
     </div>
 </section>

 <section class="content">
     <div class="row">
         <div class="col-md-12">
             <!-- general form elements -->
             <div class="box box-primary custom_txt_3">
                 <!-- /.box-header -->
                 <?php echo form_open(base_url() . 'foodMenu/foodMenuBarcode', $arrayName = array('id' => 'foodMenuBarcode','enctype'=>'multipart/form-data')) ?>
                 <div class="col-md-2">
                     <select name="barcode_width" class="form-control select2">
                         <option value="1"><?php echo lang('barcode_width'); ?></option>
                         <option value="1">1</option>
                         <option value="2">2</option>
                         <option value="3">3</option>
                         <option value="4">4</option>
                         <option value="5">5</option>
                         <option value="6">6</option>
                         <option value="7">7</option>
                         <option value="8">8</option>
                     </select>
                 </div>
                 <div class="col-md-2">
                     <table class="ir_w_100">
                         <tr>
                             <td><input type="number" value="" onfocus="select()" class="form-control" name="barcode_height" placeholder="Barcode Height(px)"></td>
                             <td  class="ir_w_1">px</td>
                         </tr>
                     </table>
                 </div>

                 <button type="submit" name="submit" value="submit" class="btn btn-primary alertClass"><?php echo lang('generate_now'); ?></button>
                 <a href="<?php echo base_url() ?>foodMenu/foodMenus"><button type="button" class="btn btn-primary"><?php echo lang('back'); ?></button></a>
                 <table id="datatable_id" class="table datatable table-striped table-bordered table-hover">
                     <thead>
                     <tr>
                         <th class="custom_txt_1">
                             <label class="container ir_w_89"> <?php echo lang('select_all'); ?>
                                 <input class="checkbox_userAll" type="checkbox" id="checkbox_userAll">
                                 <span class="checkmark"></span>
                             </label>
                         </th>
                         <th  class="ir_w_2"><?php echo lang('code'); ?></th>
                         <th class="ir_w_16"><?php echo lang('name'); ?></th>
                         <th class="ir_w_10"><?php echo lang('category'); ?></th>
                         <th  class="ir_w_7"><?php echo lang('sale_price'); ?></th>
                     </tr>
                     </thead>
                     <tbody>
                     <?php
                     if ($foodMenus && !empty($foodMenus)) {
                         $i = count($foodMenus);
                     }
                     foreach ($foodMenus as $ingrnts) {
                         ?>
                         <tr>
                             <td class="ir_txt_center">
                                 <table class="ir_w_100">
                                     <tr>
                                         <td class="ir_w_25"> <input class="ir_w_100 ir_txt_center" disabled type="number" min="1" id="qty<?=$ingrnts->id?>" onfocus="select();" name="qty[]" value=""></td>
                                         <td class="custom_txt_2">  <label class="container"><?php echo lang('select'); ?>
                                                 <input type="checkbox"  class="checkbox_user" data-menu_id="<?=$ingrnts->id?>" value="<?=$ingrnts->id."|".$ingrnts->name."|".$ingrnts->code."|".$ingrnts->sale_price?>" name="food_menu_id[]"?>
                                                 <span class="checkmark"></span>
                                             </label></td>
                                     </tr>
                                 </table>
                             </td>
                             <td><?php echo $ingrnts->code; ?></td>
                             <td><?php echo $ingrnts->name; ?></td>
                             <td><?php echo foodMenucategoryName($ingrnts->category_id); ?></td>
                             <td> <?php echo $this->session->userdata('currency'); ?> <?php echo $ingrnts->sale_price; ?></td>
                         </tr>
                         <?php
                     }
                     ?>
                     </tbody>
                     <tfoot>
                     <tr>
                         <th>
                             <label class="container ir_w_89"> <?php echo lang('select_all'); ?>
                                 <input class="checkbox_userAll" type="checkbox" id="checkbox_userAll">
                                 <span class="checkmark"></span>
                             </label>
                         </th>
                         <th><?php echo lang('code'); ?></th>
                         <th ><?php echo lang('name'); ?></th>
                         <th ><?php echo lang('category'); ?></th>
                         <th><?php echo lang('sale_price'); ?></th>
                     </tr>
                     </tfoot>
                 </table>
                 <button type="submit" name="submit" value="submit" class="btn btn-primary alertClass"><?php echo lang('generate_now'); ?></button>
                 <a href="<?php echo base_url() ?>foodMenu/foodMenus"><button type="button" class="btn btn-primary"><?php echo lang('back'); ?></button></a>
                 <?php echo form_close(); ?>
                 <!-- /.box-body -->
             </div>
         </div>
     </div>
 </section>
 <!-- DataTables -->
 <script src="<?php echo base_url(); ?>assets/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
 <script src="<?php echo base_url(); ?>assets/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
 <link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
<script src="<?php echo base_url(); ?>assets/js/foodmenubarcode.js"></script>
