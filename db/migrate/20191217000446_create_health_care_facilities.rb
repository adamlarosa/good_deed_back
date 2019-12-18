class CreateHealthCareFacilities < ActiveRecord::Migration[6.0]
  def change
    create_table :health_care_facilities do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
