Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do#this correspondes to controller name
    resources :reviews, only: [:new, :create] #this is what rake needs.
  end
end

=begin
line 3-5: this is nested resources. so the result will be: http://blabla/restaurants/reviews/create
=end
