class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(strong_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant) #this is from line 15. this will redirect you to what you just created.
    else
      render :new
    end
  end

  private

  def strong_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end

=begin
line 16-19: if it successfuly saves, go to line 17. if not, tell the user what is missing etc. you dont want their website to load,
which means removing all the information they have entered.

line 25. strong params, the :restaurant means it is looking at that hash which contains 4 elements (see below)
param => {restaurant => {name: "", address: "", phone_number: "", category: ""}}
=end
