class Flight < ApplicationRecord
  validates :start, :duration, presence: true

  belongs_to :from_airport, class_name: 'Airport'
  belongs_to :to_airport, class_name: 'Airport'

  def self.get_flight_dates
    Flight.pluck(:start).map { |date| [date.strftime('%d/%m/%Y')] }.uniq
  end
end
