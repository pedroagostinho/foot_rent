class BookingsController < ApplicationController
  def index
    @club = Club.find(params[:club_id])
    @bookings = Booking.where(club_id: current_club.id)
  end

  def show
    @club = Club.find(params[:club_id])
    @booking = Booking.find(params[:id])
  end

  def new
    @club = Club.find(params[:club_id])
    @booking = Booking.new
  end

  def create
    @club = Club.find(params[:club_id])
    @booking = Booking.new(booking_params)
    @booking.club = @club

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
end
