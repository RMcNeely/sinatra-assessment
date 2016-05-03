class CreateFavorites < ActiveRecord::Migration
  def change
      create_table :favorites do |t|
        t.string    :favorite_location
        t.string    :review
      end
  end
end
