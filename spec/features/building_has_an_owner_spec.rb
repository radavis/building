require 'spec_helper'

feature 'owners', %q{
  As a real estate associate
  I want to record a building owner
  So that I can keep track of our relationships with owners
} do

  #
  # Acceptance Criteria:
  #
  # * I must specify a first name, last name, and email address
  #
  # * I can optionally specify a company name
  #
  # * If I do not specify the required information, I am presented
  # with errors
  #
  # * If I specify the required information, the owner is recorded
  # and I am redirected to enter another new owner
  #

  scenario 'specify an owner with valid informaiton' do
    previous_count = Owner.count

    visit new_owner_path

    fill_in 'First name', with: 'Donald'
    fill_in 'Last name', with: 'Trump'
    fill_in 'Company', with: 'Real Estate Moguls Unltd.'
    fill_in 'Email', with: 'idontneednostinkinhairpiece@rollingindough.com'
    click_on 'Create Owner'

    expect(page).to have_content('New Owner Created')
    expect(Owner.count).to eql(previous_count + 1)
  end


  scenario 'specify an owner with invalid information' do
    visit new_owner_path
    click_on 'Create Owner'
    expect(page).to have_content("can't be blank")
  end

end
