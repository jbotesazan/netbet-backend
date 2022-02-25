class UsersController < ApplicationController
    skip_before_action :authorize, only: :create

    def create
      user = User.new(user_params)
      if user.valid?
        user.save
        session[:user_id] = user.id
        render json: user, status: :created
      else
        render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
      end
    end
  
    def show
      render json: @current_user, status: :ok
    end
  
    private
  
    def user_params
      params.permit(:username, :password, :password_confirmation, :balance)
    end
end
