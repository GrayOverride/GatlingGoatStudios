class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :captcha, :captcha_key, :body
  apply_simple_captcha
end
