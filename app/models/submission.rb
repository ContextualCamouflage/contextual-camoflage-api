class Submission < ApplicationRecord
  has_many :anecdotes
  has_many :researches
  before_save :geocode_location
  validate :double_submit_same_illness

private
  def count_by_illness(data)
    ilnness_array = []
    illness_counts = Hash.new 0
    data.each do |entry|
      illness_array << entry.ilness
    end #probably could do this faster with .map 
    illness_array.each do |illness|
      illness_counts[illness]+= 1
    end
    return illness_counts
  end

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
