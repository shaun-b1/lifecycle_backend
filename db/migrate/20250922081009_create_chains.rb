class CreateChains < ActiveRecord::Migration[8.0]
  def change
    create_table :chains do |t|
      t.timestamps
    end
  end
end
