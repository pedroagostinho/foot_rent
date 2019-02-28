class ReviewsController < ApplicationController
  def new
    @club = current_club
    @player = Player.find(params[:player_id])
    @review = Review.new
  end

  def create
    @player = Player.find(params[:player_id])
    @review = Review.new(review_params)
    @review.player = @player

    if @review.save
      redirect_to player_path
    else
      render :new
    end
  end

  def review_params
    params.require(:review).permit(:content, :stars)
  end
end


