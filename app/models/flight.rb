class Flight < ApplicationRecord
  validates :start, :duration, presence: true

  belongs_to :from_airport, class_name: 'Airport'
  belongs_to :to_airport, class_name: 'Airport'

  def self.get_flight_dates
    flight_dates = Flight.find_by_sql('select distinct start from flights where start is not null order by start asc')
  end

  def flight_date_formatted
    start.strftime('%d/%m/%Y')
  end
end
