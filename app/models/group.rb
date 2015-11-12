class Group < ActiveRecord::Base
	has_many :members, through: :memberships, dependent: :destroy
	has_many :memberships
	has_many :meetings
end
