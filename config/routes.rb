Rails.application.routes.draw do
  resources :answers
  resources :replicas, except: :new
  resources :text_replicas
  resources :image_replicas
  resources :steps do
    resources :text_replicas
    resources :image_replicas
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
