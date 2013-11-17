class Checkin < ActiveRecord::Base
  belongs_to :user
  belongs_to :location
  belongs_to :project

  scope :active,   ->{ where(checked_out_at:  nil) }
  scope :inactive, ->{ where.not(checked_out_at:  nil) }

  def project_github
    self.project.try(:github)
  end

  def project_github= arg
    self.project = Project.find_or_create_by(github: arg)
  end

  def location_position
    self.location.to_s
  end

  def location_position= arg
    latitude, longitude = arg.gsub(/\(|\)/, '').split(',').map(&:to_f)
    self.location = Location.create(latitude: latitude, longitude: longitude)
  end
end
