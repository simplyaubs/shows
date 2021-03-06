require 'rails_helper'

feature 'CRUD shows' do
  scenario 'User can create a list of shows on homepage' do
    visit root_path
    expect(page).to have_content 'Welcome'
    click 'Add a show'
    fill_in 'Name', with: 'Master Chef'
    fill_in 'Length', with: 45
    click 'Add show'
    expect(page).to have_content 'Master Chef'
    expect(page).to have_content 45
  end

  scenario 'User can update shows' do
    visit root_path
    expect(page).to have_content 'Welcome'
    click 'Add a show'
    fill_in 'Name', with: 'Master Chef'
    fill_in 'Length', with: 45
    click 'Add show'
    expect(page).to have_content 'Master Chef'
    expect(page).to have_content 45
    click 'Master Chef'
    expect(page).to have_content 'Master Chef'
    expect(page).to have_content 45
    click 'Edit'
    fill_in 'Name', with: 'Shield'
    fill_in 'Length', with: 55
    click 'Update show'
    expect(page).to_not have_content 'Master Chef'
    expect(page).to_not have_content 45
    expect(page).to have_content 'Shield'
    expect(page).to have_content 55
  end

  scenario 'User can delete a show' do
    visit root_path
    expect(page).to have_content 'Welcome'
    click 'Add a show'
    fill_in 'Name', with: 'Master Chef'
    fill_in 'Length', with: 45
    click 'Add show'
    expect(page).to have_content 'Master Chef'
    expect(page).to have_content 45
    click 'Master Chef'
    expect(page).to have_content 'Master Chef'
    expect(page).to have_content 45
    click 'Delete'
    expect(page).to_not have_content 'Master Chef'
    expect(page).to_not have_content 45
  end
end