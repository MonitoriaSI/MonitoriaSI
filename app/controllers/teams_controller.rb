class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /teams
  # GET /teams.json
  def index
    @teams = Team.all
  end

  # GET /teams/1
  # GET /teams/1.json
  def show

    if params[:name] 
       if current_user.person.events.include? Event.find(params[:name])
        Event.find(params[:name]).people.delete(current_user.person)
        current_user.person.events.delete(Event.find(params[:name]))
       else
          current_user.person.events << Event.find(params[:name])
       end
    end

    @alunos = Person.aluno
    @events = @team.events
    @event = Event.new
    @event.team = @team
  end

  # GET /teams/new
  def new
    @team = Team.new
    @semesters = Semester.all
    @discliplines = Discipline.all
  end

  # GET /teams/1/edit
  def edit
    @semesters = Semester.all
    @discliplines = Discipline.all
  end

  # POST /teams 
  # POST /teams.json
  def create
    @team = Team.new(team_params)

    respond_to do |format|         
      
      if( Team.where(discipline_id:team_params[:discipline_id], semester_id:team_params[:semester_id]).size > 0)
       format.html { redirect_to teams_path, notice: 'Já existe uma turma com essa disciplina para o semestre informado.' }
      else
        if @team.save
          format.html { redirect_to @team, notice: 'Team was successfully created.' }
          format.json { render :show, status: :created, location: @team }
        else
          format.html { render :new }
          format.json { render json: @team.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /teams/1
  # PATCH/PUT /teams/1.json
  def update
    respond_to do |format|
      if @team.update(team_params)
        format.html { redirect_to @team, notice: 'Team was successfully updated.' }
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1
  # DELETE /teams/1.json
  def destroy
    @team.destroy
    respond_to do |format|
      format.html { redirect_to teams_url, notice: 'Team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_params
      params.require(:team).permit(:discipline_id, :semester_id, :editalAnexo, :monitor_id)
    end
end
