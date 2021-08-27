$(function() {
    "use strict";
    $(document).on('submit', '#supplierReport', function() {
        let supplier_id = $("#supplier_id").val();
        let error = false;
        if (supplier_id == "") {
            $("#supplier_id_err_msg").text("The Supplier field is required.");
            $(".supplier_id_err_msg_contnr").show(200);
            error = true;
        }

        if (error == true) {
            return false;
        }
    });
});