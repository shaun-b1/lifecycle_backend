class CreateBicycles < ActiveRecord::Migration[8.0]
  def change
    create_table :bicycles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :brand
      t.string :model

      t.timestamps
    end
  end
end
