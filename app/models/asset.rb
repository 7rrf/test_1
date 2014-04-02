class Asset < ActiveRecord::Base
	require 'paperclip'
	require 'paperclip-ffmpeg'
	
	belongs_to :project, :foreign_key => "project_id"
	attr_accessible :project_id, :photo, :video
	has_attached_file :photo, :styles => {  :thumb => "130x130#", :medium => "300x300#", :small => "160x160#"}
	has_attached_file :video, :styles => {
    :mobile => {:geometry => "400x300", :format => 'ogg', :streaming => true}
  }, :processors => [:ffmpeg, :qtfaststart]   


end
