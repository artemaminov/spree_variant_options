class AddImageToOptionValues < ActiveRecord::Migration
  def up
    change_table :option_values do |t|
      t.attachment :image
    end
  end

  def down
    drop_attached_file :option_values, :image
  end
end
