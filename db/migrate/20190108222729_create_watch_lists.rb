class CreateWatchLists < ActiveRecord::Migration[5.1]
  def change
    create_table :watch_lists do |t|
      t.integer :watchlist_id

      t.timestamps
    end
  end
end
