class Game < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

    def avg_rating 
        if(self.reviews.count > 0)
            sum = self.reviews.sum(:rating)
            return (sum.to_f / self.reviews.count).round(1)
        end
        0
    end

    def sort_review_by_likes
        self.reviews.sort do |a, b|
            b.likes <=> a.likes
        end
    end
end