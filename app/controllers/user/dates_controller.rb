class User::DatesController < ApplicationController
  def index
    @dates = current_user.official_dates
  end

  def new
    @match = Match.find(params[:match_id])
    @date = MatchDate.new
  end

  def create
    @match = Match.find(params[:match_id])
    @date = MatchDate.new(date_params)

    if @date.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def date_params
    params.require(:match_date).permit(:start_at)
  end
end
