class CreateUsers < ActiveRecord::Migration
  def change
    #drop_table :users
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :encrypted_password
      t.string :salt
      t.integer :money
      t.timestamps
    end
  end
end
