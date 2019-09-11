class UserchannelsController < ApplicationController
    def index
        channel = Channel.find_by(id: params[:channel_id])
        if channel
            users= channel.users
            render :json => users
        else
            render json: { message: 'Channel not found'}
        end
    end
   
end
