class CreateAuctions < ActiveRecord::Migration[5.2]
  def change
    create_table :auctions do |t|
      t.references :user
      t.references :sound
      t.integer :amount

      t.timestamps
    end
  end
end
