class Employee < ActiveRecord::Base
	  attr_accessible :avatar, :name, :title, :link, :email
  has_attached_file :avatar, :styles => { :medium => "100x100>", :thumb => "100x100>" }
end
