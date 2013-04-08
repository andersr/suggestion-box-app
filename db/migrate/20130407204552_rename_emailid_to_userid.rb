class RenameEmailidToUserid < ActiveRecord::Migration
  def change
    add_column :landing_pages, :user_id, :integer
  end
end
