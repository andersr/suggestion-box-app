class RemoveMemberNameFromSuggestions < ActiveRecord::Migration
  def change
  	remove_column :suggestions, :member_name
  	remove_column :suggestions, :member_email
  end
end
