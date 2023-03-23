Rails.application.routes.draw do
  resources :movies, only: [:index, :show]

  # renders summary for a specific movie
  get '/movies/:id/summary', to: 'movies#summary'

  # renders summaries for a collection of movies
  get '/movies_summaries', to: 'movies#summaries'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end