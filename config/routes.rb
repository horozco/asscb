Asscb::Application.routes.draw do

  root :to => "home#index"

  resources :students
end
