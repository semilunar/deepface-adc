class CreateReplicas < ActiveRecord::Migration[6.0]
  def change
    create_table :replicas do |t|
      t.integer :position, required: true
      t.string :type,      required: true, default: 'text'
      t.integer :timeout,  required: true, default: 1000

      t.timestamps
    end
  end
end
