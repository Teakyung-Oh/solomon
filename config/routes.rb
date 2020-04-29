Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  
  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"
  get "posts/show/:id" => "posts#show"
  get "posts/edit/:id" => "posts#edit"
  post "posts/update/:id" => "posts#update"
  get "posts/destroy/:id" => "posts#destroy"
  get "my_page" => "users#show"
  
  get "posts/likes/:post_id" => "likes#create"
  
  get "posts/my_post" => "posts#my_post"
  
  post "posts/:post_id/comments/create" => "comments#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
