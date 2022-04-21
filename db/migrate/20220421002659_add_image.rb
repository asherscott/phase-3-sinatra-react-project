class AddImage < ActiveRecord::Migration[6.1]
  def change
    add_column(:games, :image, :string, default: "https://cohenwoodworking.com/wp-content/uploads/2016/09/image-placeholder-500x500.jpg")
  end
end
