class CreateFootballGameStats < ActiveRecord::Migration
  def change
    create_table :football_game_stats do |t|

      t.timestamps
    end
  end
end
