class ChangeColumnnameTypeToDescriptionForDrinks < ActiveRecord::Migration
  def change
    rename_column :drinks, :type, :description
  end
end
