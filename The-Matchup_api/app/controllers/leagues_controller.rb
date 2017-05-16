class LeaguesController < ApplicationController
  def index
    @leagues = League.all

    render json: @leagues
  end

  def show
    @league = League.find(params[:id])
    @teams = @league.teams

    render json: @league, include :teams
  end
end
