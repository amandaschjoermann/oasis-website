class CategoriesController < ApplicationController
  def show
    @categories = Category.all
    @channels = Channel.all
    @category = Category.find(params[:id])
  end
end
