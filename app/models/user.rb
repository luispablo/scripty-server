# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  email         :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  email_checked :boolean
#

class User < ActiveRecord::Base
	after_validation :defaults

	has_many :servers
	has_many :commands, through: :servers

  	def defaults
  		self.email_checked = false if self.email_checked.nil?
  	end

  	def check_email
  		self.email_checked = true
  	end
end
