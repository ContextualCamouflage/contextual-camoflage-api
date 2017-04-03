class Location < ApplicationRecord
  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude
  belongs_to :story

  def address
    [street, city, state, country].compact.join(', ')
  end
end
