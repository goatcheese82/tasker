class Group < ApplicationRecord
  has_many :users, through: :group_assignments
  has_many :group_assignments
  accepts_nested_attributes_for :group_assignments
end
