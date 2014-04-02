class Project < ActiveRecord::Base
	has_permalink :title
	default_scope :order => 'created_at desc'
	attr_accessible :title, :description, :assets_attributes, :dependent => :destroy
	validates_uniqueness_of :title
	validates_presence_of :title
	has_many :assets, :dependent => :destroy
	accepts_nested_attributes_for :assets, :allow_destroy => true

end
