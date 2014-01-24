MyWords::Application.routes.draw do
  root to: 'home#index'
  match '/auth/evernote', to: 'auth#evernote', as: :evernote_oauth_callback, via: :get
  match '/logout', to: 'auth#reset', as: :logout, via: :get
  resources :notebooks
end
