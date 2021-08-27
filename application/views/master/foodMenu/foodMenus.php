 <?php
if ($this->session->flashdata('exception')) {

    echo '<section class="content-header"><div class="alert alert-success alert-dismissible"> 
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <p><i class="icon fa fa-check"></i>';
    echo escape_output($this->session->flashdata('exception'));
    echo '</p></div></section>';
}
?>
 <script src="<?php echo base_url(); ?>assets/js/select_2.js"></script>

 <section class="content-header">
     <div class="row">
         <div class="col-md-3">
             <h2 class="top-left-header"><?php echo lang('food_menus'); ?> </h2>
             <input type="hidden" class="datatable_name" data-title="<?php echo lang('food_menus'); ?>" data-id_name="datatable">
         </div>
         <div class="col-md-3">
             <?php echo form_open(base_url() . 'foodMenu/foodMenus') ?>
             <select name="category_id" class="form-control select2">
                 <option value=""><?php echo lang('category'); ?></option>
                 <?php foreach ($foodMenuCategories as $ctry) { ?>
                 <option value="<?php echo escape_output($ctry->id) ?>" <?php echo set_select('category_id', $ctry->id); ?>>
                     <?php echo escape_output($ctry->category_name) ?></option>
                 <?php } ?>
             </select>
         </div>
         <div class="hidden-lg">&nbsp;</div>
         <div class="col-md-1">
             <button type="submit" name="submit" value="submit"
                 class="btn btn-block btn-primary pull-left"><?php echo lang('submit'); ?></button>
         </div>
         <div class="hidden-lg">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
         <div class="col-md-5 text-right">
             <ul class="list-inline text-right">
                 <li>
                     <a href="<?php echo base_url() ?>foodMenu/addEditFoodMenu"><button type="button"
                             class="btn btn-block btn-primary pull-right"><?php echo lang('add_food_menu'); ?></button></a>
                 </li>
                 <li>
                     <a href="<?php echo base_url() ?>foodMenu/uploadFoodMenu"><button type="button"
                             class="btn btn-block btn-primary pull-right"><?php echo lang('upload_food_menu'); ?></button></a>
                 </li>
                 <li>
                     <a href="<?php echo base_url() ?>foodMenu/uploadFoodMenuIngredients"><button type="button"
                             class="btn btn-block btn-primary pull-right"><?php echo lang('upload_food_menu_ingredients'); ?></button></a>
                 </li>
                 <li>
                     <a href="<?php echo base_url() ?>foodMenu/foodMenuBarcode"><button type="button"
                             class="btn btn-block btn-primary pull-right"><?php echo lang('food_menu_barcode'); ?></button></a>
                 </li>
             </ul>
         </div>
     </div>
 </section>

 <section class="content">
     <div class="row">
         <div class="col-md-12">
             <!-- general form elements -->
             <div class="box box-primary">
                 <!-- /.box-header -->
                 <div class="box-body table-responsive">
                     <table id="datatable" class="table table-striped">
                         <thead>
                             <tr>
                                 <th class="ir_w_1"> <?php echo lang('sn'); ?></th>
                                 <th class="ir_w_8"><?php echo lang('code'); ?></th>
                                 <th class="ir_w_25"><?php echo lang('name'); ?></th>
                                 <th class="ir_w_13"><?php echo lang('category'); ?></th>
                                 <th class="ir_w_13"><?php echo lang('sale_price'); ?></th>
                                 <th class="ir_w_13"><?php echo lang('total_ingredients'); ?></th>
                                 <th class="ir_w_18"><?php echo lang('added_by'); ?></th>
                                 <th class="ir_w_1 ir_txt_center not-export-col"><?php echo lang('actions'); ?></th>
                             </tr>
                         </thead>
                         <tbody>
                             <?php
                            if ($foodMenus && !empty($foodMenus)) {
                                $i = count($foodMenus);
                            }
                            foreach ($foodMenus as $value) {
                                ?>
                             <tr>
                                 <td class="ir_txt_center"><?php echo escape_output($i--); ?></td>
                                 <td><?php echo escape_output($value->code) ?></td>
                                 <td><?php echo escape_output($value->name) ?></td>
                                 <td><?php echo escape_output(foodMenucategoryName($value->category_id)); ?></td>
                                 <td>
                                     <?php echo escape_output($value->sale_price) ?></td>
                                 <td class="ir_txt_center"><?php echo escape_output(totalIngredients($value->id)); ?></td>
                                 <td><?php echo escape_output(userName($value->user_id)); ?></td>
                                 <td class="ir_txt_center">
                                     <div class="btn-group">
                                         <button type="button" class="btn btn-default btn-xs dropdown-toggle"
                                             data-toggle="dropdown" aria-expanded="false">
                                             <i class="fa fa-gear tiny-icon"></i><span class="caret"></span>
                                         </button>
                                         <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                             <li><a
                                                     href="<?php echo base_url() ?>foodMenu/foodMenuDetails/<?php echo escape_output($this->custom->encrypt_decrypt($value->id, 'encrypt')); ?>"><i
                                                         class="fa fa-eye tiny-icon"></i><?php echo lang('view_details'); ?></a>
                                             </li>
                                             <li><a
                                                     href="<?php echo base_url() ?>foodMenu/addEditFoodMenu/<?php echo escape_output($this->custom->encrypt_decrypt($value->id, 'encrypt')); ?>"><i
                                                         class="fa fa-pencil tiny-icon"></i><?php echo lang('edit'); ?></a>
                                             </li>
                                             <li><a
                                                     href="<?php echo base_url() ?>foodMenu/assignFoodMenuModifier/<?php echo escape_output($this->custom->encrypt_decrypt($value->id, 'encrypt')); ?>"><i
                                                         class="fa fa-plus tiny-icon"></i><?php echo lang('assign_modifier'); ?></a>
                                             </li>
                                             <li><a class="delete"
                                                     href="<?php echo base_url() ?>foodMenu/deleteFoodMenu/<?php echo escape_output($this->custom->encrypt_decrypt($value->id, 'encrypt')); ?>"><i
                                                         class="fa fa-trash tiny-icon"></i><?php echo lang('delete'); ?></a>
                                             </li>
                                         </ul>
                                     </div>
                                 </td>
                             </tr>
                             <?php
                            }
                            ?>
                         </tbody>
                         <tfoot>
                             <tr>
                                 <th><?php echo lang('sn'); ?></th>
                                 <th><?php echo lang('code'); ?></th>
                                 <th><?php echo lang('name'); ?></th>
                                 <th><?php echo lang('category'); ?></th>
                                 <th><?php echo lang('sale_price'); ?></th>
                                 <th><?php echo lang('total_ingredients'); ?></th>
                                 <th><?php echo lang('added_by'); ?></th>
                                 <th class="ir_txt_center"><?php echo lang('actions'); ?></th>
                             </tr>
                         </tfoot>
                     </table>
                 </div>
                 <!-- /.box-body -->
             </div>
         </div>
     </div>
 </section>
 <script src="<?php echo base_url(); ?>assets/js/inventory.js"></script>
 <!-- DataTables -->
 <script src="<?php echo base_url(); ?>assets/datatable_custom/jquery-3.3.1.js"></script>
 <script src="<?php echo base_url(); ?>assets/datatable_custom/jquery.dataTables.min.js"></script>
 <script src="<?php echo base_url(); ?>assets/datatable_custom/dataTables.buttons.min.js"></script>
 <script src="<?php echo base_url(); ?>assets/datatable_custom/buttons.flash.min.js"></script>
 <script src="<?php echo base_url(); ?>assets/datatable_custom/jszip.min.js"></script>
 <script src="<?php echo base_url(); ?>assets/datatable_custom/pdfmake.min.js"></script>
 <script src="<?php echo base_url(); ?>assets/datatable_custom/vfs_fonts.js"></script>
 <script src="<?php echo base_url(); ?>assets/datatable_custom/buttons.html5.min.js"></script>
 <script src="<?php echo base_url(); ?>assets/datatable_custom/buttons.print.min.js"></script>

 <link rel="stylesheet" href="<?php echo base_url(); ?>assets/datatable_custom/jquery.dataTables.min.css">
 <link rel="stylesheet" href="<?php echo base_url(); ?>assets/datatable_custom/buttons.dataTables.min.css">
 <script src="<?php echo base_url(); ?>assets/js/custom_report.js"></script>