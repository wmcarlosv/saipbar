"use strict";
$(function() {
    $('#datatable').DataTable({
        'autoWidth': false,
        'ordering': false,
    })
});
$("#change_date_sale_modal").datepicker({
    dateFormat: 'yy-mm-dd',
    changeYear: true,
    changeMonth: true,
    autoclose: true,
    showMonthAfterYear: true, //this is what you are looking for
    maxDate: 0
});

function viewInvoice(id) {

    let newWindow = open("print_invoice/" + id, 'Print Invoice', 'width=450,height=550');
    newWindow.focus();

    newWindow.onload = function() {
        newWindow.document.body.insertAdjacentHTML('afterbegin');
    };

}

function change_date(id) {
    $('#change_date_sale_modal').val('');
    $('#sale_id_hidden').val('');
    $('#sale_id_hidden').val(id);
    $('#change_date_modal').modal('show');
    // $('#myModal').modal('hide');
    // alert(id);
}
$(document).on('click', '#close_change_date_modal', function() {
    $('#change_date_sale_modal').val('');
    $('#sale_id_hidden').val('');
});
$(document).on('click', '#save_change_date', function() {
    let change_date = $('#change_date_sale_modal').val();
    let sale_id = $('#sale_id_hidden').val();
    let csrf_name_= $("#csrf_name_").val();
    let csrf_value_= $("#csrf_value_").val();
    $.ajax({
        url: base_url + "Sale/change_date_of_a_sale_ajax",
        method: "POST",
        data: {
            sale_id: sale_id,
            change_date: change_date,
            csrf_name_: csrf_value_
        },
        success: function(response) {
            $('#change_date_sale_modal').val('');
            $('#sale_id_hidden').val('');
            $('#change_date_modal').modal('hide');
        },
        error: function() {
            alert("error");
        }
    });
});
