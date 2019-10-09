class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :employee_number
      t.string :password_digest

      t.timestamps
    end
  end
end
