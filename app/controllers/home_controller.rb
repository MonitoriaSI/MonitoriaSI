class HomeController < ApplicationController
  def index
    @teams = Team.all

    if params[:search]
      @people = Person.where("nome LIKE ?", "%"+params[:search]+"%")
    else
      @people = nil
    end
  end

end
