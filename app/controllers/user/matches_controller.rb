class User::MatchesController < ApplicationController
  def new
    @friend = User.find(params[:friend_id])
    # Compare user with the actual user and friend to find the potencial matchees
    @available_matchees = current_user.available_matchees_for(@friend)
  end

  def create
    @friend = User.find(params[:friend_id])
    @match = Match.new(match_params)
    @match.user = current_user
    @match.friend = @friend
  end

  private

  def match_params
    params.require(:match).permit(:matchee_id, :content)
  end
end
