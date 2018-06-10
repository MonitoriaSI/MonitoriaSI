class ReportsController < ApplicationController
    before_action :authenticate_user!


    def index
        @users = User.all
        @teams = Team.all
        @alunos = Person.all
        @semesters = Semester.all
        @discliplines = Discipline.all     
    end

    def create
        print "teste"
    end

    def teste
        print "teste"
    end
    
end
