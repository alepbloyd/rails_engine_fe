require 'rails_helper'

RSpec.describe "merchant index page", type: :feature do
  
  it 'displays a list of all merchants sorted by name' do
    visit '/merchants'

    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_content("Klein, Rempel and Jones")
  end

  it 'each merchant name links to that merchant\'s show page' do
    visit '/merchants'

    click_on "Schroeder-Jerde"

    expect(current_path).to eq("/merchants/1")

    expect(page).to have_content("Schroeder-Jerde")
  end

end

# As a visitor,
# When I visit '/merchants'
# I should see a list of merchants by name
# and when I click the merchant's name
# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.