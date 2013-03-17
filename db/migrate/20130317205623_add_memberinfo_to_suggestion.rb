class AddMemberinfoToSuggestion < ActiveRecord::Migration
  def change
    add_column :suggestions, :member_name, :string
    add_column :suggestions, :member_email, :string
    add_column :suggestions, :suggestion_anon, :boolean
  end
end
