class Kitten < ApplicationRecord
  belongs_to :kitty_castle

  def self.kitten_count
    count
  end

  def self.cats_in_a_blender
    destroy_all
  end
end
