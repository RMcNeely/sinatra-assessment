class CreateLocations < ActiveRecord::Migration
  def change
      create_table :locations do |t|
        t.string    :address
        t.string    :phone_number
        t.string    :locations_email
        t.integer   :rating
      end
  end
end
