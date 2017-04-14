require 'rails_helper'

feature 'guest visits kitten_index' do
  attr_reader :kittens, :user
  let(:user) { Fabricate(:user) }

  before(:each) do
    @kittens = Fabricate.times(3,:kitten)
  end
  let(:kitten) { Fabricate(:kitten) }
  scenario 'they see a bunch of kittens' do

      allow_any_instance_of(ApplicationController)
        .to receive(:current_user)
        .and_return(user)

    visit kittens_path

    expect(page).to have_selector(".kitten", count: 3)

    within all('.kitten').first do
      expect(page).to have_content(kittens[0].name)
    end
    within all('.kitten').last do
      expect(page).to have_content(kittens[2].name)
    end
  end
end
