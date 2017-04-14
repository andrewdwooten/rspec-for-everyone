class User < ApplicationRecord
  has_secure_password
  has_many :kitty_castles
  has_many :kittens, through: :kitty_castles
  validates :username, uniqueness: true, presence: true

  def castle_count
    kitty_castles.count
  end

  def kitty_count
    kittens.count
  end

end
