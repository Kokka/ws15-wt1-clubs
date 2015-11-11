class AddMemberToInvite < ActiveRecord::Migration
  def change
    add_reference :invites, :member, index: true, foreign_key: true
  end
end
