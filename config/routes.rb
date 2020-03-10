Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'todos#index'
  resources :todos do
    collection do
      put 'updatecompleted'
    end

  end
  
end
