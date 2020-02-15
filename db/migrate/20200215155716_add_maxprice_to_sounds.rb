class AddMaxpriceToSounds < ActiveRecord::Migration[5.2]
  def change
    add_column :sounds, :maxprice, :integer
  end
end
