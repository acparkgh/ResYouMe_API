class Api::V1::UsersController < ApplicationController

  skip_before_action :logged_in?, only: [:create]  

  def index
    users = User.all 
    render json: users, include: [:resume => {include:[:job_type]}]
  end

  def show
    @user = User.find(params[:id])
    render json: @user, include: [:resume => {include:[:job_type]}]
  end

  # For SignUp

  def create
    user = User.new(user_params)

    if user.valid?
      user.save
      render json: {user: user}, status: :created
    else
      render json: {error: "Failed to create a user"}, status: :not_acceptable
    end
  end

  private

  def user_params
    params.permit(:first_name, :last_name, :address, :phone_number, :email, :password)
  end

end
