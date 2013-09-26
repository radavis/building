require 'spec_helper'

describe Property do
  it { should have_valid(:address).when('13 Elm Street', '16 Raven St') }
  it { should_not have_valid(:address).when(nil, '', '42') }

  it { should have_valid(:city).when('Boston', 'Dorchester') }
  it { should_not have_valid(:city).when(nil, '') }

  it { should have_valid(:state).when('MA', 'PA', 'FL') }
  it { should_not have_valid(:state).when(nil, '', 'Ohio') }

  it { should have_valid(:zip).when('02125', '19145', '34986-6968') }
  it { should_not have_valid(:zip).when(nil, '', 'ABCD456')}
end
