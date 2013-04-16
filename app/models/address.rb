class Address < ActiveRecord::Base
  attr_accessible :street, :contact_attributes
  belongs_to :contact
  validates :street, presence: true
  validates :user_id, presence: true
end
