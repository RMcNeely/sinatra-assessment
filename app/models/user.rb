class User < ActiveRecord::Base

  validates_presence_of :email
  validates :password_digest, length: { in: 6..20 }

  has_many :favorites
end
