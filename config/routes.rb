Rails.application.routes.draw do
root to: "homes#top"
devise_for :users

 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :postlmages, only: [:new, :create, :index, :show, :destroy]do
 resources :post_comments, only: [:create]
end

resources :users, only: [:show, :edit, :update]

get 'homes/about' => 'homes#about', as: 'about'

end