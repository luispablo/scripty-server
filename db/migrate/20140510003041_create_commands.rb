class CreateCommands < ActiveRecord::Migration
  def change
    create_table :commands do |t|
      t.references :server, index: true
      t.string :description
      t.string :command

      t.timestamps
    end
  end
end
