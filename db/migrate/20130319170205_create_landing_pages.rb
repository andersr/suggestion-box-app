class CreateLandingPages < ActiveRecord::Migration
  def change
    create_table :landing_pages do |t|
      t.string :invite_email

      t.timestamps
    end
  end
end
