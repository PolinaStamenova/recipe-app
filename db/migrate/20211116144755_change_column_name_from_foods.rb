class ChangeColumnNameFromFoods < ActiveRecord::Migration[6.1]
  def change
    rename_column :foods, :measurement_units, :measurement_units
  end
end
