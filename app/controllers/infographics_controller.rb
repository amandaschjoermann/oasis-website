class InfographicsController < ApplicationController
  def index
    @infographics = Infographic.all
  end
end
