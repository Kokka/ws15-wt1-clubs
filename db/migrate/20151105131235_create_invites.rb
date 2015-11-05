class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.integer :accept
      t.date :timestamp

      t.timestamps null: false
    end
  end
end
