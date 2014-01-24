class AddAttachmentBannerToSiteinfos < ActiveRecord::Migration
  def self.up
    change_table :siteinfos do |t|
      t.attachment :banner
    end
  end

  def self.down
    drop_attached_file :siteinfos, :banner
  end
end
