class AddAttachmentScreenshot6ToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :screenshot6
    end
  end

  def self.down
    drop_attached_file :projects, :screenshot6
  end
end
