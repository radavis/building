require 'spec_helper'

feature 'match building to owners', %q{
  As a real estate associate
  I want to match an owner of a building
  So that I can refer back to pertinent information
} do

  #
  # Acceptance Criteria:
  #
  # * When recording a building, I want to optionally associate the
  # building with its rightful owner.
  #
  # * If I delete an owner, the owner and its primary key should no
  # longer be associated with any properties.
  #

  scenario 'associate building with owner' do
    owner = FactoryGirl.create(:owner)
    owners_name = owner.first_name

    visit new_property_path
    fill_in 'Address', with: '13 Elm Street'
    fill_in 'City', with: 'Canton'
    fill_in 'State', with: 'MA'
    fill_in 'Zip', with: '02021'
    fill_in 'Description', with: 'Quite a frightful place.'
    select owners_name, from: 'Owner'
    click_button 'Add Property'

    expect(owner.id).to eql(Property.last.owner.id)
  end

  scenario 'delete an owner' do
    pending
  end

end
