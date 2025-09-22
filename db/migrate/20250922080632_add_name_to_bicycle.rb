class AddNameToBicycle < ActiveRecord::Migration[8.0]
  def change
    add_column :bicycles, :name, :string
  end
end
