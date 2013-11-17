class Location < ActiveRecord::Base
  has_one :checkin
  has_one :user, through: :checkin

  validates_presence_of :latitude, :longitude

  def to_s
    '(%.3f, %.3f)' % [self.latitude.to_f, self.longitude.to_f]
  end
end
