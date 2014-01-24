class AddAttachmentScreenshot5ToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|

      t.attachment :screenshot5

    end
  end

  def self.down

    drop_attached_file :projects, :screenshot5

  end
end
