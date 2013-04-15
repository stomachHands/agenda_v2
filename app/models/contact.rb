class Contact < ActiveRecord::Base
	has_many :addresses
  attr_accessible :first_name, :last_name, :phone

  def display_contact
		return contact.name unless contact.nil?
	end
end
