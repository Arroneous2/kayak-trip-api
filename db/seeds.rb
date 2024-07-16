# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Trip.create!(
  [
    {
      user_id: 1,
      title: "So much fun",
      image_url: "https://example.com/images/trip1.jpg",
      start_time: DateTime.parse("2024-08-01 09:00:00"),
      end_time: DateTime.parse("2024-08-01 18:00:00")
    },
    {
      user_id: 2,
      title: "Not so much fun",
      image_url: "https://example.com/images/trip2.jpg",
      start_time: DateTime.parse("2024-08-02 09:00:00"),
      end_time: DateTime.parse("2024-08-02 18:00:00")
    },
    {
      user_id: 3,
      title: "So much fun i died",
      image_url: "https://example.com/images/trip3.jpg",
      start_time: DateTime.parse("2024-08-03 09:00:00"),
      end_time: DateTime.parse("2024-08-03 18:00:00")
    }
  ]
)

Place.create!(
  [
    {
      trip_id: 1,
      address: "123 Main St, Anytown, USA",
      name: "Central Park",
      description: "A large public park in the center of the city.",
      image_url: "https://example.com/images/central_park.jpg",
      start_time: DateTime.parse("2024-08-01 10:00:00"),
      end_time: DateTime.parse("2024-08-01 12:00:00"),
      lat: "42.34696937439415",
      lng: "-91.80581132457377"
    },
    {
      trip_id: 1,
      address: "456 Elm St, Anytown, USA",
      name: "City Museum",
      description: "A museum showcasing the history of the city.",
      image_url: "https://example.com/images/city_museum.jpg",
      start_time: DateTime.parse("2024-08-01 13:00:00"),
      end_time: DateTime.parse("2024-08-01 15:00:00"),
      lat: "42.54696937439415",
      lng: "-92.00581132457377"
    },
    {
      trip_id: 2,
      address: "789 Oak St, Anytown, USA",
      name: "Science Center",
      description: "A science center with interactive exhibits.",
      image_url: "https://example.com/images/science_center.jpg",
      start_time: DateTime.parse("2024-08-02 09:00:00"),
      end_time: DateTime.parse("2024-08-02 11:00:00"),
      lat: "44.34696937439415",
      lng: "-94.80581132457377"
    },
    {
      trip_id: 2,
      address: "101 Maple St, Anytown, USA",
      name: "Art Gallery",
      description: "An art gallery featuring local artists.",
      image_url: "https://example.com/images/art_gallery.jpg",
      start_time: DateTime.parse("2024-08-02 12:00:00"),
      end_time: DateTime.parse("2024-08-02 14:00:00"),
      lat: "47.34696937439415",
      lng: "-98.80581132457377"
    },
    {
      trip_id: 3,
      address: "202 Pine St, Anytown, USA",
      name: "Botanical Garden",
      description: "A botanical garden with a variety of plants.",
      image_url: "https://example.com/images/botanical_garden.jpg",
      start_time: DateTime.parse("2024-08-03 10:00:00"),
      end_time: DateTime.parse("2024-08-03 12:00:00"),
      lat: "42.34696937439415",
      lng: "-93.80581132457377"
    },
    {
      trip_id: 3,
      address: "303 Cedar St, Anytown, USA",
      name: "Aquarium",
      description: "An aquarium with marine life exhibits.",
      image_url: "https://example.com/images/aquarium.jpg",
      start_time: DateTime.parse("2024-08-03 13:00:00"),
      end_time: DateTime.parse("2024-08-03 15:00:00"),
      lat: "42.34696937439415",
      lng: "-95.80581132457377"
    }
  ]
)
