class Goal < ApplicationRecord
  belongs_to :user

  def self.due_today
    where("deadline >=?", Time.zone.today.beginning_of_day)
  end

  def self.overdue
    where("deadline <?", Time.zone.today.beginning_of_day)
  end
end
