class Address < ActiveRecord::Base
  attr_accessible :street, :contact_attributes
  belongs_to :contact
  validates :street, presence: true
  validates :contact_id, presence: true
end
