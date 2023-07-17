require 'rails_helper'


RSpec.describe 'item show page', type: :feature do
  it 'shows item info' do
    meg = Merchant.create(name: "Meg's Bike Shop", address: '123 Bike Rd.', city: 'Denver', state: 'CO', zip: 80203)
    chain = meg.items.create(name: "Chain", description: "It'll never break!", price: 50, image: "https://www.rei.com/media/b61d1379-ec0e-4760-9247-57ef971af0ad?size=784x588", active_inactive: true, inventory: 5)

    visit "items/#{chain.id}"

    expect(page).to have_content(chain.name)
    expect(page).to have_content(chain.description)
    expect(page).to have_content(chain.price)
    expect(page).to have_content(chain.active_inactive)
    expect(page).to have_content(chain.inventory)
    expect(page).to have_content(chain.merchant.name)
  end

  it 'has a link to update the item' do
    meg = Merchant.create(name: "Meg's Bike Shop", address: '123 Bike Rd.', city: 'Denver', state: 'CO', zip: 80203)
    chain = meg.items.create(name: "Chain", description: "It'll never break!", price: 50, image: "https://www.rei.com/media/b61d1379-ec0e-4760-9247-57ef971af0ad?size=784x588", active_inactive: true, inventory: 5)

    visit "/items/#{chain.id}"

    expect(page).to have_link("Edit Item")

    click_on "Edit Item"

    expect(current_path).to eq("/items/#{chain.id}/edit")
  end

end
