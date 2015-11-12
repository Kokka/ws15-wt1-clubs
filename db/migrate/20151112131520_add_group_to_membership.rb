class AddGroupToMembership < ActiveRecord::Migration
  def change
    add_reference :memberships, :group, index: true, foreign_key: true
    add_reference :memberships, :member, index: true, foreign_key: true
  end
end
