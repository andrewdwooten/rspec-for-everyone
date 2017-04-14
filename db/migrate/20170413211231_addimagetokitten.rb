class Addimagetokitten < ActiveRecord::Migration[5.0]
  def change
    add_column :kittens, :image_url, :string
  end
end
