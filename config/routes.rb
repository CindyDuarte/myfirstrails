Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'students#index1'
  resources :students
  #get '/students', to: "students#index1"
  #get '/students/new', to: "students#new"
  #get '/students/:id', to: "students#show"  
  #get '/students/:id/edit', to: "students#edit"
  #post '/students', to: "students#create"
  #patch '/students/:id', to: "students#update"
  #delete '/students/:id', to: "students#update"
 
end
