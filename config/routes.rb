Rails.application.routes.draw do
  resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'index#index'
  get '/courses', to: 'courses#index', as: 'courses'
  get '/courses/:id', to: 'courses#show', as: 'course'
  get '/jobs', to: 'jobs#index', as: 'jobs'
  get '/assignments/:id', to: 'assignments#show', as: 'assignment'
end
