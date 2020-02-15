class AddMaxpriceToAuctions < ActiveRecord::Migration[5.2]
  def change
    add_column :auctions, :maxprice, :integer
  end
end
