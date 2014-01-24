class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :desc
      t.string :trailer

      t.timestamps
    end
  end
end
