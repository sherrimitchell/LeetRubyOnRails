Rails.application.routes.draw do
 
  root to: 'users#user_sign_in'

 #User
  post 'users/register', to: 'users#user_register'
  post 'users/sign_in', to: 'users#user_sign_in'
  get 'user/:username', to: 'users#show'
  put 'users/:username', to: 'users#update'
  delete 'users/:username/delete', to: 'users#delete'
  get 'users', to: 'users#index'

 #Flight
  post 'flights/create', to: 'flights#create'
  get 'flight/:flight_number', to: 'flights#look_up'
  put 'flight/:flight_number', to: 'flights#update'
  delete 'flight/:flight_number', to: 'flights#delete'
  get 'flights', to: 'flights#index'

 #Airport
  post 'airport/create', to: 'airports#create'
  get 'airport/:short_name', to: 'airports#look_up'
  put 'airport/:short_name', to: 'airports#update'
  delete 'airport/:short_name', to: 'airports#delete'
  get 'airports', to: 'airports#index'

end
