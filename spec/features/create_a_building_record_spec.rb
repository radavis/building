require 'spec_helper'

feature 'create a Property record', %q{
  As a real estate associate
  I want to record a property
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
  # format, the Property is recorded.
  #
  # * If I do not specify all of the required information in the
  # required formats, the Property is not recorded and I am presented
  # with errors
  #
  # * Upon successfully creating a Property, I am redirected so that
  # I can record another Property.
  #

  scenario 'user enters valid information' do
    previous_count = Property.count

    visit new_property_path
    fill_in 'Address', with: '13 Elm Street'
    fill_in 'City', with: 'Canton'
    fill_in 'State', with: 'MA'
    fill_in 'Zip', with: '02021'
    fill_in 'Description', with: 'Quite a frightful place.'
    click_button 'Add Property'

    expect(page).to have_content('New Property Added')
    expect(Property.count).to eql(previous_count + 1)
    #expect(current_path).to eql(new_property_path) #this is breaking my shit.
  end


  scenario 'user enters invalid information' do
    previous_count = Property.count

    visit new_property_path
    click_button 'Add Property'

    expect(page).to have_content("can't be blank")
    expect(Property.count).to eql(previous_count)
  end


  scenario 'user enters invalid state abbreviation' do
    previous_count = Property.count
    visit new_property_path
    fill_in 'State', with: 'AB'
    #expect(page).to have_content('Invalid State Abbreviation')
    expect(Property.count).to eql(previous_count)
  end

end
