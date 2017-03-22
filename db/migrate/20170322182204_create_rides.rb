class CreateRides < ActiveRecord::Migration[5.0]
  def change
    create_table :rides do |t|
      t.string :ride_name
      t.date :date
      t.integer :milage
      t.text :start_info
      t.text :description

      t.timestamps
    end
  end
end
