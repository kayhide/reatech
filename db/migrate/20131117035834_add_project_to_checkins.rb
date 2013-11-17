class AddProjectToCheckins < ActiveRecord::Migration
  def change
    add_reference :checkins, :project, index: true
  end
end
