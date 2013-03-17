class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :passcode

      t.timestamps
    end
  end
end
