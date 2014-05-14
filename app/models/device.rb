# == Schema Information
#
# Table name: devices
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  key           :string(255)
#  email_checked :boolean
#  created_at    :datetime
#  updated_at    :datetime
#

class Device < ActiveRecord::Base
	belongs_to :user

	after_validation :defaults

  	def defaults
  		self.key = Array.new(32){rand(36).to_s(36)}.join if self.key.nil?
  		self.email_checked = false if self.email_checked.nil?
  	end

	def check_email(key)
		if key == self.key
			self.email_checked = true
			user.check_email
			user.save!
			save!
		else
			errors.add(:key, I18n.t('messages.wrong_device_key'))
			false
		end
	end
end
