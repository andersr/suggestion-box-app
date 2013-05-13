class AddMemberIdToSuggestions < ActiveRecord::Migration
  def change
    add_column :suggestions, :member_id, :integer
  end
end
