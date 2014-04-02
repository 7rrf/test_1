class AddAttachmentVideoToAssets < ActiveRecord::Migration
  def self.up
    change_table :assets do |t|
      t.attachment :video
    end
  end

  def self.down
    drop_attached_file :assets, :video
  end
end
