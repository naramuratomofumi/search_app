Rails.application.routes.draw do
  devise_for :users
  root "items#index"
  resources :items, only: [:new, :create, :show, :edit, :update] do
    collection do       # collection /items/searchのようにidを伴わないパスを追加するときに使う。
      get 'search'
    end
  end
end
