class Drink < ActiveRecord::Base

  validates_presence_of :name, :description

  belongs_to :location

end
