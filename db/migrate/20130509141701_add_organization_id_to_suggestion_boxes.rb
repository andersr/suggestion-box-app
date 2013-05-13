class AddOrganizationIdToSuggestionBoxes < ActiveRecord::Migration
  def change
    add_column :suggestion_boxes, :organization_id, :integer
  end
end
