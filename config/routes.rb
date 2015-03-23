Spree::Core::Engine.routes.append do

  namespace :admin do
    resources :option_values do
      collection do
        post :update_positions
      end
    end

    resources :option_types do
      member do
        put :display_at_variant, as: :display_at_variant
      end
    end
  end
  
end
