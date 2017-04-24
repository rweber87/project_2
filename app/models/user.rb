class User < ApplicationRecord
  has_many :comments
  has_many :submissions
  has_many :votes
  has_secure_password
  # validates :image, :presence => true, :uniqueness => true, allow_nil: true
  # geocoded_by :city
  # after_validation :geocode

  def google_map(center)
    byebug
    "https://maps.googleapis.com/maps/api/staticmap?center=#{center}&size=300x300&zoom=17"
  end

end
