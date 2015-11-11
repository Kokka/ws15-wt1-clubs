class AddGroupToMembers < ActiveRecord::Migration
  def change
	add_foreign_key :group, :members
  end
end
