class LeaguesController < ApplicationController
  def index
    @leagues = League.all

    render json: @leagues
  end

  def show
    @league = League.find(params[:id])

    render json: @league
  end
end
