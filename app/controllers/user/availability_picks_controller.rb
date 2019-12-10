class User::AvailabilityPicksController < ApplicationController
  def new
  end

  def create
    current_user.availabilities.thursday.update(times: params[:availability_thursday][:times].reject(&:empty?))
    current_user.availabilities.friday.update(times: params[:availability_friday][:times].reject(&:empty?))
    current_user.availabilities.saturday.update(times: params[:availability_saturday][:times].reject(&:empty?))
    redirect_to root_path
  end
end
