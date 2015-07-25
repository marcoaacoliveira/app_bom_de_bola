class MatchesController < ApplicationController
  before_action :set_match, only: [:show, :edit, :update, :destroy]
  before_action :set_teams, only: [:edit,:new]

  # GET /matches
  # GET /matches.json
  def index
    @matches = Match.all
  end

  # GET /matches/1
  # GET /matches/1.json
  def show
  end

  # GET /matches/new
  def new
    @fields = Field.all
    @match = Match.new
    @challengers = Team.all
  end

  # GET /matches/1/edit
  def edit

    @fields = Field.all
    @challengers = Team.all
  end

  # POST /matches
  # POST /matches.json
  def create
    @match = Match.new(match_params)
    if(params[:match][:team_id] == params[:match][:challenger_id])
      flash[:notice] = 'O time não pode jogar contra ele mesmo'
      return redirect_to action: 'new'
    end
    respond_to do |format|
      if @match.save
        format.html { redirect_to @match, notice: 'Match was successfully created.' }
        format.json { render :show, status: :created, location: @match }
      else
        format.html { render :new }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matches/1
  # PATCH/PUT /matches/1.json
  def update
    prev_match = self
    respond_to do |format|
      if @match.update(match_params)
        CoachNotifier.hanged_match(self,[self.team,self.challenger], prev_match).deliver
        format.html { redirect_to @match, notice: 'Partida atualizada com sucesso, os treinadores foram alertados sobre a mudança.' }
        format.json { render :show, status: :ok, location: @match }
      else
        format.html { render :edit }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matches/1
  # DELETE /matches/1.json
  def destroy
    @match.destroy
    respond_to do |format|
      format.html { redirect_to matches_url, notice: 'Match was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match
      @match = Match.find(params[:id])
    end

    def  set_teams
      @teams = Team.all
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def match_params
      params.require(:match).permit(:when, :team_id, :challenger_id, :where_id)
    end
end
