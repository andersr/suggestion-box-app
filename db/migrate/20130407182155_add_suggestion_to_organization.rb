class AddSuggestionToOrganization < ActiveRecord::Migration
  def change
    add_column :suggestions, :organization_id, :integer
  end
end
