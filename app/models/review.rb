class Review < ActiveRecord::Base
    belongs_to :game
    belongs_to :user

    def username
        User.all.find(self.user_id).name
    end
end