class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.references :user, index: true
      t.references :location, index: true
      t.string :checked_out_at
      t.text :message

      t.timestamps
    end
  end
end
