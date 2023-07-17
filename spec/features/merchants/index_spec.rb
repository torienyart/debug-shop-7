require 'rails_helper'


RSpec.describe 'merchant index page', type: :feature do
  describe 'As a user' do
    before :each do
      @meg = Merchant.create(name: "Meggs Eggs", address: '123 Meggplant Rd.', city: 'Denver', state: 'CO', zip: 80203)
      @brian = Merchant.create(name: "Brians Fry'ns", address: '125 Frieswiththat St.', city: 'Denver', state: 'CO', zip: 80210)
    end

    it 'I see a list of all merchants by name' do

      visit '/merchants'

      expect(page).to have_content(@meg.name)
      expect(page).to have_content(@brian.name)
    end

    it 'I see a link to create a new merchant' do
      visit '/merchants'

      expect(page).to have_link("Create a New Merchant")

      click_on "Create a New Merchant"

      expect(current_path).to eq('/merchants/new')
    end

  end
end
