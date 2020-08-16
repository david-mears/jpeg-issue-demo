class ChangeGameColumnTypeNameToKind < ActiveRecord::Migration[6.0]
  # Misnamed migration: changes a column name on cups, not games
  def change
    rename_column :cups, :type, :kind
  end
end
