class CreateFoodTruckPositions < ActiveRecord::Migration
  def change
    create_table :food_truck_positions do |t|
      t.float :lat
      t.float :lng

      t.timestamps null: false
    end
  end
end
