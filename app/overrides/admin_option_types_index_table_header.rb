Deface::Override.new(
    :virtual_path     => "spree/admin/option_types/index",
    :name             => "admin_option_types_index_table_header",
    :insert_before    => "th.actions",
    :partial          => "spree/admin/option_types/index_table_header",
    :disabled         => false
)
