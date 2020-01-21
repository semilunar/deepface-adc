class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.integer :position, required: true
      t.boolean :gift,     required: true, default: false

      t.timestamps
    end
  end
end
