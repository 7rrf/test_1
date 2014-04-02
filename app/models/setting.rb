class Setting < ActiveRecord::Base
	attr_accessible :title, :description, :paragraph, :photo, :photo_delete, :dependent => :destroy
	has_attached_file :photo, :styles => {  :thumb => "600x600#", :medium => "300x300#", :small => "160x160#"}
    has_destroyable_file :photo
end
