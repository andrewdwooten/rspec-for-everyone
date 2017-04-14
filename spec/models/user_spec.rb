require 'rails_helper'

describe Kitten, type: :model do
  it { should validate_presence_of :name }
  it { should belong_to(:kitty_castle) }
end
#does not work
