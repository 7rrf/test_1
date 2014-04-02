class AddAttachmentVideoToSettings < ActiveRecord::Migration
    def self.up
    change_table :settings do |t|
      t.attachment :video
    end
  end

  def self.down
    drop_attached_file :settings, :video
  end
end
 def change
 	create_table :videos do |t|
 		t.string :video_file_name
 		t.string :video_content_type
 		t.integer :video_file_size
 		t.datetime :video_updated_at

 		t.timestamps
 	end
end
