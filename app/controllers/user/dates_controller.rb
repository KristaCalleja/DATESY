class User::DatesController < ApplicationController
  def index
    @dates = current_user.official_dates
  end
end
