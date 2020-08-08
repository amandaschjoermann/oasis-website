class ChannelsController < ApplicationController
  def index
    @category = Category.all.first
  end
end
