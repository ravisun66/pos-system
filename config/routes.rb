Rails.application.routes.draw do
  root to: "products#list"
  resources :products
  get 'tags/:tag', to: 'products#index', as: "tag"
  get 'from_list_tags/:tag', to: 'products#list', as: "list_tag"
  resources :bills
end
