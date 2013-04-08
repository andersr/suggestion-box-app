class RemoveEmailidFromLandingpages < ActiveRecord::Migration
  def change
    remove_column :landing_pages, :email_id, :integer
  end
end
