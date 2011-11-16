class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.string   :name
      t.string   :short_name
      t.string   :sport
      t.string   :logo_path

      t.timestamps
    end

    add_index :leagues, :name, :unique => true
  end
            
end
