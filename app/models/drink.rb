class Drink < ActiveRecord::Base

  validates_presence_of :name, :type

  belongs_to :location  

end
