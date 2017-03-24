Rails.application.routes.draw do
  get 'pages/x'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'pages/save_user'
  # Post es para guardar, de manera más segura que no se vea mi info en el url

  root 'pages#x'
end
