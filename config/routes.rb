MongodbTest::Application.routes.draw do
  
  resources :users
  
  resources :comments do
    member do
      post :upvote
    end
  end

  resources :stories do
    member do
      post :upvote
    end
  end

  resource  :session

  root :to => "stories#index"
  
  match 'signin' => 'sessions#new', :as => :signin


end
