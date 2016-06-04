class AddLocationIdToDrinks < ActiveRecord::Migration
  def change
    add_column  :drinks, :location_id, :integer
  end
end
