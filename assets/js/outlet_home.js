jQuery(document).ready(function($) {
    "use strict";
    $('[data-mask]').inputmask()
    $('.select2').select2()

    $(".delete").click(function(e) {
        e.preventDefault();
        let linkURL = this.href;
        warnBeforeRedirect(linkURL);
    });

    function warnBeforeRedirect(linkURL) {
        swal({
            title: "Alert!",
            text: "Are you sure!",
            confirmButtonColor: '#3c8dbc',
            showCancelButton: true
        }, function() {
            window.location.href = linkURL;
        });
    }

    //iCheck for checkbox and radio inputs
    $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
        checkboxClass: 'icheckbox_minimal-blue',
        radioClass: 'iradio_minimal-blue'
    })


    $(document).on('keydown', '.integerchk', function(e) {
        /*$('.integerchk').keydown(function(e) {*/
        let keys = e.charCode || e.keyCode || 0;
        // allow backspace, tab, delete, enter, arrows, numbers and keypad numbers ONLY
        // home, end, period, and numpad decimal
        return (
            keys == 8 ||
            keys == 9 ||
            keys == 13 ||
            keys == 46 ||
            keys == 110 ||
            keys == 86 ||
            keys == 190 ||
            (keys >= 35 && keys <= 40) ||
            (keys >= 48 && keys <= 57) ||
            (keys >= 96 && keys <= 105));
    });

    $(document).on('keydown', '.integerchk', function(e) {
        let input = $(this).val();
        let ponto = input.split('.').length;
        let slash = input.split('-').length;
        if (ponto > 2)
            $(this).val(input.substr(0, (input.length) - 1));
        $(this).val(input.replace(/[^0-9.-]/, ''));
        if (slash > 2)
            $(this).val(input.substr(0, (input.length) - 1));
        if (ponto == 2)
            $(this).val(input.substr(0, (input.indexOf('.') + 3)));
        if (input == '.')
            $(this).val("");

    });

    //Date picker
    $('#date').datepicker({
        format: 'yyyy-dd-mm',
        autoclose: true
    })
});