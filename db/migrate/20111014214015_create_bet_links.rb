class CreateBetLinks < ActiveRecord::Migration
  def change
    create_table :bet_links do |t|
      t.string :bet_type
      t.integer :bet_id
      t.integer :wager
      t.boolean :is_win
      t.string :wager_selection

      t.timestamps
    end
  end
end
