class Member < ActiveRecord::Base
	belongs_to :group
	has_many :invites
end
