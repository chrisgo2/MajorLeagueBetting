class CreateHead2headBets < ActiveRecord::Migration
  def change
    create_table :head2head_bets do |t|
      t.string :type
      t.integer :game_id
      t.boolean :is_spread

      t.timestamps
    end
  end
end
