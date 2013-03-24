class CreateAchievements < ActiveRecord::Migration
  def change
    create_table  :achievements do |t|
      t.string    :title
      t.string    :description
      t.string    :type
      t.string    :logo_path
      t.timestamps
    end
  end
end
