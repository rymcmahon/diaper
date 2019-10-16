class CreatePickupDays < ActiveRecord::Migration[5.2]
  def change
    create_table :pickup_days do |t|
      t.datetime :scheduled_for
      t.references :organization, foreign_key: true

      t.timestamps
    end
  end
end
