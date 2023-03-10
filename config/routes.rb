Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  get 'appointments/index'
  get 'appointments/delete'
  get 'tutors/index'
  get '/current_user', to: 'current_user#index'
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :tutors, only: [:index, :show, :new, :create, :destroy]
 
  resources :user do
    resources :appointments, only: [:index, :destroy, :create, :show]
  end
  
  get '/csrf_token', to: 'application#csrf_token'

end
