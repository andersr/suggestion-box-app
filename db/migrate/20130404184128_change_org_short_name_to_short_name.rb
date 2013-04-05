class ChangeOrgShortNameToShortName < ActiveRecord::Migration
   def change
    rename_column :organizations, :org_short_name, :short_name 
  end
end
