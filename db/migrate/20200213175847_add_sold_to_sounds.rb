class AddSoldToSounds < ActiveRecord::Migration[5.2]
  def change
  add_column :sounds, :sold, :boolean, default: false
  end
end
