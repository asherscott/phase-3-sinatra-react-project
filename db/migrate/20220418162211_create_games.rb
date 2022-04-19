class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :name, :genre, :developer, :platform, :description
      t.date :release
    end
  end
end
