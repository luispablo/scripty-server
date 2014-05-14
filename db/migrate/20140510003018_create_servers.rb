class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.references :user, index: true
      t.string :description
      t.string :address
      t.integer :port
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
