class UsersController < ApplicationController
    #skip_before_action :authorized, only: [:create]

    def index
        users = User.all      
        render json: users       
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
          @token = encode_token(user_id: @user.id)
          render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        else
          render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def show
        user= User.find_by(id:params[:user_id])
        render json:user
    end

    private
    def user_params
      params.require(:user).permit(:username, :password, :avatar)
    end
end
