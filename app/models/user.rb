class User < ApplicationRecord
  before_save { self.email = email.downcase }
  has_secure_password

  validates :email,
          presence: true,
          uniqueness: { case_sensitive: false },
          length: { minimum: 3, maximum: 254 }

  validates :password, presence: true, length: { minimum: 6 }, if: "password_digest.nil?"
  validates :password, length: { minimum: 6 }, allow_blank: true
end
