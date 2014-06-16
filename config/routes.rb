Rails.application.routes.draw do
  get 'movies/show'

  get 'movie/show'

  resources :movies
  root to: redirect('/movies')
end
