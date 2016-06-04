module Favoriting

  def faves=(params)
    @faves = params
  end
  def faves
    @faves
  end

  def update_favorites
    @favs
    #binding.pry
    if !self.faves[:favorites]["#{self.name.downcase.pluralize.to_sym}"].empty?
      self.faves[:favorites]["#{self.name.downcase.pluralize.to_sym}"].each do |x|
        current_user.favorites << self.find_by_id(x)
      end
    end
  end

end
