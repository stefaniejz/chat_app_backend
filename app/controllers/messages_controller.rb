class MessagesController < ApplicationController
    def index 
        messages = Message.where("id > ? AND channel_id = ?", params[:last_message_id], params[:channel_id])
        render json: messages.to_json(:include => {
            :user => {:only => [:name, :avatar]}
        })
    end

    def create
        puts params[:content]
        puts params[:user_id]
        puts params[:channel_id]
        message= Message.new
        message.message_type="text"
        message.content= params[:content]
        message.user_id=params[:user_id]
        message.channel_id=params[:channel_id]
        message.save
        puts  message.errors.full_messages
    end
end
