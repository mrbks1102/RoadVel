class CategoriesController < ApplicationController
  def index
    @category_id = Category.find(params[:category_id])
    @post = Post.includes(:categories).where(post_category_relations: { category_id: @category_id }).order(created_at: :desc)
  end
end
