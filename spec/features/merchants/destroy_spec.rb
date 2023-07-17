require 'rails_helper'

RSpec.describe "As a visitor" do
  describe "When I visit a merchant show page" do
    it "I can delete a merchant" do
      merchant_1 = Merchant.create(name: "Meghan" ,address: "123 something street" , city: "Hershey", state: "PA", zip: 17033 )
      visit "merchants/#{merchant_1.id}"

      click_on "Delete Merchant"

      expect(current_path).to eq('/merchants')
      expect(page).to_not have_content("Meghan")
    end
    it "I can delete a merchant AND its items" do
      merchant_1 = Merchant.create(name: "Meghan" ,address: "123 something street" , city: "Hershey", state: "PA", zip: 17033 )
      tire = merchant_1.items.create(name: "Gatorskins", description: "They'll never pop!", price: 100, image: "https://www.rei.com/media/4e1f5b05-27ef-4267-bb9a-14e35935f218?size=784x588", active_inactive: true, inventory: 12)
      chain = merchant_1.items.create(name: "Chain", description: "It'll never break!", price: 50, image: "https://www.rei.com/media/b61d1379-ec0e-4760-9247-57ef971af0ad?size=784x588", active_inactive: true, inventory: 5)

      visit "merchants/#{merchant_1.id}"

      click_on "Delete Merchant"

      expect(current_path).to eq('/merchants')
      expect(page).to_not have_content("Meghan")
    end
  end
end
