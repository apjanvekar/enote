class CreateTeachingAssistants < ActiveRecord::Migration[5.2]
  def change
    create_table :teaching_assistants do |t|
      t.string :ta_name
      t.integer :ta_duty_id
      t.string :ta_duty_type

      t.timestamps
    end
  end
end
