class TeamsController < ApplicationController
  def index
    @teams = Team.all

    render json: @teams
  end

  def show
    @league = League.find(params[:league_id])
    @team = Team.find(params[:id])
    render json: @team, include: :league
  end
end
