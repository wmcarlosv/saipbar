// material icon init
feather.replace();

$(".select_multiple").select2({
    multiple: true,
    placeholder: 'Select',
    allowClear: true
});
$('.select_multiple').val('placeholder').trigger("change");

let window_height = $(window).height();
let main_header_height = $('.main-header').height();
let user_panel_height = $('.user-panel').height();
let left_menu_height_should_be = (parseFloat(window_height) - (parseFloat(main_header_height) + parseFloat(
    user_panel_height))).toFixed(2);
left_menu_height_should_be = (parseFloat(left_menu_height_should_be) - parseFloat(60)).toFixed(2);

base_url= $("#base_url_").val();
let csrf_name_= $("#csrf_name_").val();
let csrf_value_= $("#csrf_value_").val();
let not_closed_yet= $("#not_closed_yet").val();
let opening_balance= $("#opening_balance").val();
let customer_due_receive= $("#customer_due_receive").val();
let paid_amount= $("#paid_amount").val();
let in_ = $("#in_").val();
let cash= $("#cash").val();
let paypal= $("#paypal").val();
let sale= $("#sale").val();
let card= $("#card").val();
let currency = '';

$.ajax({
    url: base_url+"Register/checkRegisterAjax",
    method: "POST",
    data: {
        csrf_name_: csrf_value_
    },
    success: function(response) {
        if (response == '2') {
            $('#close_register_button').css('display', 'none');
        } else {
            $('#close_register_button').css('display', 'block');

        }
    },
    error: function() {
        alert("error");
    }
});
$('#register_details').on('click', function() {
    $.ajax({
        url: base_url+"Sale/registerDetailCalculationToShowAjax",
        method: "POST",
        data: {
            csrf_name_: csrf_value_
        },
        success: function(response) {
            console.log(response);
            if (!IsJsonString(response)) {
                let r = confirm("Register is not open, do you want to open register?");
                if (r == true) {
                    window.location.replace(base_url + 'Register/openRegister');
                }
                return false;
            }

            response = JSON.parse(response);
            $('#myModal').modal('show');
            $('#opening_closing_register_time').show();
            $('#opening_register_time').html(response.opening_date_time);


            let t1 = response.opening_date_time.split(/[- :]/);
            let d1 = new Date(Date.UTC(t1[0], t1[1] - 1, t1[2], t1[3], t1[4], t1[5]));
            let t2 = response.closing_date_time.split(/[- :]/);
            let d2 = new Date(Date.UTC(t2[0], t2[1] - 1, t2[2], t2[3], t2[4], t2[5]));

            if (d1 > d2) {
                $('#closing_register_time').html(not_closed_yet);
            } else {
                $('#closing_register_time').html(response.closing_date_time);
            }


            let register_detail_modal_content = '';
            let customer_due_receive = (response.customer_due_receive == null) ? 0 : response
                .customer_due_receive;
            let opening_balance = (response.opening_balance == null) ? 0 : response
                .opening_balance;
            let sale_due_amount = (response.sale_due_amount == null) ? 0 : response
                .sale_due_amount;
            let sale_in_card = (response.sale_in_card == null) ? 0 : response.sale_in_card;
            let sale_in_cash = (response.sale_in_cash == null) ? 0 : response.sale_in_cash;
            let sale_in_paypal = (response.sale_in_paypal == null) ? 0 : response
                .sale_in_paypal;
            let sale_paid_amount = (response.sale_paid_amount == null) ? 0 : response
                .sale_paid_amount;
            let sale_total_payable_amount = (response.sale_total_payable_amount == null) ? 0 :
                response.sale_total_payable_amount;

            let balance = (parseFloat(opening_balance) + parseFloat(sale_paid_amount) +
                parseFloat(customer_due_receive)).toFixed(2);
            register_detail_modal_content += '<p>'+opening_balance+': ' +
            currency + ' ' + opening_balance + '</p>';
            // register_detail_modal_content += '<p>Sale Total Amount: '+currency+' '+sale_total_payable_amount+'</p>';
            register_detail_modal_content +=
                '<p>'+sale+' ('+paid_amount+'): ' +
            currency + ' ' + sale_paid_amount + '</p>';
            // register_detail_modal_content += '<p>Sale Due Amount: '+currency+' '+sale_due_amount+'</p>';
            // register_detail_modal_content += '<p>&nbsp;</p>';
            register_detail_modal_content +=
                '<p>'+customer_due_receive+': ' + currency + ' ' +
            customer_due_receive + '</p>';
            register_detail_modal_content +=
                '<p>Balance {'+opening_balance+' + '+sale+' ('+paid_amount+') + '+customer_due_receive+'}: ' +
            currency + ' ' + balance + '</p>';
            register_detail_modal_content +=
                '<p style="width:100%;border-bottom:1px solid #b5d6f6;line-height:0px;">&nbsp;</p>';

            register_detail_modal_content +=
                '<p>'+sale+' '+in_+' '+cash+': ' +
            currency + ' ' + sale_in_cash + '</p>';
            register_detail_modal_content +=
                '<p>'+sale+' '+in_+' '+paypal+': ' +
            currency + ' ' + sale_in_paypal + '</p>';
            register_detail_modal_content +=
                '<p>'+sale+' '+in_+' '+card+': ' +
            currency + ' ' + sale_in_card + '</p>';
            $('#register_details_body').html(register_detail_modal_content);
            // $('#myModal').modal('hide');

        },
        error: function() {
            alert("error");
        }
    });
});

$('#register_close').on('click', function() {
    let r = confirm("Are you sure to close register?");

    if (r == true) {
        $.ajax({
            url: base_url+"Sale/closeRegister",
            method: "POST",
            data: {
                csrf_name_: csrf_value_
            },
            success: function(response) {
                swal({
                    title: 'Alert',
                    text: 'Register closed successfully!!',
                    confirmButtonColor: '#b6d6f6'
                });
                $('#close_register_button').hide();

            },
            error: function() {
                alert("error");
            }
        });
    }
});

function IsJsonString(str) {
    try {
        JSON.parse(str);
    } catch (e) {
        return false;
    }
    return true;
}

function todaysSummary() {

    $.ajax({
        url: base_url+"Report/todayReport",
        method: 'get',
        dataType: 'json',
        data: {
        csrf_name_: csrf_value_
    },
    success: function(data) {
        $("#purchase_today_").text(currency + data
            .total_purchase_amount);
        $("#sale_today").text(currency + data
            .total_sales_amount);
        $("#totalVat").text(currency + data
            .total_sales_vat);
        $("#Expense").text(currency + data
            .expense_amount);
        $("#supplierDuePayment").text(currency + data
            .supplier_payment_amount);
        $("#customerDueReceive").text(currency + data
            .customer_receive_amount);
        $("#waste_today").text(currency + data
            .total_loss_amount);
        $("#balance").text(currency + data.balance);
        $.ajax({
            url: base_url+'Report/todayReportCashStatus',
            method: 'get',
            datatype: 'json',
            data: {
                csrf_name_: csrf_value_
        },
        success: function(data) {
            let json = $.parseJSON(data);
            let i = 1;
            let html = '<table class="table">';
            $.each(json, function(index, value) {
                html += '<tr><td style="width: 86%">' + i + '. Sale in ' +
                    value.name +
                    '</td> <td><'+currency+' ' +
                value.total_sales_amount + '</td></tr>';
                i++;
            });
            html += '</table>';
            $("#showCashStatus").html(html);
        }
    });
    }
});
    $("#todaysSummary").modal("show");
}