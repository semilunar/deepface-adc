class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.integer :position,     required: true
      t.integer :step_id,      required: true
      t.integer :next_step_id, required: true
      t.string :effect       , required: true, default: 'none'

      t.timestamps
    end
  end
end
