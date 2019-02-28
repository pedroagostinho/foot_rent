class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(club_id: current_club.id)
  end

  # def show
  #   @club = Club.find(params[:club_id])
  #   @booking = Booking.find(params[:id])
  # end

  def new
    @club = current_club
    @player = Player.find(params[:player_id])
    @booking = Booking.new
  end

  def create
    @club = current_club
    @player = Player.find(params[:player_id])
    @booking = Booking.new(booking_params)
    @booking.player = @player
    @booking.club = @club

    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  # def destroy
  #   @booking = Booking.find(params[:id])
  #   @booking.destroy
  #   redirect to club_bookings_path
  # end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :player_id)
  end
end



  # def create
  #   @restaurant = Restaurant.find(params[:restaurant_id])
  #   @review = Review.new(review_params)
  #   @review.restaurant = @restaurant
  #   if @review.save
  #     redirect_to @restaurant
  #   else
  #     render :new
  #   end
  # end
