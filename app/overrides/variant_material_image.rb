Deface::Override.new(
    :virtual_path  => "spree/admin/variants/_form",
    :name          => "variant_material_image",
    :insert_bottom => "[data-hook='presentation']",
    :partial          => "spree/admin/variants/material_image",
    :disabled      => false
)
