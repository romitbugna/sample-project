class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.string :car
      t.string :bus
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
