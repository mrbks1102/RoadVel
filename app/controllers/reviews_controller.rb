class ReviewsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.save
    redirect_to post_path(@review.post)
  end

  private
    def review_params
      params.require(:review).permit(:post_id, :body)
    end
end
