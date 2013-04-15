class Contact < ActiveRecord::Base
	has_many :addresses
  attr_accessible :first_name, :last_name, :phone
end
