class Review < ActiveRecord::Base
    belongs_to :game
    belongs_to :user

    def username
        User.all.find(self.user_id).name
    end

    def self.randomize_likes
        self.all.map do |review|
            review.update(:likes => rand(-10..30))
        end
    end
end