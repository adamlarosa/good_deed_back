class CreateUserCases < ActiveRecord::Migration[6.0]
  def change
    create_table :user_cases do |t|
      t.references :user, null: false, foreign_key: true
      t.references :case, null: false, foreign_key: true

      t.timestamps
    end
  end
end
