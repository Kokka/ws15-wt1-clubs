class AddGroupToMeetings < ActiveRecord::Migration
  def change
    add_reference :meetings, :group, index: true, foreign_key: true
  end
end
