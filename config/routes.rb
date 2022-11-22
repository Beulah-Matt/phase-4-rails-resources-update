Rails.application.routes.draw do
  #We can update the resources since we are using all five
  resources :birds
  # resources :birds, only: [:index, :show, :create, :update, :destroy]

  #custom route to increment likes
  patch "/birds/:id/like", to: "birds#increment_likes"
end
