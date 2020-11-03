class UsersController < ApplicationController
  before_action :check_user, only: %i[show]

  def show
    @user = User.find(user_id)
  end

  private

  def check_user
    unless current_user == @user
      redirect_to root_url, alert: "Sorry, This Profile belongs to someone else !"
    end
  end 
  
end
