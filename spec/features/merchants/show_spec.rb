require 'rails_helper'


RSpec.describe 'merchant show page', type: :feature do
  it 'shows list of merchants information' do
    merchant_1 = Merchant.create(name: "Meghan" ,address: "123 something street" , city: "Hershey", state: "PA", zip: 17033 )

    visit "/merchants/#{merchant_1.id}"

    expect(page).to have_content(merchant_1.name)
    expect(page).to have_content("Address: #{merchant_1.address}")
    expect(page).to have_content("City: #{merchant_1.city}")
    expect(page).to have_content("State: #{merchant_1.state}")
    expect(page).to have_content("Zip: #{merchant_1.zip}")
  end

  it 'has a link to update that merchant' do
    merchant_1 = Merchant.create(name: "Meghan" ,address: "123 something street" , city: "Hershey", state: "PA", zip: 17033 )

    visit "/merchants/#{merchant_1.id}"

    click_on "Update Merchant Info"

    expect(current_path).to eq("/merchants/#{merchant_1.id}/edit")
  end

  it 'has a link to delete that merchant' do
    merchant_1 = Merchant.create(name: "Meghan" ,address: "123 something street" , city: "Hershey", state: "PA", zip: 17033 )

    visit "/merchants/#{merchant_1.id}"

    expect(page).to have_link("Delete Merchant")
  end

end
