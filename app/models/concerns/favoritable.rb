module Favoritable

  def faves=(params)
    @faves = params
  end
  def faves
    @faves
  end

  def update_favorites(params, current_user)
  #  binding.pry
    if params[:favorites] !=nil && params[:favorites]["#{self.name.downcase.pluralize.to_sym}"]
      params[:favorites]["#{self.name.downcase.pluralize.to_sym}"].each do |x|
        var_name = self.name.downcase
        var_class = self
        current_user.favorites << Favorite.new(var_name => var_class.find_by_id(x), :user => current_user)
      end
    end

    if params[:remove_favorites] !=nil && params[:remove_favorites]["#{self.name.downcase.pluralize.to_sym}"]
      params[:remove_favorites]["#{self.name.downcase.pluralize.to_sym}"].each do |x|
        var_name = self.name.downcase
        var_class = self
        fallen_fav = Favorite.find_by(var_name => x, :user => current_user)
        #binding.pry
        if fallen_fav
          current_user.favorites.delete(fallen_fav)
        end
      end
    end
  end

end
