Rails.application.routes.draw do
  get '/' => 'homes#top'
  get 'books/index' => 'books#index'
  get 'books/show' => 'books#show'
  get 'books/edit' => 'books#edit'
  # resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
