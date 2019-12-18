class CreateCases < ActiveRecord::Migration[6.0]
  def change
    create_table :cases do |t|
      t.string :fullname
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
