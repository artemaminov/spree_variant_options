Spree::Api::ApiHelpers.class_eval do

  def option_value_attributes
    [:id, :name, :presentation, :option_type_name, :option_type_id, :option_type_presentation, :image]
  end


end