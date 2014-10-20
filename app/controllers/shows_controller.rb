class ShowsController < ApplicationController

  def index
    @show = Show.new
    @shows = Show.all
  end

  def create

  end

end