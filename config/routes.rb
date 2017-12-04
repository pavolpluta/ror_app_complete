Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  namespace :admin do
    resources :buildings
  end

  root to: 'default#buildings'
  get 'buildings/:id', to: 'default#show', as: 'show_building'
  get 'contact', to: 'default#contact'
  get 'schedule', to: 'default#schedule'
  get 'day_info', to: 'default#day_info'
end
