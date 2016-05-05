class Favorite < ActiveRecord::Base

  belongs_to  :user
  has_many    :location
  has_many    :drink

end
