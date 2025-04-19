class ReviewsController < ApplicationController
  before_action :set_restaurant

  def new
    # a new review instance associated with the restaurant
    @review = @restaurant.reviews.new
  end

  def create
   @review = @restaurant.reviews.new(review_params)
   if @review.save
      redirect_to @restaurant, notice: "Review was successfully created."
   else
      render :new, status: :unprocessable_entity
   end
  end

  private


  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  # Permit only the relevant review parameters
  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
