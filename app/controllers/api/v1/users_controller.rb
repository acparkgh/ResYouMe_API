class Api::V1::UsersController < ApplicationController

  def index
    users = User.all 
    render json: users, include: [:resume => {include:[:job_type]}]
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  private

  def user_parmas
    params.require(:user).permit(:first_name, :last_name, :address, :phone_number, :email, :password)
  end

end
