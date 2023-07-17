require 'rails_helper'


RSpec.describe "New Merchant Page" do
  describe "As a visitor" do
    describe "Once I've clicked on the Create a New Merchant from the index page" do
      it "I can use the new merchant form to create a merchant" do
        visit '/merchants/new'

        name = "Sal's Calz(ones)"
        address = '123 Kindalikeapizza Dr.'
        city = "Denver"
        state = "CO"
        zip = 80204

        fill_in :name, with: name
        fill_in :address, with: address
        fill_in :city, with: city
        fill_in :state, with: state
        fill_in :zip, with: zip

        click_button 'Create Merchant'

        expect(current_path).to eq('/merchants')
        expect(page).to have_content(name)
      end
    end
  end
end
