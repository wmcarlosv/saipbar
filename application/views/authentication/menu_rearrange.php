<?php
if ($this->session->flashdata('exception')) {

    echo '<section class="content-header"><div class="alert alert-success alert-dismissible"> 
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <p><i class="icon fa fa-check"></i>';
    echo $this->session->flashdata('exception');
    echo '</p></div></section>';
}
?>
<?php
if ($this->session->flashdata('exception_1')) {

    echo '<section class="content-header"><div class="alert alert-danger alert-dismissible"> 
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <p><i class="icon fa fa-check"></i>';
    echo $this->session->flashdata('exception_1');
    echo '</p></div></section>';
}
?>
<section class="content-header">
    <h1>
        <?php echo lang('Menu_Rearrange'); ?>
    </h1>

</section>

<!-- Main content -->
<section class="content">
    <div class="row">

        <!-- left column -->
        <div class="col-md-12">
            <div class="box box-primary">
                <div class="box-body table-responsive">
                    <form method="post" id="sorting_form">
                        <table id="" class="table table-bordered table-striped">
                            <thead>
                            <tr>
                                <th class="ir_w_1"><?php echo lang('sn'); ?></th>
                                <th class="width_28_p"><?php echo lang('menu'); ?></th>
                            </tr>
                            </thead>
                            <tbody id="sortProdctCat">
                            <?php
                            $i = 1;
                            foreach ($menu_access as $value) {
                                $label = lang($value->label);
                                if($value->controller_name=="Outlet"){
                                    $data_c = getLanguageManifesto();
                                    if(str_rot13($data_c[0])=="eriutoeri"){
                                        $label =  lang('outlets');
                                    }else if(str_rot13($data_c[0])=="fgjgldkfg"){
                                        $label = lang('outlet_setting');
                                    }
                                }
                                ?>
                                <tr class="txt-uh-59">
                                    <td class="counters c_center"><?php echo escape_output($i); ?>
                                    </td>
                                    <td>
                                        <input  type="hidden" name="menus[]" value="<?php echo escape_output($value->id); ?>">
                                        <table>
                                            <tr>
                                                <td>
                                                    <?php
                                                        if($value->icon):
                                                    ?>
                                                    <i data-feather="<?php echo escape_output($value->icon);?>"></i>
                                                            <?php
                                                            endif;
                                                            ?>
                                                            </td>
                                                <td class="txt_53"> <?php echo escape_output($label); ?></td>
                                            </tr>
                                        </table>

                                        </td>

                                </tr>
                                <?php
                                $i++;
                            }
                            ?>
                            </tbody>
                            <tfoot>
                            <tr>
                                <th><?php echo lang('sn'); ?></th>
                                <th><?php echo lang('menu'); ?></th>
                            </tr>
                            </tfoot>
                        </table>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<script src="<?php echo base_url(); ?>assets/dist/js/jquery.dragsort.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/menu_sorting.js"></script>