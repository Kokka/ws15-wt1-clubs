class Member < ActiveRecord::Base
	has_many :memberships
	has_many :groups, through: :memberships, dependent: :destroy
	has_many :invites
end
