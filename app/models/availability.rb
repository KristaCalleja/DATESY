class Availability < ApplicationRecord
  belongs_to :user

  validates :weekday, inclusion: { in: %w[thursday friday saturday] }

  scope :thursday, -> { find_by(weekday: 'thursday') }
  scope :friday,   -> { find_by(weekday: 'friday')   }
  scope :saturday, -> { find_by(weekday: 'saturday') }
end
