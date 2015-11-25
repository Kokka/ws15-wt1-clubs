class AddAmountOfMembershipsToGroups < ActiveRecord::Migration
  def change
	add_column :groups, :amount_of_memberships, :integer
  end
end
