class AddDisplayAtVariantToOptionTypes < ActiveRecord::Migration
  def up
    add_column :spree_option_types, :display_at_variant, :boolean, :default => false
  end

  def down
    remove_column :spree_option_types, :display_at_variant
  end
end
