class AddStartAndEndTimeToPickupDays < ActiveRecord::Migration[5.2]
  def change
    add_column :pickup_days, :starts_at, :time
    add_column :pickup_days, :ends_at, :time
    change_column :pickup_days, :scheduled_for, :date
  end
end
