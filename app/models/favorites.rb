class Favorite < ActiveRecord::Base

  belongs_to  :user
  belongs_to  :location
  belongs_to  :drink

end
