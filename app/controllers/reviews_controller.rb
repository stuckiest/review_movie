class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
  
    if @review.save
      redirect_to movie_path
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:movie_id).permit(:opinion)
  end
end
