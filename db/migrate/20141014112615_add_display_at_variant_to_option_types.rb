class AddDisplayAtVariantToOptionTypes < ActiveRecord::Migration
  def up
    add_column :display_at_variant, :boolean, :default => false
  end

  def down
    remove_column :display_at_variant
  end
end
