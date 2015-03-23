Deface::Override.new(
    :virtual_path     => "spree/admin/option_types/edit",
    :name             => "admin_option_types_edit_table_header",
    :insert_before    => "th.actions",
    :partial          => "spree/admin/option_types/edit_table_header",
    :disabled         => false
)
