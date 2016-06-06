module Favoritable

  def faves=(params)
    @faves = params
  end
  def faves
    @faves
  end

  def update_favorites(params, current_user)
#    binding.pry
    if params[:favorites]["#{self.name.downcase.pluralize.to_sym}"]
      params[:favorites]["#{self.name.downcase.pluralize.to_sym}"].each do |x|
        var_name = self.name.downcase
        var_class = self
        current_user.favorites << Favorite.new(var_name => var_class.find_by_id(x), :user => current_user)
      end
    end
  end

end
