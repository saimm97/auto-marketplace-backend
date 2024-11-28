# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Company.create([{ name:           "Toyota Indus Motor Company",
#                   country:        "Japan",
#                   description:    "Toyota Indus Motor Company Limited, commonly known as Indus Motor,
#                   is a joint venture between Toyota Motor Corporation, Japan,
#                   and House of Habib, Pakistan.
#                   It is one of the leading car manufacturers in Pakistan.",
#                   established_in: "1989-12-01T00:00:00Z",
#                   website:        "https://www.toyota-indus.com" },
#                 {
#                   name:           "Honda Atlas Cars Pakistan",
#                   country:        "Japan",
#                   description:    "Honda Atlas Cars Pakistan Limited is a joint venture between
#                   Honda Motor Company Limited Japan
#                   and the Atlas Group of Companies in Pakistan,
#                   known for producing popular vehicles like Civic and City.",
#                   established_in: "1992-11-01T00:00:00Z",
#                   website:        "https://www.honda.com.pk"
#                 },
#                 {
#                   name:           "Pak Suzuki Motor Company",
#                   country:        "Japan",
#                   description:    "Pak Suzuki Motor Company Limited is a subsidiary of Suzuki Motor Corporation, Japan.
#                   It has been a major player in Pakistan's automobile industry,
#                   producing vehicles like Alto, Cultus, and WagonR.",
#                   established_in: "1983-09-01T00:00:00Z",
#                   website:        "https://www.paksuzuki.com.pk"
#                 },
#                 {
#                   name:           "Hyundai Nishat Motor",
#                   country:        "South Korea",
#                   description:    "Hyundai Nishat Motor is a collaboration between
#                   Hyundai Motor Company and Nishat Group.
#                   It aims to bring advanced technology
#                   and quality vehicles to Pakistan.",
#                   established_in: "2017-12-01T00:00:00Z",
#                   website:        "https://www.hyundai-nishat.com"
#                 },
#                 {
#                   name:           "Kia Lucky Motors",
#                   country:        "South Korea",
#                   description:    "Kia Lucky Motors is a joint venture between Kia Motors,
#                   South Korea, and Lucky Cement of Pakistan.
#                   The company has reintroduced Kia vehicles into the
#                   Pakistani market, including Sportage and Picanto.",
#                   established_in: "2017-12-01T00:00:00Z",
#                   website:        "https://www.kia.com/pk"
#                 },
#                 {
#                   name:           "MG Motors Pakistan",
#                   country:        "China",
#                   description:    "MG Motors Pakistan is a joint venture between Morris Garages (MG),
#                   a British-origin brand owned by SAIC Motor Corporation,
#                   and JW Auto Park of Pakistan. MG offers modern,
#                   feature-rich SUVs like the MG HS and MG ZS EV.",
#                   established_in: "2020-01-01T00:00:00Z",
#                   website:        "https://www.mgmotor.com.pk"
#                 },
#                 {
#                   name:           "Mercedes-Benz Pakistan",
#                   country:        "Germany",
#                   description:    "Mercedes-Benz Pakistan is a premium automobile brand
#                   epresented by Shahnawaz Private Limited in the country.
#                   The company offers luxury sedans, SUVs, and sports cars,
#                   renowned for their advanced engineering and comfort.",
#                   established_in: "1990-01-01T00:00:00Z",
#                   website:        "https://www.mercedes-benz.com.pk"
#                 },
#                 {
#                   name:           "BMW Pakistan",
#                   country:        "Germany",
#                   description:    "BMW Pakistan operates under Dewan Motors Private Limited,
#                   delivering high-performance luxury vehicles, including sedans,
#                   SUVs, and electric cars, that combine innovation with sophistication.",
#                   established_in: "2004-01-01T00:00:00Z",
#                   website:        "https://www.bmw.com.pk"
#                 }])

Vehicle.create(
  [
    {
      name:               "Corolla Altis",
      model:              "2023",
      color:              "White",
      company_id:         10,
      registration_date:  "2023-01-15T00:00:00Z",
      registration_place: "Karachi, Pakistan",
      images:             [
        "https://example.com/images/corolla-altis-front.jpg",
        "https://example.com/images/corolla-altis-rear.jpg"
      ],
      engine:             "1.8L",
      vehicle_type:       "Car",
      category:           "Sedan",
      transmission:       "Automatic",
      seats:              5,
      fuel_type:          "Petrol",
      created_at:         "2024-11-28T00:00:00Z",
      updated_at:         "2024-11-28T00:00:00Z"
    },
    {
      name:               "Civic RS",
      model:              "2024",
      color:              "Red",
      company_id:         11,
      registration_date:  "2024-05-10T00:00:00Z",
      registration_place: "Lahore, Pakistan",
      images:             [
        "https://example.com/images/civic-rs-front.jpg",
        "https://example.com/images/civic-rs-interior.jpg"
      ],
      engine:             "1.5L Turbo",
      vehicle_type:       "Car",
      category:           "Sedan",
      transmission:       "CVT",
      seats:              5,
      fuel_type:          "Petrol",
      created_at:         "2024-11-28T00:00:00Z",
      updated_at:         "2024-11-28T00:00:00Z"
    },
    {
      name:               "Sportage AWD",
      model:              "2023",
      color:              "Black",
      company_id:         14,
      registration_date:  "2023-08-20T00:00:00Z",
      registration_place: "Islamabad, Pakistan",
      images:             [
        "https://example.com/images/sportage-front.jpg",
        "https://example.com/images/sportage-side.jpg"
      ],
      engine:             "2.0L",
      vehicle_type:       "Car",
      category:           "SUV",
      transmission:       "Automatic",
      seats:              5,
      fuel_type:          "Petrol",
      created_at:         "2024-11-28T00:00:00Z",
      updated_at:         "2024-11-28T00:00:00Z"
    },
    {
      name:               "MG ZS EV",
      model:              "2023",
      color:              "Blue",
      company_id:         15,
      registration_date:  "2023-11-01T00:00:00Z",
      registration_place: "Karachi, Pakistan",
      images:             [
        "https://example.com/images/mg-zs-ev-front.jpg",
        "https://example.com/images/mg-zs-ev-interior.jpg"
      ],
      engine:             "Electric Motor",
      vehicle_type:       "Car",
      category:           "SUV",
      transmission:       "EV",
      seats:              5,
      fuel_type:          "None",
      created_at:         "2024-11-28T00:00:00Z",
      updated_at:         "2024-11-28T00:00:00Z"
    },
    {
      name:               "Mercedes C200",
      model:              "2024",
      color:              "Silver",
      company_id:         16,
      registration_date:  "2024-03-18T00:00:00Z",
      registration_place: "Lahore, Pakistan",
      images:             [
        "https://example.com/images/mercedes-c200-front.jpg",
        "https://example.com/images/mercedes-c200-interior.jpg"
      ],
      engine:             "2.0L",
      vehicle_type:       "Car",
      category:           "Sedan",
      transmission:       "Automatic",
      seats:              5,
      fuel_type:          "Petrol",
      created_at:         "2024-11-28T00:00:00Z",
      updated_at:         "2024-11-28T00:00:00Z"
    },
    {
      name:               "BMW X5",
      model:              "2024",
      color:              "Gray",
      company_id:         17,
      registration_date:  "2024-07-05T00:00:00Z",
      registration_place: "Islamabad, Pakistan",
      images:             [
        "https://example.com/images/bmw-x5-front.jpg",
        "https://example.com/images/bmw-x5-rear.jpg"
      ],
      engine:             "3.0L Twin-Turbo",
      vehicle_type:       "Car",
      category:           "SUV",
      transmission:       "Automatic",
      seats:              7,
      fuel_type:          "Diesel",
      created_at:         "2024-11-28T00:00:00Z",
      updated_at:         "2024-11-28T00:00:00Z"
    }
  ]
)
