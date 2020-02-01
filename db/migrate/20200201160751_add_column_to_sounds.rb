class AddColumnToSounds < ActiveRecord::Migration[5.2]
  def change
    add_column :sounds, :bpm, :integer, null: false
    add_column :sounds, :genre, :string, null: false
  end
end
