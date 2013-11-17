class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :label
      t.string :github

      t.timestamps
    end
  end
end
