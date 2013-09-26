class Owner < ActiveRecord::Base
  has_many :properties,
    inverse_of: :owner

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email

  validates_format_of :email, with: /.+\@.+\..+/
end
