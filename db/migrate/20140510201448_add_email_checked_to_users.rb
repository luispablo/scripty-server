class AddEmailCheckedToUsers < ActiveRecord::Migration
	def change
		change_table :users do |t|
			t.boolean :email_checked
		end
	end
end
