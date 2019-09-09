class Channel < ApplicationRecord
    has_many :userchannels
    has_many :users, through: :userchannels
    
    has_many :messages
    has_many :users, through: :messages

end
