class AddAttachmentPhotoToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :posts, :photo
  end
end
 def change
 	create_table :photos do |t|
 		t.string :image_file_name
 		t.string :image_content_type
 		t.integer :image_file_size
 		t.datetime :image_updated_at

 		t.timestamps
 	end
end
