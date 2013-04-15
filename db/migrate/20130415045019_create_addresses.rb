class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :contact
      t.string :street

      t.timestamps
    end
    add_index :addresses, :contact_id
  end
end
