require 'rails_helper'

feature 'CRUD shows' do
  scenario 'User can see Welcome on homepage' do
    visit root_path
    expect(page).to have_content 'Welcome'
    click_on 'Add a show'
    fill_in 'Name', with: 'Master Chef'
    fill_in 'Length', with: 45
    click_on 'Add show'
    expect(page).to have_content 'Master Chef'
    expect(page).to have_content 45
  end
end