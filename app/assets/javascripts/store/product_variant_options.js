var show_variant_images = function (variant_id) {
    $('li.vtmb').hide();
    $('li.vtmb.tmb-' + variant_id).show();
    var currentThumb = $('#main-image');
    // if currently selected thumb does not belong to current variant, nor to common images,
    // hide it and select the first available thumb instead.
    // if(!currentThumb.hasClass('tmb-' + variant_id)) {
    var thumb = $($('ul.thumbnails li:visible').eq(0));
//    var thumb = $($("ul.thumbnails li.vtmb tmb-" + variant_id + ":first").eq(0));
//    thumb = $($('ul.thumbnails li:visible').eq(0));
    var newImg = thumb.find('a').attr('href');
    if (newImg) {
        $('ul.thumbnails li').removeClass('selected');
        thumb.addClass('selected');
        $('#main-image img').attr('src', newImg);
        currentThumb.data('selectedThumb', newImg);
        currentThumb.data('selectedThumbId', thumb.attr('id'));
    }
    // }
    // currentThumb.find('img').attr('src', $('li.vtmb.tmb-' + variant_id).first().find('a img').parent().data('zoom-image'))
};

var hide_all_variant_images = function () {
    $('li.vtmb').hide();
};