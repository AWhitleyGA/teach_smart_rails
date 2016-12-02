Rails.application.routes.draw do
  post 'auth_user' => 'authentication#authenticate_user'
  resources :courses do
    resources :lessons
    resources :assignments
  end
end
