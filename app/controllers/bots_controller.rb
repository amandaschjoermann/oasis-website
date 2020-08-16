class BotsController < ApplicationController
  def show
    @bots = Bot.all.order("name")
    @bot = Bot.find(params[:id])
  end
end
