class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(valid_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant #here you are assigning the value of @restaurant (which contains the id from prev line)
    if @review.save
      redirect_to restaurant_path(@review.restaurant_id) #this will redirect you to the id of what you just created (line 11)
    else
      render :new
    end
  end

  private

  def valid_params
    params.require(:review).permit(:content, :rating)
  end
end

=begin
line 4: has to be like this because if you think logically, you are going inside AND inside the restaurant id to get the review
if you look at rails router, helps a ton. you are searching for a specific restaurant's review. you are not looking at a random
review.

line 11: you are acessing @review.restaurant thanks to the belongs_to and has_many. what is inside this? the @restaurant from the
prev line(which contains an id). @review.restaurant is looking for an id. you assign it the one from line 10.
=end
