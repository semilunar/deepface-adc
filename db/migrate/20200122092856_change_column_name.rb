class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :replicas, :type, :kind
  end
end
