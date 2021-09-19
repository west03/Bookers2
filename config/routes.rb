Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'abouts#top'
  resources :books, except: [:new]
  resources :users, except: [:new]

end
