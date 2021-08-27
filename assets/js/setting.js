$(function () {
    "use strict";
    //preview the selected images
    $(document).on('click','.show_preview' , function(e){
        e.preventDefault();
        let file_path = $(this).attr('data-file_path');
        $("#show_id").attr('src',file_path);
        $("#show_id").css('width',"unset");
        $("#logo_preview").modal("show");
    });
})