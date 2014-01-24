class AddAttachmentScreenshot1ToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :screenshot1
    end
  end

  def self.down
    drop_attached_file :projects, :screenshot1
  end
end
