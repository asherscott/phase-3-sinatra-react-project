class AddLikes < ActiveRecord::Migration[6.1]
  def change
    add_column(:reviews, :likes, :integer, default: 0)
  end
end
