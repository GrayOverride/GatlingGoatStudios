class Message < ActiveRecord::Base
	attr_accessible :captcha, :captcha_key, :email, :subject, :body, :name
	validates :email, email_format: { message: " doesn't look like an email address" }
	  apply_simple_captcha
end
