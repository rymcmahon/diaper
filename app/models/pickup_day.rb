class PickupDay < ApplicationRecord
  belongs_to :organization
  validates :scheduled_for, :starts_at, :ends_at, presence: true
end
