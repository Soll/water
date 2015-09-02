Rails.application.routes.draw do
  root "home#index"
  resources :item_types, :items, :price_groups, :price_group_lines, :customers,
            :locations
end
