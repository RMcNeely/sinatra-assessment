module Favoriting

  def faves=(params)
    @faves = params
  end
  def faves
    @faves
  end

  def update_favorites(params, current_user)
    binding.pry
    if !params[:favorites]["#{self.name.downcase.pluralize.to_sym}"].empty?
      params[:favorites]["#{self.name.downcase.pluralize.to_sym}"].each do |x|
        binding.pry
        current_user.favorites << Favorite.create("#{self.id}" => self.find_by_id(x), :user_id => current_user)
      end
    end
  end

end


#sql = <- SQL
#  SELECT ID ? from TABLE ?
#SQL
