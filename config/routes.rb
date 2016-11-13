Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'index#index'
  get '/courses', to: 'courses#index', as: 'courses'
  get '/courses/:id', to: 'courses#show', as: 'course'
  get '/jobs', to: 'jobs#index', as: 'jobs'
  get '/assignments/:id', to: 'assignments#show', as: 'assignment'
  get '/lectures/:id', to: 'lectures#show', as: 'lecture'
  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all
end
