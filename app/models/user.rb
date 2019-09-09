class User < ApplicationRecord
    has_many :userchannels
    has_many :channels, through: :userchannels

    has_many :messages
    has_many :channels, through: :messages

end
