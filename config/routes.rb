Rails.application.routes.draw do

  get 'events/index'
  get 'events/show'
  get 'events/new'
  get 'events/edit'
  get '/top' => "home#top"
  get '/map' => "maps#index"
  get '/infomation' => "home#infomation"
  post '/logout' => "home#logout"
  post '/login' => "home#login"

  post '/user/create' => "users#create"
  post '/user/:id/update' => "users#update"
  post '/user/:id/destroy' => "users#destroy"
  get '/user/index' => "users#index"
  get '/user/:id/show' => "users#show"
  get '/user/:id/edit' => "users#edit"
  get '/user/new' => "users#new"

  get '/events/index' => "events#index"
  get '/events/new' => "events#new"
  get '/events/:id/show' => "events#show"
  post '/events/create' => "events#create"
  post '/events/:id/update' => "events#update"
  post '/events/:id/destroy' => "events#destroy"
  post '/events/:id/attendance_create' => "events#attendance_create"
  post '/events/:id/attendance_update' => "events#attendance_update"

  get '/map/edit' => "maps#edit"
  post '/map/create' => "maps#create"
  post '/map/:id/destroy' => "maps#destroy"
  get '/map/:id/view' => "maps#view"


end
