class CreateFollowUps < ActiveRecord::Migration
  def self.up
    create_table :follow_ups do |t|
      t.date :dates

      t.timestamps
    end
  end

  def self.down
    drop_table :follow_ups
  end
end
