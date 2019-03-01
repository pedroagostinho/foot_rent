class StatsController < ApplicationController
  def new
    @player = Player.find(params[:player_id])
    @stat = Stat.new
  end

  def create
    @player = Player.find(params[:player_id])
    @stat = Stat.new(stat_params)
    @stat.player = @player

    if @stat.save
      redirect_to player_path(@player)
    else
      render :new
    end
  end

  private

  def stat_params
    params.require(:stat).permit(:goals, :assists, :games_played, :form)
  end
end
