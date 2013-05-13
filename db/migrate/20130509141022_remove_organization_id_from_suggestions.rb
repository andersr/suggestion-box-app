class RemoveOrganizationIdFromSuggestions < ActiveRecord::Migration
   def change
    remove_column :suggestions, :organization_id
  end
end
