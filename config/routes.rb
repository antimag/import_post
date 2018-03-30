Rails.application.routes.draw do
  post :import, to: 'posts#import'
  post :create_post, to: 'posts#create'
  patch "update_post/:id", to: 'posts#update'
  delete 'delete_post/:id', to: 'posts#delete'
  get 'post_detail/:id', to:'posts#show'
end
