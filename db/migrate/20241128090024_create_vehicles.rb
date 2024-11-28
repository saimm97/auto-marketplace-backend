class CreateVehicles < ActiveRecord::Migration[7.2]
  def change
    create_enum :type, ["Car", "Motorcycle", "Jeep", "Truck", "Bus", "Wagon"]
    create_enum :category, ["Sedan", "SUV", "hatchback", "Convertible", "Coupe", "Crossover"]
    create_enum :transmission, ["Manual", "Automatic", "CVT", "EV", "Triptonic", "AMT", "DCT", "Hybrid", "Hybrid-EV"]
    create_enum :fuel_type, ["Petrol", "Diesel", "CNG", "None"]

    create_table :vehicles do |t|
      t.string :name, null: false
      t.string :model, null: false
      t.string :color, null: false
      t.references :company, null: false
      t.datetime :registration_date, null: false
      t.datetime :registration_place, null: false
      t.json :images
      t.string :engine, null: false
      t.enum :type, enum_type: "type", null: false
      t.enum :category, enum_type: "category", null: false
      t.enum :transmission, enum_type: "transmission", null: false
      t.integer :seats, null: false
      t.enum :fuel_type, enum_type: "fuel_type", null: false

      t.timestamps
    end
  end
end
