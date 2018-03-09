require 'spec_helper'
require 'capybara/rspec'
require 'capybara'


feature 'Battle' do
  scenario 'Enter a player name in the form and see it displayed' do
    sign_in_and_play
    expect(page).to have_content 'Bob vs Tom'
  end

  scenario 'Checking player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Tom:60 HP'
  end
end
