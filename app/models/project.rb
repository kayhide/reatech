require 'git_hub'

class Project < ActiveRecord::Base
  has_many :checkins
  has_many :users, through: :checkins

  def repository
    GitHub.repository github
  end

  def readme
    GitHub.readme github
  end
end

