Rails.application.routes.draw do

  get 'drinks/index'
  get 'drinks/new'
  get 'drinks/show'
  get 'drinks/edit'
  get 'foods/index'
  get 'foods/new'
  get 'foods/show'
  get 'foods/edit'
  root to: 'fridges#index'

  # get 'drink/index'
  # get 'drink/new'
  # get 'drink/show'
  # get 'drink/edit'
  # get 'food/index'
  # get 'food/new'
  # get 'food/show'
  # get 'food/edit'
  # get 'fridges/index'
  # get 'fridges/show'
  # get 'fridges/new'
  # get 'fridges/edit'
  resources :fridges do
    resources :foods
    resources :drinks
  end
end

