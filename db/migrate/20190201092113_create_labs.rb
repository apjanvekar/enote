class CreateLabs < ActiveRecord::Migration[5.2]
  def change
    create_table :labs do |t|
      t.string :lab_name

      t.timestamps
    end
  end
end
