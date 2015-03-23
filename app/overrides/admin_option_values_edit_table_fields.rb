Deface::Override.new(
    :virtual_path     => "spree/admin/option_types/_option_value_fields",
    :name             => "admin_option_values_edit_table_fields",
    :insert_before    => "td.actions",
    :partial          => "spree/admin/option_value/option_value_fields",
    :disabled         => false
)
