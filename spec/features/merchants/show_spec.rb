require 'rails_helper'

RSpec.describe "merchant show page", type: :feature do
  
  it 'displays all items sold by given merchant' do

    visit '/merchants/1'

    expect(page).to have_content("Schroeder-Jerde")

    within "#items" do
      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Item Expedita Aliquam")
    end

  end

end