class Project < ActiveRecord::Base
  has_many :checkins
end
