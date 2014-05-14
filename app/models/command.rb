# == Schema Information
#
# Table name: commands
#
#  id          :integer          not null, primary key
#  server_id   :integer
#  description :string(255)
#  command     :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Command < ActiveRecord::Base
  belongs_to :server
end
