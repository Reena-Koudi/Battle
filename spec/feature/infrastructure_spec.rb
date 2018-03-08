require 'spec_helper'
require 'capybara/rspec'
require 'capybara'

feature 'Battle' do
  scenario 'Enter a player name in the form and see it displayed' do
    visit('/')
    fill_in :player1, with: 'Bob'
    fill_in :player2, with: 'Tom'
    click_button 'Submit'
    expect(page).to have_content 'Bob vs Tom'
  end

  scenario 'Checking player 2 hit points' do
    visit('/')
    fill_in :player1, with: 'Bob'
    fill_in :player2, with: 'Tom'
    click_button 'Submit'
    expect(page).to have_content 'Tom:60 HP'
  end
end
