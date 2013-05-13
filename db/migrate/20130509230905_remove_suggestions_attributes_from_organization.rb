class RemoveSuggestionsAttributesFromOrganization < ActiveRecord::Migration
  def change
  	remove_column :organizations, :suggestions
  	remove_column :organizations, :suggestions_attributes
  end
end
