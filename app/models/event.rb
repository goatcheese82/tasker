class Event < ApplicationRecord
  has_many :event_assignments
  has_many :users, through: :event_assignments
end
