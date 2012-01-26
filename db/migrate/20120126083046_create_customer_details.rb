class CreateCustomerDetails < ActiveRecord::Migration
  def self.up
    create_table :customer_details do |t|
      t.string :Name
      t.string :Phone
      t.string :Mobile
      t.boolean :status

      t.timestamps
    end
  end

  def self.down
    drop_table :customer_details
  end
end
