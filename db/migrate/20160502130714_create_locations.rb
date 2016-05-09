class CreateLocations < ActiveRecord::Migration
  def change
      create_table :locations do |t|
        t.string    :name
        t.string    :address
        t.string    :phone_number
        t.string    :locations_email
        t.float     :rating, default: 0
      end
  end
end
