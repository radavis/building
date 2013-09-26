require 'spec_helper'

feature 'create a building record', %q{
  As a real estatee associate
  I want to record a building
  So that I can refer back to pertinent information
} do

  #
  # Acceptance Criteria
  #
  # * I must specify a street address, city, state, and zip
  #
  # * Only US states can be specified
  #
  # * If I enter all of the required information in the required
  # format, the building is recorded.
  #
  # * If I do not specify all of the required information in the
  # required formats, the building is not recorded and I am presented
  # with errors
  #
  # * Upon successfully creating a building, I am redirected so that
  # I can record another building.
  #

  scenario 'user enters valid information' do
    previous_count = Building.count

    visit new_building_path
    fill_in 'Address', with: '13 Elm Street'
    fill_in 'City', with: 'Canton'
    fill_in 'State', with: 'MA'
    fill_in 'Zip', with: '02021'
    fill_in 'Description', with: 'Quite a frightful place.'
    click_button 'Add Building'

    expect(page).to have_content('New Building Added')
    expect(Building.count).to eql(previous_count + 1)
  end


  scenario 'user enters invalid information' do
    visit new_building_path
    expect(page).to have_content("can't be blank")
  end

end
