class Location < ApplicationRecord
  geocoded_by :my_location
  after_validation :geocode

  #validations
  validates :address, presence: true
  validates :city, presence: true

  def my_location
    "#{self.address}, #{self.city}, GA"
  end

  def nearby?(lng, lat)
    (self.longitude - lng).abs <= 0.01 && (self.latitude - lat).abs <= 0.01
  end
  # this method will automatically return true or false, so we added a question mark to the name, which is called a predicate

end
