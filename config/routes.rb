Rails.application.routes.draw do
  resources :image_to_text, only: [:create]
end
