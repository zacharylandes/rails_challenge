Rails.application.routes.draw do

  resources :students do
    resources :addresses
  end

  resources :courses 
    # resources :students
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
