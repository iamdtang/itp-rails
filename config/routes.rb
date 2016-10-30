Rails.application.routes.draw do
  resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/courses', to: 'courses#index', as: 'courses'
  get '/courses/:id', to: 'courses#show', as: 'course'
end
