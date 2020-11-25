Rails.application.routes.draw do
  root 'flights#index'

  resources :flights
end

# Rails.application.routes.draw do
#   root 'flights#index'

#   resources :flights do
#     get 'airports', on: :collection
#   end
# end
