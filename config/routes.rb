Rails.application.routes.draw do
  resources :songs
  resources :artists do
    resources :songs, only: %i[show index]
  end
end
