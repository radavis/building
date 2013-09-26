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

  scenario 'user enters valid information'


  scenario 'user enters invalid information'

end
