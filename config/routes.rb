Rails.application.routes.draw do

  root 'locations#new'

  resources :locations

end
