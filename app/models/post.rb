class Post < ActiveRecord::Base
  attr_accessible :body, :title, :image
  has_attached_file :image, :styles => { :medium => "100x100>", :thumb => "100x100>" }

  has_many :comments

  validates_presence_of :body, :title, :image
end