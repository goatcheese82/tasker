class User < ApplicationRecord
  has_secure_password
  validates_presence_of :first_name, :last_name, :email

  def self.find_or_create_by_omni(auth)
    where(email: auth.info.email).first_or_create do |user|
      user.first_name = auth.info.name.split.first
      user.last_name = auth.info.name.split.last
      user.image = auth.info.image
      user.password_digest = SecureRandom.hex
    end
  end
end
