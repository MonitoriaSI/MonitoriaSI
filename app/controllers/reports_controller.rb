class ReportsController < ApplicationController
    before_action :authenticate_user!
    def index
        @teams = Team.all  
        @events = Event.all
        @evaluations = Evaluation.order("nota desc").limit(10)
        if params[:team_id]
            @events = Event.where(team_id: params[:team_id])
        else
            @events = Event.all
        end
    end  
end
