class ChengeCheckedOutAtOnCheckins < ActiveRecord::Migration
  def self.up
    remove_column :checkins, :checked_out_at
    add_column :checkins, :checked_out_at, :datetime
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
