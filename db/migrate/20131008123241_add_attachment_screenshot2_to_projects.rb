class AddAttachmentScreenshot2ToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :screenshot2
    end
  end

  def self.down
    drop_attached_file :projects, :screenshot2
  end
end
