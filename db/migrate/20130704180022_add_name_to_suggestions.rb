class AddNameToSuggestions < ActiveRecord::Migration
  def change
    add_column :suggestions, :name, :string
    add_column :suggestions, :email, :string
  end
end
