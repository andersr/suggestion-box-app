class CreateSuggestionBoxes < ActiveRecord::Migration
  def change
    create_table :suggestion_boxes do |t|
      t.string :name

      t.timestamps
    end
  end
end
