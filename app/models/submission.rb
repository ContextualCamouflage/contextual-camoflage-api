class Submission < ApplicationRecord
  has_many :anecdotes, :primary_key => :cookie, :foreign_key => :cookie
  has_many :researches, :primary_key => :cookie, :foreign_key => :cookie
  before_save :geocode_location
  validate :double_submit_same_illness

private

  def geocode_location
    location = Geocoder.search(self.ip_address, ip_address: true).first
    self.city = location.data["city"]
    self.zip_code = location.data["zip_code"]
  end

  def double_submit_same_illness
    if Submission.exists?(cookie: self.cookie, illness: self.illness)
      errors.add(:cookie, "User already submitted this illness.")
    end
  end
end
