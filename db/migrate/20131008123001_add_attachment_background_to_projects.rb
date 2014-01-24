class AddAttachmentBackgroundToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :background
    end
  end

  def self.down
    drop_attached_file :projects, :background
  end
end
