class EncryptPassword < ActiveRecord::Migration
	def change
		change_table :servers do |t|
			t.remove :password
			t.string :encrypted_password
		end
	end
end
