class Post < ActiveRecord::Base
	require 'paperclip-ffmpeg'
    has_permalink :title
	default_scope :order => 'created_at desc'
	attr_accessible :content, :title, :photo, :photo_delete, :video, :video_delete, :dependent => :destroy
	validates_uniqueness_of :title
	validates_presence_of :title
	has_destroyable_file :photo, :video
	has_attached_file :photo, :styles => {  :thumb => "600x600#", :medium => "300x300#", :small => "160x160#"}
  	has_attached_file :video, :styles => {
    :mobile => {:geometry => "400x300", :format => 'ogg', :streaming => true}
  }, :processors => [:ffmpeg, :qtfaststart]

end
