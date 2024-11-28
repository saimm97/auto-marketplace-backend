class CreateCompanies < ActiveRecord::Migration[7.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :country
      t.text :description
      t.datetime :established_in
      t.string :website

      t.timestamps
    end
  end
end
