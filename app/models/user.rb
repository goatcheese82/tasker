class User < ApplicationRecord
  has_secure_password
  has_many :event_assignments
  has_many :events, through: :event_assignments
  validates_presence_of :first_name, :last_name, :email
  validates_uniqueness_of :email, :message => "That email is in use"

  def self.find_or_create_by_omni(auth)
    where(email: auth.info.email).first_or_create do |user|
      user.first_name = auth.info.name.split.first
      user.last_name = auth.info.name.split.last
      user.image = auth.info.image
      user.password = SecureRandom.hex
    end
  end
end
