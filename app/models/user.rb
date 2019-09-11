class User < ApplicationRecord
    has_many :userchannels
    has_many :channels, through: :userchannels
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end
