class UsersController < ApplicationController
    def index
        users = User.all      
        render json: users       
    end

    def show
        user= User.find_by(id:params[:user_id])
        render json:user
    end
end
