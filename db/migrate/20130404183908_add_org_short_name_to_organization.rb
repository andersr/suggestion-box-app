class AddOrgShortNameToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :org_short_name, :string
  end
end
