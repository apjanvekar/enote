class CreateEnoteMasters < ActiveRecord::Migration[5.2]
  def change
    create_table :enote_masters do |t|
      t.string :title
      t.text :description
      t.date :expire_date
      t.string :file_type
      t.float :costing
      t.boolean :status
      t.timestamps
    end
  end
end
