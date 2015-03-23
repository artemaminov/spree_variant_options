(function() {
    jQuery(function() {
        $('.option_type_display_at_variant').on('click', function() {
            $(this).siblings('.variant_track_inventory').val($(this).is(':checked'));
            return $(this).parent('form').submit();
        });
        return $('.toggle_display_at_variant').on('submit', function() {
            $.ajax({
                type: this.method,
                url: this.action,
                data: $(this).serialize()
            });
            return false;
        });
    });

}).call(this);
