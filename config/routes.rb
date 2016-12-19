Rails.application.routes.draw do
  resources :blog_posts, :path => "blogposts"
  get 'home/index'
  get 'home/newaction' => 'blog_posts#index'

  get ":title/p/:id" => "blog_posts#show", :id => /[0-9]+/
  root :to => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
