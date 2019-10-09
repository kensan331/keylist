class CreateHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :histories do |t|
      t.references :user, foreign_key: true
      t.references :key, foreign_key: true
      t.datetime :created_at, default: -> {'NOW()'}
      t.datetime :ended_at, null: true

      t.timestamps
    end
  end
end
