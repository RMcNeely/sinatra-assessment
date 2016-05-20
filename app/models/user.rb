class User < ActiveRecord::Base

  validates_presence_of :email
  has_secure_password

  has_many :favorites
  has_many  :locations, through: :favorites
  has_many  :drinks, through: :favorites
end
