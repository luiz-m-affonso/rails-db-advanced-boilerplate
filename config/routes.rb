Rails.application.routes.draw do
  authenticate :user, ->(user) { user.admin? } do
    mount Blazer::Engine, at: "blazer"
  end
  devise_for :users
  root to: 'pages#home'
end
