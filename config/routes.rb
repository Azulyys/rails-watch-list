Rails.application.routes.draw do
  root to: "pages#home"
  # get 'pages/home'

  resources :lists, only:[:create, :index, :new, :show]  do
    resources :bookmarks, only: [:create, :new]
  end
  resources :bookmarks, only: [:destroy]
end
