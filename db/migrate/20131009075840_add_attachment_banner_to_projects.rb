class AddAttachmentBannerToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :banner
    end
  end

  def self.down
    drop_attached_file :projects, :banner
  end
end
