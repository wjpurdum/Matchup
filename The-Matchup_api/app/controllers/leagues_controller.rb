class LeaguesController < ApplicationController
  def index
    @leagues = Leagues.all
  end
end
