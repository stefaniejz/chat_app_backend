class User < ApplicationRecord
    has_many :userchannels
    has_many :channels, through: :userchannels
end
