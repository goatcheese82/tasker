class GroupAssignment < ApplicationRecord
  belongs_to :user
  belongs_to :group

  def self.is_admin?
    where(group_admin: true)
  end

end
