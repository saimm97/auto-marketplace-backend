class ChangeTypeColumnToVehicleType < ActiveRecord::Migration[7.2]
  def change
    create_enum :vehcile_type, ["Car", "Motorcycle", "Jeep", "Truck", "Bus", "Wagon"]

    remove_column :vehicles, :type, :enum
    add_column :vehicles, :vehicle_type, :enum, enum_type: "vehcile_type"
  end
end
