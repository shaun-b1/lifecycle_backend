class CreateChainrings < ActiveRecord::Migration[8.0]
  def change
    create_table :chainrings do |t|
      t.timestamps
    end
  end
end
