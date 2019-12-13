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
      @match.update(match_date_id: @date.id)
      redirect_to  user_match_path(@match)
    else
      render :new
    end
  end

  private

  def date_params
    params.require(:match_date).permit(:start_at, :match_date_id)
  end
end
