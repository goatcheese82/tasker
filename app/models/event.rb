class Event < ApplicationRecord
  has_many :event_assignments
  has_many :users, through: :event_assignments

  def self.happening_today
    where("date =?", Time.zone.today.beginning_of_day)
  end

  def self.not_is_it_was
    where("date <?", Time.zone.today.beginning_of_day)
  end
end
