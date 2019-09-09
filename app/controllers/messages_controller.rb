class MessagesController < ApplicationController
    def index 
        messages = Message.where("id > ? AND channel_id = ?", params[:last_message_id], params[:channel_id])
        render json: messages.to_json(:include => {
            :user => {:only => [:name, :avatar]}
        })
    end
end
