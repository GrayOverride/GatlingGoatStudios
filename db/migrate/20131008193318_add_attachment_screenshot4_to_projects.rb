class AddAttachmentScreenshot4ToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|

      t.attachment :screenshot4

    end
  end

  def self.down

    drop_attached_file :projects, :screenshot4

  end
end
