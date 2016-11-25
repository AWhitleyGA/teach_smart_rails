Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :courses do
    resources :assignments
    resources :lessons
  end

  resources :memberships do
    resources :grades
    resources :attendances
  end

end
