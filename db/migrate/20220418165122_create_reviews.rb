class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :rating, :game_id, :user_id
      t.string :comment
      t.date :date
    end
  end
end
