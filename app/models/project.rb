class Project < ActiveRecord::Base
	attr_accessible :background, :screenshot1, :screenshot2, :screenshot3, :screenshot4, :screenshot5, :screenshot6, :banner, :desc, :title, :trailer
  has_attached_file :background, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_attached_file :screenshot1, :styles => { :medium => "100x100>", :thumb => "100x100>" }
  has_attached_file :screenshot2, :styles => { :medium => "100x100>", :thumb => "100x100>" }
  has_attached_file :screenshot3, :styles => { :medium => "100x100>", :thumb => "100x100>" }
  has_attached_file :screenshot4, :styles => { :medium => "100x100>", :thumb => "100x100>" }
  has_attached_file :screenshot5, :styles => { :medium => "100x100>", :thumb => "100x100>" }
  has_attached_file :screenshot6, :styles => { :medium => "100x100>", :thumb => "100x100>" }
  has_attached_file :banner, :styles => { :medium => "100x100>", :thumb => "100x100>" }

end
