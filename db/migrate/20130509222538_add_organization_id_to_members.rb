class AddOrganizationIdToMembers < ActiveRecord::Migration
  def change
    add_column :members, :organization_id, :integer
    remove_column :organizations, :member_id
  end
end
