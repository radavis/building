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
    pending
    owner = FactoryGirl.create(:owner)

    visit new_property_path

  end

  scenario 'delete an owner' do

  end

end
