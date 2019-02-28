class PlayersController < ApplicationController
  def index
    @players = Player.where.not(club_id: current_club.id)
  end

  def show
    @player = Player.find(params[:id])

    @club = @player.club

    @markers = [{
      lng: @club.longitude,
      lat: @club.latitude,
      infoWindow: render_to_string(partial: "infowindow", locals: { club: @club }),
      image_url: helpers.asset_url('soccer-icon.jpg')
    }]
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      redirect_to @player
    else
      render :new
    end
  end

  def update
    @player = Player.find(params[:id])
    @player.update(player_params)
    redirect_to @player
  end

  def my_players
    @my_players = Player.where(club_id: current_club.id)
  end

  private

  def player_params
    params.require(:player).permit(:name, :position, :value_per_match, :nationality, :social_url, :age, :photo, :availability)
  end
end
