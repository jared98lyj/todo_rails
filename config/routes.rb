Rails.application.routes.draw do
    resources :todo_managers do 
        member do
            patch :complete
        end
    end 

    get 'INDEX', to: 'todo_managers#index'  

    root 'todo_managers#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

