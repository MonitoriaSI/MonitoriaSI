class HomeController < ApplicationController
  def index
    @teams = Team.all
    @chave = " ";
     if params[:search]
      @chave = params[:search]
    end

    # if params[:search]
    #   @people = Person.where("nome LIKE ?", "%"+params[:search]+"%")
    # else
    #   @people = nil
    # end
  end

end
