Rails.application.routes.draw do
  scope "(:locale)", locale: /en|nl/ do
  get '/login', to: 'sessions#new'
  end
end
