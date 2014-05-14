class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.references :user, index: true
      t.string :key
      t.boolean :email_checked

      t.timestamps
    end
  end
end
