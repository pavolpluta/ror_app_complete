Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  namespace :admin do
    resources :buildings do
      resources :rooms, except: [:index]
    end

    resources :courses do
      resources :lessons
    end

    resources :students
    resources :teachers

    root to: 'dashboard#index'
  end

  root to: 'default#buildings'
  get 'buildings/:id', to: 'default#show', as: 'show_building'
  get 'contact', to: 'default#contact'
  get 'buildings/:id/:room_id/schedule', to: 'default#schedule', as: 'schedule'
  get 'buildings/:id/day_info', to: 'default#day_info', as: 'day_info'
end
