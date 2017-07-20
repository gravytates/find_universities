class ReviewsController < ApplicationController

  def new
    Review.new
  end

  def create
    university = University.find_university(params[:id])
    review = university.reviews.create(review_params)
    review.user_id = current_user.id
    review.create_review

  end

private
  def review_params
    params.require(:review).permit(:author, :content, :rating)
  end
end
