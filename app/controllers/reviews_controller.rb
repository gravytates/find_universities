class ReviewsController < ApplicationController
  # before_action :authenticate_user!

  def new
    @review = Review.new
    @university = University.find_university(params[:id])
  end

  def create
    Review.create_review(review_params)
    redirect_to university_path(review_params[:university_id])
  end

private
  def review_params
    params.require(:review).permit(:author, :content, :rating, :university_id)
  end
end
