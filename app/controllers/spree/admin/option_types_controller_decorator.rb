Spree::Admin::OptionTypesController.class_eval do

  def display_at_variant
    respond_to do |format|
      format.js {
        Spree::OptionType.find(params[:id]).toggle!(:display_at_variant)
        render :text => :ok
      }
    end
  end


end
