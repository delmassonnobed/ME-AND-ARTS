class AddOwnerToSound < ActiveRecord::Migration[5.2]
  def change
    add_column :sounds, :owner, :bigint
  end
end
