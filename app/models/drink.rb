class Drink < ActiveRecord::Base

  extend Favoritable

  validates_presence_of :name, :description

  belongs_to :location

  def crafted_by
    self.location.name
  end

end
