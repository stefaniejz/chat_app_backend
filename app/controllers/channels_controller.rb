class ChannelsController < ApplicationController

    def index
        user = User.find_by(id: params[:user_id])
        if user
            channels = user.channels
            render json: channels
        else
            render json: { message: 'User not found'}
        end
        
    end
end
