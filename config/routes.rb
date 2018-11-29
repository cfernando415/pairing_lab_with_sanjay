Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, :books
  post "/book_authors", to: "bookauthors#create", as: "book_authors"
  delete "/book_authors/:id", to: "bookauthors#destroy", as: "bookauthor"
end
