class AddUserToLandingpages < ActiveRecord::Migration
  def change
    add_column :landing_pages, :email_id, :integer
  end
end
