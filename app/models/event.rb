class Event < ApplicationRecord
  has_many :users, through: :assignments
end
