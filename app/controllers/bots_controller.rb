class BotsController < ApplicationController
  def show
    @bots = Bot.all
    @bot = Bot.find(params[:id])
  end
end
