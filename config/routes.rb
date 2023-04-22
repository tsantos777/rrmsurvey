Rails.application.routes.draw do
  resources :contacts
  resources :quiz_results
  get 'quiz/index'
  get 'quiz/about'
  get '/about', to: redirect('/quiz/about')
  get "/quiz", to: "quiz#index"
  #get "/quiz_results", to: "quiz_result#tbd"
  #get 'quiz_results/(*path)', to: 'quiz_results#show', constraints: { path: /.*/ }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root 'survey#index'
  get "/survey", to: "survey#index"

  #match 'quiz_results/:id', to: 'quiz_results#show', via: [:get, :post]


end
