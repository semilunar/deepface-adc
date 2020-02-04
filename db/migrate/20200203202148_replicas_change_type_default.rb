class ReplicasChangeTypeDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :replicas, :type, :TextReplica
  end
end
