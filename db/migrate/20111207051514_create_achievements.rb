class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.string    :description
      t.integer   :user.id
      t.bool      :done
      t.timestamps
    end
  end
end
