class CreateSiteinfos < ActiveRecord::Migration
  def change
    create_table :siteinfos do |t|
      t.string :blurb
      t.string :about

      t.timestamps
    end
  end
end
