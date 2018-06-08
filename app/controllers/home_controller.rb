class HomeController < ApplicationController
  def index
    @teams = Team.all
  end

end
