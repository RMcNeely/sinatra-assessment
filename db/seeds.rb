User.create(user_name: "Ryan", email: "rmcneely23@gmail.com", password_digest: "123test")

User.create(user_name: "John Doe", email: "testing@email.com", password_digest: "123test321")

Location.create(name: "Three Notch'd Brewing Company", address: "948 Grady Ave, Charlottesville, VA 22903", phone_number: "434-293-0610", rating: 5)

Location.create(name: "South Street Brewery", address: "106 W South St, Charlottesville, VA 22902", phone_number: "434-293-6550", rating: 3)

Location.create(name: "Pippin Hill Farm & Vineyards", address: "5022 Plank Rd, North Garden, VA 22959", phone_number: "434-293-0610")

Favorite.create(user_id: 1, location_id: 1)
