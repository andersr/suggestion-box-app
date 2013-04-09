class RemoveLandingpageTable < ActiveRecord::Migration
  def up
  end

  def down
  	remove_table :landing_page
  end
end
