class AddBeatmakerToUsers < ActiveRecord::Migration[5.2]
    def change
    add_column :users, :beatmaker, :boolean
  end
end
