class CreateGroupMemberJoinTable < ActiveRecord::Migration
  def self.up
   create_table :group_member, :id => false do |t| #we DO NOT need the id here!
     t.integer :groups_id #alternatively, we can write t.references :product
     t.integer :members_id
   end
  end

  def self.down
    drop_table :group_member
  end
end
