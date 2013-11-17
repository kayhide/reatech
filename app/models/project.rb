class Project < ActiveRecord::Base
  has_many :checkins
  has_many :users, through: :checkins

  validate do |project|
    begin
      project.repository
    rescue
      project.errors[:github] << 'repository is not reachable.'
    end
  end

  def repository
    GitHub.repository github
  end

  def readme
    GitHub.readme github
  end

  def html_url
    "https:github.com/#{self.github}"
  end
end

