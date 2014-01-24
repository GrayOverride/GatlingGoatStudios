class Siteinfo < ActiveRecord::Base
	attr_accessible :banner, :blurb, :about
  has_attached_file :banner, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
