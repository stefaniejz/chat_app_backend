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

    def get_or_create_direct_channel
        user = User.find_by(id: params[:user_id])
        member = User.find_by(id: params[:member_id])
        #channel = Channel.joins(:users).where(:users => {:id => [user.id, member.id]}).where("channels.channel_type == 'direct'")
        if (user.id > member.id)
            channel_name = member.id.to_s + "_" + user.id.to_s
        else
            channel_name = user.id.to_s + "_" + member.id.to_s
        end
        channel = Channel.where("name = ? AND channel_type == 'direct'", channel_name)
        if !channel.present?
            channel = Channel.create(name:channel_name, channel_type: "direct")
            channel.users << user
            channel.users << member
            channel.save
        else
            channel = channel[0]
        end
        render :json => channel
    end

    # def create
    #     user = user.create
    # end
end
