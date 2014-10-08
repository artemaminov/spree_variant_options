show_variant_images = function(variantId) {
    hide_all_variant_images();

    var currentVariant = $("li.tmb-" + variantId),
        currentImageWrapper = $("#main-image"),
        currentMainImage = currentImageWrapper.find("img"),
        currentThumb = currentImageWrapper.data("selectedThumb"),
        currentThumbId = currentImageWrapper.data("selectedThumbId");

    currentVariant.show();

    // if currently selected thumb does not belong to current variant, nor to common images,
    // hide it and select the first available thumb instead.
    if (!$("#" + currentThumbId).hasClass(".tmb-" + variantId)) {
        var newThumb = $("#product-images ul.thumbnails li:visible.selected").eq(0);
    }
    if (!(newThumb.length > 0)) {
        var newThumb = $("#product-images ul.thumbnails li:visible.vtmb").eq(0);
    }

    var newThumbLink = newThumb.find("a"),
        newImage = newThumbLink.attr("href");

    if (currentThumb) {
        $('ul.thumbnails li').removeClass("selected");
        newThumb.addClass("selected");
        currentImageWrapper.data('selectedThumb', newImage);
        currentImageWrapper.data('selectedThumbId', newThumb.attr('id'));
        currentMainImage.attr('src', newImage);
    }
};

var hide_all_variant_images = function () {
    $('li.vtmb').hide();
};
