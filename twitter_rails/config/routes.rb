Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "users#index"

  # match 'login' => 'authentication#login', as: :login
  # match 'callback' => 'authentication#callback', as: :callback
  # match 'sign_in_with_twitter' => 'authentication#sign_in_with_twitter', as: :sign_in_with_twitter
  # match 'logout' => 'application#destroy_session', as: :logout

  # match 'search' => 'users#search', as: :search
  # post 'change_friendships' => 'users#change_friendships', as: :change_friendships
end
