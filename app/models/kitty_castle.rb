class KittyCastle < ApplicationRecord
  has_many :kittens
  belongs_to :user
  
end
