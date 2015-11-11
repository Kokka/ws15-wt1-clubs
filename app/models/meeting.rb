class Meeting < ActiveRecord::Base
  belongs_to :group
  has_many :invites
end
