class AddContactToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :contact_id, :integer
  end
end
