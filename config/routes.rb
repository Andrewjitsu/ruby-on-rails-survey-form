Rails.application.routes.draw do
  get '/' => 'users#index'
  post '/result' =>'users#result'
end
