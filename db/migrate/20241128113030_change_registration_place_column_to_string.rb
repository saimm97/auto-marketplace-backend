class ChangeRegistrationPlaceColumnToString < ActiveRecord::Migration[7.2]
  def change
    remove_column :vehicles, :registration_place, :datetime
    add_column :vehicles, :registration_place, :string
  end
end
