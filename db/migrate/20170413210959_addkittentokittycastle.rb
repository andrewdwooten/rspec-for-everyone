class Addkittentokittycastle < ActiveRecord::Migration[5.0]
  def change
    add_reference :kittens, :kitty_castle, index: true
  end
end
