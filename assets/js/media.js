let url = $(location).attr('href');
let url_array = url.split("/");
let method_name = url_array[5];
let method_name1 = url_array[4];
let title = 'SaipBar - ResetSv';

let favicon = $("#site_favicon").val();
let saas_m_ch = $("#saas_m_ch").val();

(function() {
    let link = document.querySelector("link[rel*='icon']") || document.createElement('link');
    link.type = 'image/x-icon';
    link.rel = 'shortcut icon';
    link.href = favicon;
    document.getElementsByTagName('head')[0].appendChild(link);
})();

let logo = $("#site_logo").val();

let login_page_logo = '<div class="logo-box">';
login_page_logo += '<a href="#"><img src="'+logo+'"></a>';
login_page_logo += '</div>';

let home_page_logo = '<a href="#" class="logo">';
home_page_logo += '<span class="logo-mini">SB</span>';
home_page_logo += '<span class="logo-lg">';
home_page_logo += '<img src="'+logo+'">';
home_page_logo += '</span>';
home_page_logo += '</a>';

let home_page_logo1 = '<a href="#" class="right__logo">';
home_page_logo1 += '<!-- mini logo for sidebar mini 50x50 pixels -->\n' +
    '                            <span class="logo__mini">SB</span>';
home_page_logo1 += '<div class="logo__lg">';
home_page_logo1 += '<img src="'+logo+'">';
home_page_logo1 += '</div>';
home_page_logo1 += '</a>';

let footer = '<div class="row">';
footer += '<div class="col-md-12 ir_txt_center"> <a target="_blank" href="https://resetsv.com"><strong>';
footer += title;
footer += '</strong></a><div class="hidden-lg">';
footer += '</div>';
footer += '</div>';
footer += '</div>';

if(saas_m_ch!="yes"){
    document.title =  title;
    if(method_name == 'index.html' || (method_name == 'index' && method_name1 == 'Authentication')) {
        $('body').find('div:eq(3)').remove();
        $('body').find('div:eq(2)').prepend(login_page_logo);
    }
    $('header').find('a:eq(0)').remove();
    $('header').prepend(home_page_logo);

    $('.c-navbar-right').find('a:eq(1)').remove();
    $('.sidebar2_logo').append(home_page_logo1);

    $('footer').find('div:eq(0)').remove();
    $('footer').prepend(footer);
}
