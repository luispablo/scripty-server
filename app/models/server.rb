# == Schema Information
#
# Table name: servers
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  description :string(255)
#  address     :string(255)
#  port        :integer
#  username    :string(255)
#  password    :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Server < ActiveRecord::Base
  belongs_to :user
end
