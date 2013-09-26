require 'spec_helper'

describe Owner do
  it { should have_valid(:first_name).when('Sam', 'Sally') }
  it { should_not have_valid(:first_name).when(nil, '') }

  it { should have_valid(:last_name).when('Smith', 'Summers') }
  it { should_not have_valid(:last_name).when(nil, '') }

  it { should have_valid(:email).when('sam@gmail.com', 'sally@example.com') }
  it { should_not have_valid(:email).when(nil, '', 'user.com') }
end
