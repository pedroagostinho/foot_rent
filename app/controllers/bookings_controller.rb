class BookingsController < ApplicationController
  before_action :set_player, except: :destroy

  def index
    @bookings = Booking.where(club_id: current_club.id)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.club = current_club
    @booking.player = @player

    if @booking.save
      redirect_to club_bookings_path
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect to club_bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_player
    @player = Player.find(params[:player_id])
  end
end
