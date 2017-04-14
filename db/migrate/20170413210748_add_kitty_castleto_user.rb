class AddKittyCastletoUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :kitty_castles, :user, index: true
  end
end
