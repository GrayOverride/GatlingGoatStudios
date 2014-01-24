class AddAttachmentScreenshot3ToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|

      t.attachment :screenshot3

    end
  end

  def self.down

    drop_attached_file :projects, :screenshot3

  end
end
