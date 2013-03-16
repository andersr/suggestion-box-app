class AddSuggestionBoxPasscode < ActiveRecord::Migration
  def change

  	add_column :suggestion_boxes, :passcode, :string

  end
end
