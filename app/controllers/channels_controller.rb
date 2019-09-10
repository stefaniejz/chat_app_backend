class ChannelsController < ApplicationController

    def index
        user = User.find_by(id: params[:user_id])
        if user
            channels = user.channels
            render :json => channels, :methods => [:members, :member_count]
        else
            render json: { message: 'User not found'}
        end
        
    end

    # def create
    #     user = user.create
    # end
end
