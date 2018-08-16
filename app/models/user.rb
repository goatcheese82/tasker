class User < ApplicationRecord
  has_secure_password
  has_many :group_assignments
  has_many :groups, through: :group_assignments
  has_many :goals
  has_many :event_assignments
  has_many :events, through: :event_assignments
  validates_presence_of :first_name, :last_name, :email
  validates_uniqueness_of :email, :message => "is already in our database"
  before_save :downcase_email

  def self.find_or_create_by_omni(auth)
    where(email: auth.info.email).first_or_create do |user|
      user.first_name = auth.info.name.split.first
      user.last_name = auth.info.name.split.last
      user.image = auth.info.image
      user.password = SecureRandom.hex
    end
  end

  def downcase_email
    self.email.downcase!
  end
end
