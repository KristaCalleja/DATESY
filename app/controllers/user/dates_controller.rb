class User::DatesController < ApplicationController
  def index
    @dates = current_user.official_dates
  end

  def show
    @date = Match.find(params[:match_id]).match_date.id
  end

  def new
    @match = Match.find(params[:match_id])
    @date = MatchDate.new
  end

  def create
    @match = Match.find(params[:match_id])
    @date = MatchDate.new(date_params)

    if @date.save
      Match.find(params[:match_id]).update(match_date_id: @date.id)
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
