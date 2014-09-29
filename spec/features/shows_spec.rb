require 'rails_helper'

feature 'CRUD shows' do
  scenario 'User can see Welcome on homepage' do
    visit root_path
    expect(page).to have_content 'Welcome'
  end
end