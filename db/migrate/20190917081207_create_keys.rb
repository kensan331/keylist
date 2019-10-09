class CreateKeys < ActiveRecord::Migration[5.2]
  def change
    create_table :keys do |t|
      t.integer :key_number
      t.string :car_name
      t.integer :status

      t.timestamps
    end
  end
end
