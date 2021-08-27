$(function() {
    "use strict";
    $(document).on('submit', '#customerReport', function() {
        let customer_id = $("#customer_id").val();
        let error = false;
        if (customer_id == "") {
            $("#customer_id_err_msg").text("The Customer field is required.");
            $(".customer_id_err_msg_contnr").show(200);
            error = true;
        }

        if (error == true) {
            return false;
        }
    });
});