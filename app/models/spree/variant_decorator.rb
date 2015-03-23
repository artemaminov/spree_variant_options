Spree::Variant.class_eval do

  include ActionView::Helpers::NumberHelper

  # attr_accessible :option_values, :image

  def to_hash
    actual_price  = self.price
    #actual_price += Calculator::Vat.calculate_tax_on(self) if Spree::Config[:show_price_inc_vat]
    {
      :id    => self.id,
      :in_stock => self.in_stock?,
      :price => number_to_currency(actual_price),
      :original_price => number_to_currency(self.original_price),
      :backorderable => self.stock_items.where(:backorderable => true).any?,
      :not_trackable => !self.track_inventory
    }
  end

  def original_price
    self.default_price.amount
  end

  def current_option_value(opt_name)
    self.option_values.detect { |o| o.option_type.name == opt_name }
  end


end
