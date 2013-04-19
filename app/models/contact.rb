class Contact < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :phone, :address_attributes, :address_id
	has_many :addresses, dependent: :destroy  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true

  def display_contact
		return contact.name unless contact.nil?
	end
end
