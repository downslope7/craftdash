class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :hostname
      t.string :username
      t.string :public_key
      t.string :private_key
      
      t.timestamps null: false
    end
  end
end
