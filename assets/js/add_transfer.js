$(function() {
    "use strict";
    let food_menu_already_remain = $("#food_menu_already_remain").val();
    let date_field_required = $("#date_field_required").val();
    let at_least_food_menu = $("#at_least_food_menu").val();
    let paid_field_required = $("#paid_field_required").val();
    let are_you_sure = $("#are_you_sure").val();
    let warning = $("#warning").val();
    let a_error = $("#a_error").val();
    let ok = $("#ok").val();
    let cancel = $("#cancel").val();
    let alert2 = $("#alert").val();
    let ingredient_id_container = [];
    //Initialize Select2 Elements
    $('.select2').select2();
    let suffix =0;

    let tab_index = 4;

    $(document).on('change', '#ingredient_id', function() {
        let ingredient_details = $('#ingredient_id').val();
        if (ingredient_details != '') {
            let ingredient_details_array = ingredient_details.split('||');
            $(".rowCount").each(function() {
               let id_temp = $(this).attr('data-item_id');
               if(id_temp==(ingredient_details_array[0])){
                   swal({
                       title: alert2+"!",
                       text: food_menu_already_remain,
                       confirmButtonText: ok,
                       confirmButtonColor: '#3c8dbc'
                   });
                   $('#ingredient_id').val('').change();
                   exit;
                   return false;
               }
            });
            let currency = '';
            suffix++;
            tab_index++;
            let cart_row = '<tr class="rowCount" data-item_id="' + ingredient_details_array[0] + '" data-id="' + suffix + '" id="row_' + suffix + '">' +
                '<td style="padding-left: 10px;"><p id="sl_' + suffix + '">' + suffix + '</p></td>' +
                '<td><span style="padding-bottom: 5px;">' + ingredient_details_array[1] +
                '</span></td>' +
                '<input type="hidden" id="ingredient_id_' + suffix +
                '" name="ingredient_id[]" value="' + ingredient_details_array[0] + '"/>' +
                ingredient_details_array[2] + '</span></td>' +'<td><input type="text" data-countID="' + suffix + '" tabindex="' + tab_index + 1 +
                '" id="quantity_amount_' + suffix +
                '" name="quantity_amount[]" onfocus="this.select();" class="form-control integerchk aligning countID"  placeholder="Qty/Amount"><span class="label_aligning">' +
                ingredient_details_array[3] + '</span></td>' +
                '<td><a class="btn btn-danger btn-xs row_delete" style="margin-left: 5px; margin-top: 10px;" ><i style="color:white" class="fa fa-trash"></i> </a></td>' +
                '</tr>';
            tab_index++;

            $('#transfer_cart tbody').append(cart_row);

            $('#ingredient_id').val('').change();
            updateRowNo();
        }
    });


    // Validate form
    $(document).on('submit', '#transfer_form', function() {
        let date = $("#date").val();
        let paid = $("#paid").val();
        let ingredientCount = $("#transfer_cart tbody tr").length;
        let error = false;

        if (date == "") {
            $("#date_err_msg").text(date_field_required);
            $(".date_err_msg_contnr").show(200);

            error = true;
        }

        if (ingredientCount < 1) {
            $("#ingredient_id_err_msg").text(at_least_food_menu);
            $(".ingredient_id_err_msg_contnr").show(200);

            error = true;
        }

        if (paid == "") {
            $("#paid_err_msg").text(paid_field_required);
            $(".paid_err_msg_contnr").show(200);
            error = true;
        }

        $(".countID").each(function() {
            let n = $(this).attr("data-countID");
            let quantity_amount = $.trim($("#quantity_amount_" + n).val());
            if (quantity_amount == '' || isNaN(quantity_amount)) {
                $("#quantity_amount_" + n).css({
                    "border-color": "red"
                }).show(200).delay(2000, function() {
                    $("#quantity_amount_" + n).css({
                        "border-color": "#d2d6de"
                    });
                });
                error = true;
            }
        });

        if (error == true) {
            return false;
        }
    });
});

$(document).on('click', '.row_delete', function() {
    let alert2 = $("#alert").val();
    let are_you_sure = $("#are_you_sure").val();
    let warning = $("#warning").val();
    let a_error = $("#a_error").val();
    let ok = $("#ok").val();
    let cancel = $("#cancel").val();
    let this_action = $(this);
    swal({
        title: alert2,
        text: are_you_sure,
        confirmButtonColor: '#3c8dbc',
        cancelButtonText: cancel,
        confirmButtonText: ok,
        showCancelButton: true
    }, function() {
        this_action.parent().parent().remove();
        updateRowNo();
    });
});

function updateRowNo() {
    let numRows = $("#transfer_cart tbody tr").length;
    for (let r = 0; r < numRows; r++) {
        $("#transfer_cart tbody tr").eq(r).find("td:first p").text(r + 1);
    }
}