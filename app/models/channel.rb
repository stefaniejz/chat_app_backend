class Channel < ApplicationRecord
    has_many :userchannels
    has_many :users, through: :userchannels
    
    has_many :messages

    def members
        self.users
    end

    def member_count
        self.users.length
    end
end
