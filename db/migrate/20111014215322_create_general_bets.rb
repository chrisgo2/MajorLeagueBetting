class CreateGeneralBets < ActiveRecord::Migration
  def change
    create_table :general_bets do |t|
      t.string :type
      t.integer :item_id

      t.timestamps
    end
  end
end
