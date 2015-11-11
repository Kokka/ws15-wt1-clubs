class Group < ActiveRecord::Base
	has_and_belongs_to_many :members
	has_many :meetings
end
