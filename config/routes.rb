Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'default#buildings'
  get 'contact', to: 'default#contact'
  get 'rooms', to: 'default#rooms'
  get 'schedule', to: 'default#schedule'
end
