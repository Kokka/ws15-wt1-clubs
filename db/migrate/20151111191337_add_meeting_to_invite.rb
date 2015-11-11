class AddMeetingToInvite < ActiveRecord::Migration
  def change
    add_reference :invites, :meeting, index: true, foreign_key: true
  end
end
