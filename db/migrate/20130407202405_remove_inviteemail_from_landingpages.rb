class RemoveInviteemailFromLandingpages < ActiveRecord::Migration
   def change
    remove_column :landing_pages, :invite_email 
  end
end
