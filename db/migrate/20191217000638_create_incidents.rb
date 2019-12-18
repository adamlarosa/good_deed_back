class CreateIncidents < ActiveRecord::Migration[6.0]
  def change
    create_table :incidents do |t|
      t.references :case, null: false, foreign_key: true
      t.references :health_care_facility, null: false, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
