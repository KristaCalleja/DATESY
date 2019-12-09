class User::MatchesController < ApplicationController
  def index
    @matches_to_be_confirmed = current_user.friend_matches.matchmaker_matched
    @matches_to_be_accepted = current_user.matchee_matches.friend_accepted
  end

  def new
    @friend = User.find(params[:friend_id])
    @match = Match.new
    # Compare user with the actual user and friend to find the potencial matchees
    @available_matchees = current_user.available_matchees_for(@friend)
  end

  def create
    @friend = User.find(params[:friend_id])
    @match = Match.new(match_params)
    @match.matchmaker = current_user
    @match.friend = @friend
    @match.save

    redirect_to new_user_friend_match_path(@friend)
  end

  def status_change
    @match = Match.find(params[:match_id])
    @match.status = params[:status]
    @match.save

    redirect_to user_matches_path
  end

  private

  def match_params
    params.require(:match).permit(:matchee_id, :content, :status)
  end
end
