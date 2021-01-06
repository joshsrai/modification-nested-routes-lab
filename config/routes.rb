Rails.application.routes.draw do
  resources :artists do
    resources :songs, only: [:index, :show, :new, :edit]
  end
  resources :songs
end

# Using nested resources, set up routes and controller actions to create new song records through an artist. Hint: Don't forget to update the strong parameters.
# the nested routes were already setup 